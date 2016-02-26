package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class BaiduUser extends U8UserAdapter {

	private String[] supportMethods = {"login","switchLogin"};
	
	public BaiduUser(Activity context){
		BaiduSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
		
	}
	
	public void login(){
		BaiduSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		BaiduSDK.getInstance().login();
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportMethods, methodName);
	}

}
