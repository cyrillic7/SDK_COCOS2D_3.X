package com.u8.sdk.ane;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import android.util.Log;
import android.widget.Toast;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;
import com.adobe.fre.FREFunction;
import com.u8.sdk.IU8SDKListener;
import com.u8.sdk.InitResult;
import com.u8.sdk.PayResult;
import com.u8.sdk.U8Code;
import com.u8.sdk.U8SDK;
import com.u8.sdk.plugin.U8Analytics;
import com.u8.sdk.verify.UToken;

public class U8ANEExtension implements FREExtension{

	public static final String FUC_LOG = "u8_log";
	public static final String FUC_INIT = "u8_init";				//初始化，可以在U8ANEContext的构造函数中调用初始化，上层游戏中可以不用调用
	public static final String FUC_LOGIN = "u8_login";				//登录
	public static final String FUC_PAY = "u8_pay";					//支付
	public static final String FUC_SWITCH = "u8_switchLogin";		//切换帐号
	public static final String FUC_SUPPORT_LOGOUT = "u8_isSupportLogout";//是否支持登出
	public static final String FUC_LOGOUT = "u8_logout";			//登出
	public static final String FUC_SUPPORT_ACCOUNT_CENTER = "u8_isSupportAccoutCenter";//是否支持用户中心
	public static final String FUC_ACCOUNT_CENTER = "u8_showAccountCenter";	//显示用户中心
	public static final String FUC_SUBMIT = "u8_submitExtraData";	//提交游戏数据
	public static final String FUC_SUPPORT_EXIT = "u8_isSupportExit";//是否支持退出确认框
	public static final String FUC_EXIT = "u8_exit";				//打开SDK确认退出界面
	
	public final static String CALLBACK_INIT = "OnInitSuc";						//初始化成功
	public final static String CALLBACK_LOGIN = "OnLoginSuc";					//SDK登录成功的回调方法名称和Unity中一致
	public final static String CALLBACK_LOGOUT = "OnLogout";					//SDK登出的回调方法名称和Unity中一致
	

	
	@Override
	public FREContext createContext(String params) {

		return new U8ANEContext();
	}
	
	@Override
	public void dispose() {

	}

	@Override
	public void initialize() {

	}

