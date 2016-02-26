package com.u8.sdk;

import android.app.Activity;

import com.u8.sdk.utils.Arrays;

public class OPPOUser extends U8UserAdapter {
private String[] supportedMethods = {"login","switchLogin","logout","submitExtraData"};
	
	public OPPOUser(Activity context){
		OPPOSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		OPPOSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		OPPOSDK.getInstance().login();
	}
	
	@Override
	public void logout() {
		OPPOSDK.getInstance().logout();
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
