package com.u8.sdk;


import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import android.R.integer;
import android.util.Log;

import com.meizu.gamecenter.sdk.LoginResultCode;
import com.meizu.gamecenter.sdk.MzAccountInfo;
import com.meizu.gamecenter.sdk.MzBuyInfo;
import com.meizu.gamecenter.sdk.MzGameBarPlatform;
import com.meizu.gamecenter.sdk.MzGameCenterPlatform;
import com.meizu.gamecenter.sdk.MzLoginListener;
import com.meizu.gamecenter.sdk.MzPayListener;
import com.meizu.gamecenter.sdk.PayResultCode;
import com.u8.sdk.utils.U8HttpUtils;

public class MZSDK {
	private static MZSDK instance;
	
	private String AppId;
	private String AppKey;
	private String payUrl;
	
	MzGameBarPlatform mzGameBarPlatform;
	
	private String mUid;
	private String nickname;

	private MZSDK(){
			
		}
	
	public static MZSDK getInstance(){
		if(instance == null){
			instance = new MZSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.AppId = params.getString("MZ_APPID");
		this.AppKey = params.getString("MZ_APPKEY");
		this.payUrl = params.getString("MZ_PAYURL");
	}
	
	private void initSDK(){
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			@Override
			public void onDestroy() {
				// TODO Auto-generated method stub
				mzGameBarPlatform.onActivityDestroy();
				MzGameCenterPlatform.logout(U8SDK.getInstance().getContext());
			}
			
			
			@Override
			public void onPause() {
				// TODO Auto-generated method stub
				mzGameBarPlatform.onActivityPause();
			}

			@Override
			public void onResume() {
				// TODO Auto-generated method stub
				mzGameBarPlatform.onActivityResume();
			}
		});

		Log.v("U8SDK","init appid : " + this.AppId + "appkey : " + this.AppKey);
		
		MzGameCenterPlatform.init(U8SDK.getInstance().getContext(), this.AppId, this.AppKey);
		
