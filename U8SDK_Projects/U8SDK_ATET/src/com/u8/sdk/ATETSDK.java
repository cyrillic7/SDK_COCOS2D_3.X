package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;
import android.view.ViewDebug.IntToString;
import android.widget.Toast;

import com.atet.api.SDKApi;
import com.atet.api.pay.ui.service.IAccountExCallback;
import com.atet.api.SDKApi;
import com.atet.api.pay.ui.service.IAccountExCallback;
import com.atet.api.pay.ui.service.IPayResultCallback;
import com.atet.api.pay.ui.service.PayRequest;

public class ATETSDK {
	private static ATETSDK instance;
	
	private String appid;
	private String appkey;
	private String cpid;
	private String payUrl;
	private String payFlag10;
	private String payFlag30;
	private String payFlag50;
	private String payFlag100;
	private String payFlag200;
	private String payFlag500;
	
	
	private boolean isNeedLogin;
	
	private ATETSDK(){
		
	}
	
	public static ATETSDK getInstance(){
		if(instance == null){
			instance = new ATETSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appid = params.getString("ATET_APPID");
		this.appkey = params.getString("ATET_APPKEY");
		this.isNeedLogin = params.getBoolean("ATET_ISNEEDLOGON");
		this.cpid = params.getString("ATET_CPID");
		this.payUrl = params.getString("ATET_PAYURL");
		this.payFlag10 = params.getString("ATET_PAYFLAG_10");
		this.payFlag30 = params.getString("ATET_PAYFLAG_30");
		this.payFlag50 = params.getString("ATET_PAYFLAG_50");
		this.payFlag100 = params.getString("ATET_PAYFLAG_100");
		this.payFlag200 = params.getString("ATET_PAYFLAG_200");
		this.payFlag500 = params.getString("ATET_PAYFLAG_500");
		//this.isFixePay = params.getBoolean("BD_FIXEPAY");
		//this.ratio = params.getInt("BD_RATIO");
	}
	
	private void initSDK(){
		// 支付SDK初始化
        SDKApi.init(U8SDK.getInstance().getContext(), SDKApi.LANDSCAPE, this.appid, this.isNeedLogin);
	
        U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			@Override
			public void onDestroy() {
				// TODO Auto-generated method stub
				 // 回收资源
		        SDKApi.recycle();
			}
			
			@Override
			public void onStop() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onPause() {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void onResume() {
				// TODO Auto-generated method stub
				
			}
		});
	}
	
	public void login(){//登录 
		Log.v("U8SDK","登录:login");
		
		SDKApi.LoginUI(U8SDK.getInstance().getContext(), new IAccountExCallback() {
            @Override
            public void onCallBack(int retcode, String username, long uid) {
                // TODO Auto-generated method stub
                if (retcode == IAccountExCallback.RETCODE_SUCCESS) {
                    
                    U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,String.valueOf(uid));
                    String result = encodeLoginResult(username,String.valueOf(uid));
                    U8SDK.getInstance().onLoginResult(result);
                } else if (retcode == IAccountExCallback.RETCODE_CANCEL) {
                	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+retcode);
                } else if (retcode == IAccountExCallback.RETCODE_FAIL) {
                	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login failed."+retcode);
                }
            }
        });
		
	}
	
private String encodeLoginResult(String username, String openId) {

		
		JSONObject ext = new JSONObject();
		try {
			ext.put("userID", 0);
			ext.put("sdkUserID", openId);
			ext.put("username", "");
			ext.put("sdkUserName", username);
			ext.put("token", "");
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

	public void pay(final PayParams data){
		PayRequest payRequest = new PayRequest();
		payRequest.addParam(PayRequest.APPKEY, this.appkey);
		payRequest.addParam(PayRequest.APPID, this.appid);
        payRequest.addParam(PayRequest.CPID, this.cpid);
        Log.v("U8SDK", this.payUrl+"");
        payRequest.addParam(PayRequest.NOTIFYURL, this.payUrl);//服务器通知地址
        String priductname = "元宝";
        payRequest.addParam(PayRequest.WARESNAME, priductname);
        int price = data.getPrice();
        String waresid = "";
        switch(price)
        {
        case 10: waresid = this.payFlag10;
        break;
        case 30: waresid = this.payFlag30;
        break;
        case 50: waresid = this.payFlag50;
        break;
        case 100: waresid = this.payFlag100;
        break;
        case 200: waresid = this.payFlag200;
        break;
        case 500: waresid = this.payFlag500;
        break;
        	
        }
        Log.v("U8SDK",waresid);
        payRequest.addParam(PayRequest.WARESID, waresid);
        payRequest.addParam(PayRequest.EXORDERNO, data.getOrderID());
        payRequest.addParam(PayRequest.PRICE, data.getPrice()*100);
        payRequest.addParam(PayRequest.QUANTITY, 1);
        
        
        SDKApi.startPay(U8SDK.getInstance().getContext(), payRequest,
                new IPayResultCallback() {
                    @Override
                    public void onPayResult(int resultCode, String resultInfo) {
                        // resultInfo = 应用编号&商品编号&外部订单号
                        if (SDKApi.PAY_SUCCESS == resultCode) {
                            // 支付成功，请添加支付成功后的业务逻辑
                        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay successed.");
                        } else if (SDKApi.PAY_CANCEL == resultCode) {
                            // 取消支付处理
                        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay cancelled.");
                        } else {
                            // 计费失败处理
                        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
                        }
                    }
                });
	}
}
