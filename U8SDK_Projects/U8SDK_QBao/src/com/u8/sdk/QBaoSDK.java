package com.u8.sdk;

import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

import org.json.JSONException;
import org.json.JSONObject;

import android.R.integer;
import android.util.Log;
import android.widget.Toast;

import com.qbao.sdk.api.LoginResult;
import com.qbao.sdk.api.PayResult;
import com.qbao.sdk.api.QbaoSdk;

public class QBaoSDK {
	
	private static QBaoSDK instance;
	
	private String appCode;
	
	private String payURL;
	private String paySignURL;
	
	public String rsa_private_key = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANIGJgX9O2BvCrNkgSLukODeNYCs1mweEEhkD/vwnmeYdQa4zc4Ua9F/f/sBtDcV5x7GcoA0NwF8+No/yP7nEPHNKwGdfPYxWrtU5F6UCK3tvqCb4hDRfwGp2IEn55k7kyLS1cQ+2AN1mV2h4h6MCQyILbjzBwSV56T+/hr/0X9BAgMBAAECgYBWRC5EEYLdFl831lVwqrsZkkw5oUSlvieEBI3IN0ppVObkru3h8uNidtNzn3yNj9KSAoMvg8MAOnvg8Yg2o2SCnv1tMEFEe5cZ5FBjSrcjB0M/9n8Md/lJbUDWQk79CIGo8kfcDidL2O8EOubr+dIxNGCbE7NZ/UcamhTC+9rZ0QJBAOjNYD7FtxwCE8+xzpnAXlxpvLG4gMQLjcBx0oAQxIRYTaTbmga437nJcDOFCQDXcn7P89ZFgXerSTynNcq7G5UCQQDm87c1P3EZDyWcDpIdzstYoVlAawU8FLXSCsDsR8cwE5Izfq8JMiZsO9YEqvtYmVFRT7NJo5ssJeWdUEG5cwn9AkAFLdyASQHD27/5FOmVvhPbVnbeNU6YDfG/YEjglH7qutQvYLtSfvZrObIHU2RZ4nEnpRS1paI1uVfNw6KMuhDpAkEAyPLfwv37ayFpyPpImpT3C5wAK3Oy707Z0PM4X54oqyUsPZAJvoebNOtvUUpwPevQ/F3LktQ+zNAAlLtjJHf7BQJBALQPa98nBLwShGUe9y4iO4KUuBSvos2oqn5oXhHr9lSv8LE8cFeW/SnxIvBRdOTe+Fu2GW3atyMUpxA4CUl+neg=";
	public static char[] CHAR_TABLE_10 = "0123456789".toCharArray();
	
	private QBaoSDK(){
		
	}

	public static QBaoSDK getInstance(){
		if(instance == null){
			instance = new QBaoSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appCode = params.getString("QBAO_APPCODE");
		this.payURL = params.getString("QBAO_APPURL");
		this.paySignURL = params.getString("QBAO_APPSIGNURL");
	}
	
	private void initSDK()
	{
		// 监听登录结果，游戏根据自身业务逻辑，使用钱宝游戏SDK提供的登录结果
        QbaoSdk.ILoginCallback loginCallback = new QbaoSdk.ILoginCallback() {
			
			@Override
			public void onResult(int resultCode, String userId, Object ogj) {
				switch (resultCode) {
				case LoginResult.SUCCESS:
					int requesttype = -1;
					Log.v("U8SDK","qbaologin : " + ogj.toString());
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,userId);
                    String result = encodeLoginResult(requesttype, userId,ogj.toString());
                    U8SDK.getInstance().onLoginResult(result);
					break;
				case LoginResult.CANCELLED://用户取消登录，此处游戏处理退出逻辑
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+ogj.toString());
					break;
				default:
					break;
				}
			}
		};
		
