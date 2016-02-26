package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;

import com.baidu.gamesdk.BDGameApplication;

public class BaiduProxyApplication extends BDGameApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		// TODO Auto-generated method stub
		super.attachBaseContext(base);
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		// TODO Auto-generated method stub
		super.onConfigurationChanged(config);
	}

}
