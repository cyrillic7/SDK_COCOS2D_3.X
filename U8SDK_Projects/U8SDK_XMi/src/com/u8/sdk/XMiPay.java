package com.u8.sdk;

import android.app.Activity;

public class XMiPay implements IPay {

	public XMiPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	@Override
	public void pay(PayParams data) {
		XMiSDK.getInstance().pay(data);
	}

}
