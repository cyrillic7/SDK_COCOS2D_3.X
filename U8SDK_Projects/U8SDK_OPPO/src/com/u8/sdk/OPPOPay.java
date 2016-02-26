package com.u8.sdk;

import android.app.Activity;

public class OPPOPay implements IPay {

	public OPPOPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	@Override
	public void pay(PayParams data) {
		OPPOSDK.getInstance().pay(data);
	}

}
