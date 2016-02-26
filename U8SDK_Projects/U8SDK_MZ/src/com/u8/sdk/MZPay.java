package com.u8.sdk;

import android.app.Activity;

public class MZPay implements IPay {

	public MZPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	@Override
	public void pay(PayParams data) {
		MZSDK.getInstance().pay(data);
	}

}