		QbaoSdk.initSDK(U8SDK.getInstance().getContext(), this.appCode, getRandomNum(20), loginCallback);
		
	}
	
	public void exit(){
		QbaoSdk.exit(U8SDK.getInstance().getContext(), new QbaoSdk.IExitCallback() {
			
			@Override
			public void onConfirmExit() {
				
			}
			
			@Override
			public void onCancelExit() {
				//Toast.makeText(MainActivity.this, "取消退出", Toast.LENGTH_SHORT).show();
			}
		});
	}
	
	public void login(){//登录 
		// 监听登录结果，游戏根据自身业务逻辑，使用钱宝游戏SDK提供的登录结果
        QbaoSdk.ILoginCallback loginCallback = new QbaoSdk.ILoginCallback() {
			
			@Override
			public void onResult(int resultCode, String userId, Object ogj) {
				switch (resultCode) {
				case LoginResult.SUCCESS:
					int requesttype = -1;
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,userId);
                    String result = encodeLoginResult(requesttype, userId,ogj.toString());
                    U8SDK.getInstance().onLoginResult(result);
					break;
				case LoginResult.CANCELLED://用户取消登录，此处游戏处理退出逻辑
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+ogj.toString());
					break;
				default:
					break;
				}
			}
		};
		
		QbaoSdk.initSDK(U8SDK.getInstance().getContext(), this.appCode, getRandomNum(20), loginCallback);
	}
	
	public void pay(final PayParams data){
		// 监听支付结果，游戏根据自身业务逻辑，使用移动游戏SDK提供的支付结果
				final QbaoSdk.IPayCallback payCallback = new QbaoSdk.IPayCallback() {
					@Override
					public void onResult(int resultCode, String propId, Object obj) {
						Log.v("U8SDK","paycode : " + resultCode);
						switch (resultCode) {
						case PayResult.SUCCESS:
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay successed.");
							break;
						case PayResult.FAILED:
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
							break;
						default:
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay cancelled.");
							break;
						}
						//Toast.makeText(U8SDK.getInstance().getContext(), result, Toast.LENGTH_SHORT).show();
					}
				};
			
				String code = "SCAmEwggJdAgEAAoGBAKZZeR3NBCZvIb1exgfEuqjAiifRC0t";
				String codestr = this.appCode + data.getOrderID() + getPayCode(data.getPrice()) + this.payURL + code;
				Log.v("U8SDK","signstr = " + codestr);
				String mdStr = MD5(codestr);
				
				String info = getPayInfo(data);
				Log.v("U8SDK","orderid = " + data.getOrderID());
				Map<String, String> params = new LinkedHashMap<String, String>();
				//params.put("QBaoAPPID", this.appCode+"");		//opType:1；支付之后正常查询;2:登录查询掉单
				params.put("orderNo", data.getOrderID()+"");
				params.put("payCode", getPayCode(data.getPrice())+"");
				//params.put("strNotifyUrl", this.payURL+"");
				params.put("signCode",mdStr+"");
				
				Log.v("U8SDK", this.paySignURL);
				
				String authResult = U8HttpUtils.httpPost(this.paySignURL, params);
				
				Log.v("U8SDK", "u8sdk" + authResult);

				String status = "";
				String checkOutUrl = "";
				int indexBegin = authResult.indexOf("{");
				int end = authResult.indexOf("}");
				if (indexBegin == -1 || end == -1) {
					return;
				}
				authResult = authResult.substring(indexBegin+1, end);
				Log.v("U8SDK", "u8sdk" + authResult);
				Log.v("U8SDK","info1 : " + info);
				info += "&signCode=" + authResult;//RSACoder.sign(info.getBytes(), rsa_private_key);
				/*try {
					Log.v("U8SDK","rsa_private_key = " + rsa_private_key);
					String sign = RSACoder.sign(info.getBytes(), rsa_private_key);
					Log.v("U8SDK","sign = " + sign);
					info += "&signCode=" + sign;//RSACoder.sign(info.getBytes(), rsa_private_key);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
				Log.v("U8SDK","info : " + info);
				QbaoSdk.pay(U8SDK.getInstance().getContext(), info, payCallback);
	}
	
	public final static String MD5(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			byte[] btInput = s.getBytes();
			// 获得MD5摘要算法的 MessageDigest 对象
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// 使用指定的字节更新摘要
			mdInst.update(btInput);
			// 获得密文
			byte[] md = mdInst.digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	private String getPayCode(int price)
	{
		String paycode = "";
		switch(price)
		{
			case 10:
			{
				paycode = "C0001415";
				break;
			}
			case 30:
			{
				paycode = "C0001417";
				break;
			}
			case 50:
			{
				paycode = "C0001419";
				break;
			}
			case 100:
			{
				paycode = "C0001421";
				break;
			}
			case 200:
			{
				paycode = "C0001423";
				break;
			}
			case 500:
			{
				paycode = "C0001425";
				break;
			}
		}
		
		return paycode;
	}
	//拼装计费信息参数
    private String getPayInfo(PayParams data) {
		StringBuilder sBuilder = new StringBuilder();
		int pirce = data.getPrice();
		String paycode = getPayCode(pirce);
		sBuilder.append("appCode=");
		sBuilder.append(this.appCode);//应用编码
		sBuilder.append("&orderNo=");
		sBuilder.append(getRandomNum(20));//订单号,此参数最多20位，只能包含数字，支付成功会透传给游戏服务器
		sBuilder.append("&payCode=");
		sBuilder.append(paycode);//道具编码
		sBuilder.append("&payNotifyUrl=");
		sBuilder.append(URLEncoder.encode(this.payURL));//支付回调URL,支付处理后，将支付结果信息通知至此地址
		return new String(sBuilder);
	}
	
    
	private String encodeLoginResult(int requesttype, String openId, String accessToken) {

		
		JSONObject ext = new JSONObject();
		try {
			ext.put("accountType", requesttype);
			ext.put("userID", 0);
			ext.put("sdkUserID", openId);
			ext.put("username", "");
			ext.put("sdkUserName", "");
			ext.put("token", accessToken);
			ext.put("extension", openId);
			
		} catch (JSONException e) {
			e.printStackTrace();
		}
		/*try {
			ext.put("accountType", requesttype);
			ext.put("token", accessToken);
			ext.put("extension", openId);
			
		} catch (JSONException e) {
			e.printStackTrace();
		}*/

		return ext.toString();
	}

	//生成指定长度随机数
    public static String getRandomNum(int length) {
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < length; i++) {
			int seed = random.nextInt(10);
			sb.append(String.valueOf(CHAR_TABLE_10[seed]));
		}
		return sb.toString();
	}
}
