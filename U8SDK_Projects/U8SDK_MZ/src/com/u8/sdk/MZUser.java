package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class MZUser extends U8UserAdapter {

	private String[] supportedMethods = {"login","switchLogin","logout","submitExtraData"};
	
	public MZUser(Activity context){
		MZSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		MZSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		MZSDK.getInstance().login();
	}
	
	@Override
	public void logout() {
		//MZSDK.getInstance().logout();
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		//WGSDK.getInstance().submitExtendData(extraData);
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return Arrays.contain(supportedMethods, methodName);
	}

}
