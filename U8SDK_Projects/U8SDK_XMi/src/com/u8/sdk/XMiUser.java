package com.u8.sdk;

import android.app.Activity;

import com.u8.sdk.utils.Arrays;

public class XMiUser extends U8UserAdapter {

private String[] supportedMethods = {"login","switchLogin","logout","submitExtraData"};
	
	public XMiUser(Activity context){
		XMiSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		XMiSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		XMiSDK.getInstance().login();
	}
	
	@Override
	public void logout() {
		XMiSDK.getInstance().logout();
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
