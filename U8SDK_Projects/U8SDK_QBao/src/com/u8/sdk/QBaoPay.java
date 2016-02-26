package com.u8.sdk;

import android.app.Activity;
import android.util.Log;

public class QBaoPay implements IPay {

	public QBaoPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	@Override
	public void pay(PayParams data) {
		//WGSDK.getInstance().pay(data);
		String orderid = data.getOrderID();
		Log.v("U8SDK","DATAORDERID = " + orderid);
		QBaoSDK.getInstance().pay(data);
	}

}