	private void tip(final String tip){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				Toast.makeText(U8SDK.getInstance().getContext(), tip, Toast.LENGTH_SHORT).show();
			}
		});	
	}
	
	/***
	 * 
	 * context
	 * @author xiaohei
	 *
	 */
	public class U8ANEContext extends FREContext{
		
//		private U8CallbackWrapper callback;
		
		private boolean isSwitchAccount = false;		//当前是否为切换帐号
		
		public U8ANEContext(){
			
//			callback.init();
//			
			//设置U8SDK回调监听类
			initSDKListener();
			
			//可以在这里调用U8SDK的初始化。游戏中不用调用，当然也不排除特殊情况
			//U8SDK.getInstance().init(getActivity());
			
		}
		
		@Override
		public Map<String, FREFunction> getFunctions() {
			Map<String, FREFunction> functions = new HashMap<String, FREFunction>();
			functions.put(FUC_LOG, new U8Function(FUC_LOG));
			functions.put(FUC_INIT, new U8Function(FUC_INIT));
			functions.put(FUC_LOGIN, new U8Function(FUC_LOGIN));
			functions.put(FUC_PAY, new U8Function(FUC_PAY));
			functions.put(FUC_SWITCH, new U8Function(FUC_SWITCH));
			functions.put(FUC_LOGOUT, new U8Function(FUC_LOGOUT));
			functions.put(FUC_SUBMIT, new U8Function(FUC_SUBMIT));
			functions.put(FUC_EXIT, new U8Function(FUC_EXIT));
			return functions;
		}
		
		
		@Override
		public void dispose() {
//			callback.destroy();
		}
		
		private void initSDKListener(){
			
	        U8SDK.getInstance().setSDKListener(new IU8SDKListener(){
				@Override
				public void onResult(final int code, final String message) {
					
					U8SDK.getInstance().runOnMainThread(new Runnable() {
						
						@Override
						public void run() {

							Log.d("U8SDK", "onResult:"+message);
							switch(code){
							case U8Code.CODE_INIT_SUCCESS:
								Toast.makeText(U8SDK.getInstance().getContext(), "初始化成功", Toast.LENGTH_SHORT).show();
								try{
									Log.d("U8SDK_ANE", "before dispatch...");
									dispatchStatusEventAsync(CALLBACK_INIT, "");
									Log.d("U8SDK_ANE", "after dispatch...");
								}catch(Exception e){
									e.printStackTrace();
								}
								break;
							case U8Code.CODE_INIT_FAIL:
								Toast.makeText(U8SDK.getInstance().getContext(), "初始化失败", Toast.LENGTH_SHORT).show();
								break;
							case U8Code.CODE_LOGIN_FAIL:
								Toast.makeText(U8SDK.getInstance().getContext(), "登录失败", Toast.LENGTH_SHORT).show();
								break;
							case U8Code.CODE_SHARE_SUCCESS:
								Toast.makeText(U8SDK.getInstance().getContext(), "分享成功", Toast.LENGTH_SHORT).show();
								break;
							case U8Code.CODE_SHARE_FAILED:
								Toast.makeText(U8SDK.getInstance().getContext(), "分享失败", Toast.LENGTH_SHORT).show();
								break;
							case U8Code.CODE_LOGOUT_SUCCESS:
								U8Analytics.getInstance().logout();
								break;
							case U8Code.CODE_PAY_FAIL:
								Toast.makeText(U8SDK.getInstance().getContext(), "支付失败", Toast.LENGTH_SHORT).show();
								break;
							case U8Code.CODE_PAY_SUCCESS:
								Toast.makeText(U8SDK.getInstance().getContext(), "支付成功,到账时间可能稍有延迟", Toast.LENGTH_SHORT).show();
								break;								
							default:
								Toast.makeText(U8SDK.getInstance().getContext(), message, Toast.LENGTH_SHORT).show();
									
							}
						}
					});
					
				}
				
				@Override
				public void onLoginResult(String result) {
					
					isSwitchAccount = false;
					
					Log.d("U8SDK", "SDK 登录成功,不用做处理，在onAuthResult中处理登录成功, 参数如下:");
					Log.d("U8SDK", result);
					
					
				}
				
				@Override
				public void onAuthResult(final UToken authResult) {
					U8SDK.getInstance().getContext().runOnUiThread(new Runnable() {
						
						@Override
						public void run() {
							
							if(!authResult.isSuc()){
								tip("SDK登录认证失败,确认U8Server是否配置");
								return;
							}
							
							JSONObject json = new JSONObject();
							try{
								
								json.put("isSuc", authResult.isSuc());
								json.put("isSwitchAccount", isSwitchAccount);
								
								if(authResult.isSuc()){
									json.put("userID", authResult.getUserID());
									json.put("sdkUserID", authResult.getSdkUserID());
									json.put("username", authResult.getUsername());
									json.put("sdkUsername", authResult.getSdkUsername());
									json.put("token", authResult.getToken());
								}
								
							}catch(Exception e){
								e.printStackTrace();
							}
							
							dispatchStatusEventAsync(CALLBACK_LOGIN, json.toString());
						}
					});
				}    			

				@Override
				public void onSwitchAccount() {
					Log.d("U8SDK", "SDK 切换帐号成功，游戏中收到事件，需要返回登录界面");
					dispatchStatusEventAsync(CALLBACK_LOGOUT, "");
				}

				@Override
				public void onSwitchAccount(String result) {
					isSwitchAccount = true;		
					Log.d("U8SDK", "SDK 切换帐号并登录成功,不用做处理，在onAuthResult中处理登录成功, 参数如下:");
					Log.d("U8SDK", result);
				}

				@Override
				public void onLogout() {
					Log.d("U8SDK", "SDK logout成功，游戏中收到事件，需要返回登录界面");
					dispatchStatusEventAsync(CALLBACK_LOGOUT, "");
				}

				@Override
				public void onPayResult(final PayResult result) {
					//网游，此接口不用实现；该接口给单机使用
				}

				@Override
				public void onInitResult(InitResult result) {
					//此接口废弃
				}



	        });
		}
	}

}
