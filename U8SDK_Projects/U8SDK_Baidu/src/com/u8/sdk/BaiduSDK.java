package com.u8.sdk;

import java.util.UUID;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.baidu.android.bba.common.util.Util;
import com.baidu.gamesdk.ActivityAdPage;
import com.baidu.gamesdk.ActivityAdPage.Listener;
import com.baidu.gamesdk.ActivityAnalytics;
import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
//import com.baidu.gamesdk.BDGameSDKSetting.Orientation;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.ResultCode;
import com.baidu.platformsdk.PayOrderInfo;
import com.u8.sdk.baidu.Utils;;

public class BaiduSDK {

	private static BaiduSDK instance;
	
	private ActivityAdPage mActivityAdPage;
	private ActivityAnalytics mActivityAnalytics;
	
	private int AppId;
	private String AppKey;
	
	private boolean isFixePay;
	private int ratio = 1;
	
	private BaiduSDK(){
		
	}

	public static BaiduSDK getInstance(){
		if(instance == null){
			instance = new BaiduSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.AppId = params.getInt("BD_APPID");
		this.AppKey = params.getString("BD_APPKEY");
		this.isFixePay = params.getBoolean("BD_FIXEPAY");
		this.ratio = params.getInt("BD_RATIO");
	}
	
	private void initSDK(){
		BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();
		mBDGameSDKSetting.setAppID(this.AppId);//APPID设置
		mBDGameSDKSetting.setAppKey(this.AppKey);//APPKEY设置
		mBDGameSDKSetting.setDomain(Domain.RELEASE);//设置为正式模式
		mBDGameSDKSetting.setOrientation(Utils.getOrientation(U8SDK.getInstance().getContext()));
		 
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			@Override
			public void onDestroy() {
				// TODO Auto-generated method stub
				BDGameSDK.destroy();
				mActivityAdPage.onDestroy();
				ClosefloatView();
			}
			
			@Override
			public void onStop() {
				// TODO Auto-generated method stub
				ClosefloatView();
				mActivityAdPage.onStop();
			}
			
			@Override
			public void onPause() {
				// TODO Auto-generated method stub
				mActivityAdPage.onPause();
				mActivityAnalytics.onPause();
			}

			@Override
			public void onResume() {
				// TODO Auto-generated method stub
				mActivityAdPage.onResume(); 
				mActivityAnalytics.onResume();
			}
		});
		
