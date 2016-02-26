package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class QBaoUser extends U8UserAdapter {

	private String[] supportMethods = {"login","switchLogin"};
	
	public QBaoUser(Activity context){
		QBaoSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
		
	}
	
	public void login(){
		//QBaoSDK.getInstance().login();
	}
	
	@Override
	public void switchLogin() {
		// TODO Auto-generated method stub
		QBaoSDK.getInstance().login();
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		// TODO Auto-generated method stub
		return Arrays.contain(supportMethods, methodName);
	}

}
