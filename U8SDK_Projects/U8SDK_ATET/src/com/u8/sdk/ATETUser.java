package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class ATETUser extends U8UserAdapter {

	private String[] supportMethods = {"login","switchLogin"};
	
	public ATETUser(Activity context){
		ATETSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	public void login(){
		ATETSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		ATETSDK.getInstance().login();
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportMethods, methodName);
	}

}
