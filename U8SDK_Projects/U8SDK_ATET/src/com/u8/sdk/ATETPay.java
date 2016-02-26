package com.u8.sdk;

import android.app.Activity;

public class ATETPay implements IPay {

	public ATETPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	public void pay(PayParams data) {
		ATETSDK.getInstance().pay(data);
	}

}