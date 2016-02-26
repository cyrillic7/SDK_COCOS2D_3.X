package com.u8.sdk;

import java.util.Random;

import org.json.JSONException;
import org.json.JSONObject;

import android.widget.Toast;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.ApiCallback;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.common.model.biz.GameCenterSettings;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.model.biz.ReqUserInfoParam;
import com.nearme.game.sdk.common.util.AppUtil;
import com.nearme.platform.opensdk.pay.PayResponse;

public class OPPOSDK {
	private static OPPOSDK instance;
	
	private String AppId;
	private String AppSecret;
	private String payUrl;
	
	private OPPOSDK(){
		
	}

	public static OPPOSDK getInstance(){
		if(instance == null){
			instance = new OPPOSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.AppId = params.getString("OPPO_APPID");
		this.AppSecret = params.getString("OPPO_SECRET");
		this.payUrl = params.getString("OPPO_PAYURL");
	}
	
	private void initSDK(){
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			@Override
			public void onPause() {
				// TODO Auto-generated method stub
				GameCenterSDK.getInstance().onPause();
				super.onPause();
			}

			@Override
			public void onResume() {
				// TODO Auto-generated method stub
				super.onResume();
				GameCenterSDK.getInstance().onResume(U8SDK.getInstance().getContext());
			}
		});
			
		// 因为sdk插件中service activity跑在独立进程，这里只需要在主进程做一次初始化操作。
		if (U8SDK.getInstance().getApplication().getApplicationInfo().packageName.equals(AppUtil
				.getCurrentProcessName(U8SDK.getInstance().getContext()))) {
			String appKey = this.AppId;
			String appSecret = this.AppSecret;
			GameCenterSettings gameCenterSettings = new GameCenterSettings(
					false, // 网游固定为false
					appKey, appSecret, true, // 调试开关 true 打印log，false
												// 关闭log，正式上线请设置为false
					false); // 将游戏横竖屏状态传递给sdk， true为竖屏 false为横屏
			GameCenterSDK.init(gameCenterSettings, U8SDK.getInstance().getContext());
		}
	}
	
	public void login(){//登录 
		GameCenterSDK.getInstance().doLogin(U8SDK.getInstance().getContext(), new ApiCallback() {

			@Override
			public void onSuccess(String resultMsg) {
				//Toast.makeText(DemoActivity.this, resultMsg, Toast.LENGTH_LONG).show();
				doGetTokenAndSsoid();
			}

			@Override
			public void onFailure(String resultMsg, int resultCode) {
				//Toast.makeText(DemoActivity.this, resultMsg, Toast.LENGTH_LONG).show();
				U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+resultMsg);
			}
		});
	}
	
	public void doGetTokenAndSsoid() {
		GameCenterSDK.getInstance().doGetTokenAndSsoid(new ApiCallback() {

			@Override
			public void onSuccess(String resultMsg) {
				try {
					JSONObject json = new JSONObject(resultMsg);
					String token = json.getString("token");
					String ssoid = json.getString("ssoid");
					//Toast.makeText(DemoActivity.this,"token = " + token + "ssoid = " + ssoid,Toast.LENGTH_LONG).show();
					doGetUserInfoByCpClient(token, ssoid);
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}

			@Override
			public void onFailure(String content, int resultCode) {
				U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+content);
			}
		});
	}
	
	private void doGetUserInfoByCpClient(final String token, String ssoid) {
		GameCenterSDK.getInstance().doGetUserInfo(
				new ReqUserInfoParam(token, ssoid), new ApiCallback() {

					@Override
					public void onSuccess(String resultMsg) {
						//Toast.makeText(DemoActivity.this, resultMsg,Toast.LENGTH_LONG).show();
						JSONObject json;
						try {
							json = new JSONObject(resultMsg);
							String username = json.getString("userName");
							String mobile = json.getString("mobile");
							String email = json.getString("email");	
							String ssoid = json.getString("ssoid");
							U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,ssoid);
			                 String result = encodeLoginResult(username, ssoid,token);
			                 U8SDK.getInstance().onLoginResult(result);
						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}

					@Override
					public void onFailure(String resultMsg, int resultCode) {
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled."+resultMsg);
					}
				});
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

		return ext.toString();
	}
	
	public void pay(final PayParams data){
		int amount = data.getPrice()*100;
		PayInfo payInfo = new PayInfo(data.getOrderID(), String.valueOf(data.getPrice()), amount);
		payInfo.setProductDesc(String.valueOf(data.getPrice()));
		payInfo.setProductName("元宝");
		payInfo.setCallbackUrl(this.payUrl);
		
		GameCenterSDK.getInstance().doPay(U8SDK.getInstance().getContext(), payInfo, new ApiCallback() {

			@Override
			public void onSuccess(String resultMsg) {
				//Toast.makeText(U8SDK.getInstance().getContext(), "支付成功", Toast.LENGTH_SHORT).show();
			}

			@Override
			public void onFailure(String resultMsg, int resultCode) {
				if (PayResponse.CODE_CANCEL != resultCode) {
					//Toast.makeText(U8SDK.getInstance().getContext(), "支付失败",Toast.LENGTH_SHORT).show();
				} else {
					// 取消支付处理
					//Toast.makeText(U8SDK.getInstance().getContext(), "支付取消",Toast.LENGTH_SHORT).show();
				}
			}
		});
	}

	
	public void logout(){
		GameCenterSDK.getInstance().onExit(U8SDK.getInstance().getContext(),
				new GameExitCallback() {

					@Override
					public void exitGame() {
						// CP 实现游戏退出操作，也可以直接调用
						// AppUtil工具类里面的实现直接强杀进程~
						AppUtil.exitGameProcess(U8SDK.getInstance().getContext());
					}
				});
	}
}