		mzGameBarPlatform = new MzGameBarPlatform(U8SDK.getInstance().getContext(), MzGameBarPlatform.GRAVITY_RIGHT_BOTTOM);
	}
	
	public void login(){//登录 
		// TODO 调用登录接口
		MzGameCenterPlatform.login(U8SDK.getInstance().getContext(), new MzLoginListener() {			
			@Override
			public void onLoginResult(int code, MzAccountInfo accountInfo, String errorMsg) {
				Log.v("U8SDK","login code : " + code + "message : " + errorMsg);
				// TODO 登录结果回调，该回调跑在应用主线程
				switch(code){
				case LoginResultCode.LOGIN_SUCCESS:
					// TODO 登录成功，拿到uid 和 session到自己的服务器去校验session合法性
					mUid = accountInfo.getUid();
					nickname = accountInfo.getName();
					String session = accountInfo.getSession();
					//displayMsg("登录成功！\r\n 用户名：" + accountInfo.getName() + "\r\n Uid：" + accountInfo.getUid() + "\r\n session：" + accountInfo.getSession());
					Log.v("U8SDK","MZLOGIN uid = " + mUid + "nickname = " + nickname + "session" + session);
					 U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,mUid);
	                 String result = encodeLoginResult(nickname, mUid,session);
	                 U8SDK.getInstance().onLoginResult(result);
	                 
					break;
				case LoginResultCode.LOGIN_ERROR_CANCEL:
					// TODO 用户取消登陆操作
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+errorMsg);
					break;
				default:
					// TODO 登陆失败，包含错误码和错误消息。
					// TODO 注意，错误消息需要由游戏展示给用户，错误码可以打印，供调试使用
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login failed."+errorMsg);
					break;
				}				
			}
		});
	}
	
	public void logout(){
		MzGameCenterPlatform.logout(U8SDK.getInstance().getContext());
	}
	
	public void pay(final PayParams data){
		
		String code = "SCAmEwggJdAgEAAoGBAKZZeR3NBCZvIb1exgfEuqjAiifRC0t";
		String codestr = this.AppId + data.getOrderID() + this.mUid + Integer.toString(data.getPrice()) + this.AppKey;
		Log.v("U8SDK","signstr = " + codestr);
		String mdStr = MD5(codestr);
		
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("orderNo", data.getOrderID()+"");		//opType:1；支付之后正常查询;2:登录查询掉单
		params.put("uid", this.mUid+"");
		params.put("amount", data.getPrice()+"");
		params.put("signCode", mdStr+"");
		
		
		String authResult = U8HttpUtils.httpPost(this.payUrl, params);
		
		Log.e("U8SDK", "rescode:  " + authResult);
		
		String status = "";
		String checkOutUrl = "";
		int indexBegin = authResult.indexOf("{");
		int end = authResult.indexOf("}");
		if (indexBegin == -1 || end == -1) {
			return;
		}
		authResult = authResult.substring(indexBegin, end+1);
	
		//authResult = authResult.replaceAll("amp;", "");
		Log.v("U8SDK", "res111 = " + authResult);
		
		
		String rescode = "";
		String prosubject="";
		String sign = "";
		String signType = "md5";
		String productid = "";
		String productbody = "";
		String productunit = "";
		String buyamount = "";
		int productperprice = 0;
		int totalprice = 0;
		String paytype = "";
		String userinfo = "";
		long createTime = 0;
		String orderid = "";
		String uid = "";
		JSONTokener payRes = new JSONTokener(authResult);
		//Log.v("U8SDK","payRes = " + payRes.toString());
		try {
			Log.v("U8SDK","111111111");
			JSONObject jsonObject = (JSONObject) payRes.nextValue();
			orderid = jsonObject.getString("cp_order_id");
			uid = jsonObject.getString("uid");
			productid = jsonObject.getString("product_id");
			prosubject = jsonObject.getString("product_subject");
			productbody = jsonObject.getString("product_body");
			productunit = jsonObject.getString("product_unit");
			buyamount = jsonObject.getString("buy_amount");
			productperprice = jsonObject.getInt("product_per_price");
			totalprice = jsonObject.getInt("total_price");
			createTime = jsonObject.getLong("create_time");
			paytype = jsonObject.getString("pay_type");
			userinfo = jsonObject.getString("user_info");
			signType = jsonObject.getString("sign_type");
			sign = jsonObject.getString("sign");
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		Log.v("U8SDK","prosubject = " + prosubject + "createTime = " + createTime + "sign = " + sign);
		
		Log.v("U8SDK","buyamount = " + buyamount + "userinfo = " + userinfo + "totalprice = " + totalprice 
				+ "data.getOrderID() = " + data.getOrderID() + "productperprice = " + productperprice
				+ "productbody = " + productbody + "productid = " + productid + "prosubject = " + prosubject
				+ "productunit = " + productunit + "sign = " + sign + "signType = " + signType
				+ "createTime = " + createTime + "this.AppId = " + this.AppId + "this.mUid = " + this.mUid
				+ "PayType = " + 0);
		
		MzBuyInfo buyInfo = new MzBuyInfo().setBuyCount(Integer.valueOf(buyamount)).setCpUserInfo(userinfo)
				.setOrderAmount(String.valueOf(totalprice)).setOrderId(orderid).setPerPrice(String.valueOf(productperprice))
				.setProductBody(productbody).setProductId(productid).setProductSubject(prosubject)
				.setProductUnit(productunit).setSign(sign).setSignType(signType).setCreateTime(createTime)
				.setAppid(this.AppId).setUserUid(uid).setPayType(Integer.valueOf(paytype));
		
		/*MzBuyInfo buyInfo = new MzBuyInfo().setBuyCount(1).setCpUserInfo("")
				.setOrderAmount(String.valueOf(6.0)).setOrderId(data.getOrderID()).setPerPrice(String.valueOf(6.0))
				.setProductBody("").setProductId("0").setProductSubject("购买6.0个元宝")
				.setProductUnit("").setSign("0F18D72FB048E3B40A5A1FBBBA8BF435").setSignType("md5").setCreateTime(Long.parseLong("201602251533"))
				.setAppid(this.AppId).setUserUid(this.mUid).setPayType(0);*/
		
		Log.v("U8SDK","appid = " + buyInfo.getAppid() + "orderid = " + buyInfo.getOrderId() + "uid = " + buyInfo.getUserUid() + "sign = " + buyInfo.getSign() + "signtype = " + buyInfo.getSignType());
		MzGameCenterPlatform.payOnline(U8SDK.getInstance().getContext(), buyInfo, new MzPayListener() {			
			@Override
			public void onPayResult(int code, MzBuyInfo info, String errorMsg) {
				// TODO 支付结果回调，该回调跑在应用主线程
				switch(code){
				case PayResultCode.PAY_SUCCESS:
					// TODO 如果成功，接下去需要到自己的服务器查询订单结果
					//displayMsg("支付成功 : " + info.getOrderId());
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay successed.");
					break;
				case PayResultCode.PAY_ERROR_CANCEL:
					// TODO 用户取消支付操作
					Log.v("U8SDK","PAY_ERROR_CANCELerrorMsg : " + errorMsg);
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay cancelled.");
					break;
				default:
					// TODO 支付失败，包含错误码和错误消息。
					// TODO 注意，错误消息需要由游戏展示给用户，错误码可以打印，供调试使用
					Log.v("U8SDK","errorMsg : " + errorMsg);
					//displayMsg("支付失败 : " + errorMsg + " , code = " + code);
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
					break;
				}
			}
		});
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
	
	private String encodeLoginResult(String nickname, String openId, String accessToken) {

		
		JSONObject ext = new JSONObject();
		try {
			ext.put("accountType", "");
			ext.put("userID", 0);
			ext.put("sdkUserID", openId);
			ext.put("username", "");
			ext.put("sdkUserName", nickname);
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

}
