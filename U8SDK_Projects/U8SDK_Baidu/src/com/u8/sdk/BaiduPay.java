package com.u8.sdk;

import android.app.Activity;

public class BaiduPay implements IPay {

	public BaiduPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	@Override
	public void pay(PayParams data) {
		//WGSDK.getInstance().pay(data);
		BaiduSDK.getInstance().pay(data);
	}

}