		BDGameSDK.init(U8SDK.getInstance().getContext(), mBDGameSDKSetting, new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				switch(resultCode){
				case ResultCode.INIT_SUCCESS:
					//初始化成功
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init successed");
					break;
					
				case ResultCode.INIT_FAIL:
				default:
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed."+resultDesc);
				}
				
			}
			
		});  
		
		setSuspendWindowChangeAccountListener();//设置切换账号事件监听（个人中心界面切换账号）
		
		setSessionInvalidListener();//设置会话失效监听
		
		mActivityAnalytics = new ActivityAnalytics(U8SDK.getInstance().getContext());
		
		mActivityAdPage = new ActivityAdPage(U8SDK.getInstance().getContext(), new Listener(){

			@Override
			public void onClose() {
				// TODO 关闭暂停页, CP可以让玩家继续游戏
				//Toast.makeText(getApplicationContext(), "继续游戏", Toast.LENGTH_LONG).show();
			}
			
		}); 
	}
	
	public void login(){//登录 
		BDGameSDK.login(new IResponse<Void>() {
			
			@Override
			public void onResponse(int resultCode, String resultDesc, Void extraData) { 
				Log.d("login", "this resultCode is " + resultCode);
				switch(resultCode){
				case ResultCode.LOGIN_SUCCESS:
					String uid = BDGameSDK.getLoginUid();
                    String token = BDGameSDK.getLoginAccessToken();
                    int requesttype = -1;
                    
                    /*
                    JSONObject json = new JSONObject();
                    try {
                    	json.put("uid", uid);
                        json.put("token", token);
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
                    */
                    U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,uid);
                    String result = encodeLoginResult(requesttype, uid,token);
                    U8SDK.getInstance().onLoginResult(result);
                    
                    ShowfloatView();
					break; 
				case ResultCode.LOGIN_CANCEL:
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+resultDesc);
					break;
				case ResultCode.LOGIN_FAIL:
				default:	
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login failed."+resultDesc);
					
				} 
				//Toast.makeText(getApplicationContext(), hint, Toast.LENGTH_LONG).show(); 
			}
		});
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
	
	public void pay(final PayParams data){
		PayOrderInfo payOrderInfo = buildOrderInfo(data);
		if(payOrderInfo == null){
			return;
		}
		
		BDGameSDK.pay(payOrderInfo, null, 
				new IResponse<PayOrderInfo>(){
			  
					@Override
					public void onResponse(int resultCode, String resultDesc,
							PayOrderInfo extraData) {
						String resultStr = "";
						switch(resultCode){
						case ResultCode.PAY_SUCCESS://支付成功
							resultStr = "支付成功:" + resultDesc;
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay successed.");
							break;
						case ResultCode.PAY_CANCEL://订单支付取消
							resultStr = "取消支付";
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay cancelled.");
							break;	
						case ResultCode.PAY_FAIL://订单支付失败
							resultStr = "支付失败：" + resultDesc;
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
							break;	
						case ResultCode.PAY_SUBMIT_ORDER://订单已经提交，支付结果未知（比如：已经请求了，但是查询超时）
							resultStr = "订单已经提交，支付结果未知";
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay submit.");
							break;	
						}
						//Toast.makeText(getApplicationContext(), resultStr, Toast.LENGTH_LONG).show();
						 
					}
			
		});

	}
	
	public void ShowfloatView(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				BDGameSDK.showFloatView(U8SDK.getInstance().getContext());//显示悬浮窗
			}
		});
	}
	
	public void ClosefloatView(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				BDGameSDK.closeFloatView(U8SDK.getInstance().getContext());//显示悬浮窗
			}
		});
	}
	/**
	 * 构建订单信息 
	 */
	private PayOrderInfo buildOrderInfo(PayParams data){
		String cpOrderId = data.getOrderID();//UUID.randomUUID().toString();//CP订单号
		String goodsName = data.getProductName();
		Log.d("baidu","baidu"+data.getRoleId());
		Log.d("baidu","baidu"+cpOrderId);
		Log.d("baidu","baidu"+goodsName);
		Log.d("baidu","baidu"+data.getPrice());
		//String totalAmount = data.getPrice() * 100;//支付总金额 （以分为单位）  
		int ratio = 1;//该参数为非定额支付时生效 (支付金额为0时为非定额支付,具体参见使用手册)
		String extInfo = "";//扩展字段，该信息在支付成功后原样返回给CP
		
		//if(TextUtils.isEmpty(totalAmount)){
		//	totalAmount = "0";
		//}
		 
		
		PayOrderInfo payOrderInfo = new PayOrderInfo();
		payOrderInfo.setCooperatorOrderSerial(cpOrderId);
		payOrderInfo.setProductName(goodsName);
		
		if(this.isFixePay){
			payOrderInfo.setTotalPriceCent(data.getPrice() * 100);//以分为单位
			payOrderInfo.setRatio(1);
		}else{
			payOrderInfo.setTotalPriceCent(0);//以分为单位
			payOrderInfo.setRatio(this.ratio);
		}
		payOrderInfo.setExtInfo(extInfo);//该字段将会在支付成功后原样返回给CP(不超过500个字符)
		
		return payOrderInfo;
	}
	
	private void setSuspendWindowChangeAccountListener(){//设置切换账号事件监听（个人中心界面切换账号）
		BDGameSDK.setSuspendWindowChangeAccountListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) { 
				 switch(resultCode){
				 case ResultCode.LOGIN_SUCCESS:
					 //TODO 登录成功，不管之前是什么登录状态，游戏内部都要切换成新的用户
					// Toast.makeText(getApplicationContext(), "登录成功", Toast.LENGTH_LONG).show();
					 String uid = BDGameSDK.getLoginUid();
	                    String token = BDGameSDK.getLoginAccessToken();
	                    int requesttype = -1;
	                    JSONObject json = new JSONObject();
	                    try {
	                    	json.put("uid", uid);
	                        json.put("token", token);
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
	                    
	                   // U8SDK.getInstance().onSwitchAccount(json.toString());
	                    U8SDK.getInstance().onLogout();
	                    /*
	                    Intent i = U8SDK.getInstance().getContext().getBaseContext().getPackageManager() 
								 .getLaunchIntentForPackage(U8SDK.getInstance().getContext().getBaseContext().getPackageName()); 
								 i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP); 
								 U8SDK.getInstance().getContext().startActivity(i);
						*/		 
								 
					 break;
				 case ResultCode.LOGIN_FAIL:
					//TODO 登录失败，游戏内部之前如果是已经登录的，要清楚自己记录的登录状态，设置成未登录。如果之前未登录，不用处理。
					// Toast.makeText(getApplicationContext(), "登录失败", Toast.LENGTH_LONG).show();
					 U8SDK.getInstance().onLogout();
					 break;
				 case ResultCode.LOGIN_CANCEL:					 
					//TODO 取消，操作前后的登录状态没变化
					 break; 
					 
				 } 
			}
			
		});
	}
	
	
	private void setSessionInvalidListener(){
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				if(resultCode == ResultCode.SESSION_INVALID){
					//会话失效，开发者需要重新登录或者重启游戏
					U8SDK.getInstance().onLogout();
				}
				
			}
			
		});
	}
	
}
