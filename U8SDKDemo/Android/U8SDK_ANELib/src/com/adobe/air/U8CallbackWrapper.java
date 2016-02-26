package com.adobe.air;

import android.content.Intent;
import android.content.res.Configuration;
import android.util.Log;

import com.adobe.air.AndroidActivityWrapper.ActivityState;
import com.u8.sdk.U8SDK;

/***
 * 由于AndroidActivityWrapper类的可见度限制，需要将这个类，放在com.adobe.air包名下，不要改包名
 * 
 * @author xiaohei
 *
 */
public class U8CallbackWrapper implements AndroidActivityWrapper.ActivityResultCallback, AndroidActivityWrapper.StateChangeCallback{

	private AndroidActivityWrapper aaw;
	
	public U8CallbackWrapper(){
		
	}
	
	public void init(){
	    aaw = AndroidActivityWrapper.GetAndroidActivityWrapper();
        aaw.addActivityResultListener( this );
        aaw.addActivityStateChangeListner( this );
	}
	
	public void destroy(){
        if (aaw!=null) {
            aaw.removeActivityResultListener( this );
            aaw.removeActivityStateChangeListner( this );
            aaw = null;
        }
	}
	
	@Override
	public void onActivityStateChanged(ActivityState state) {
		Log.d("U8SDK_ANE", "onActivityStateChanged called. state:"+state);
		switch(state){
		case STARTED:
			U8SDK.getInstance().onStart();
			break;
		case RESTARTED:
			U8SDK.getInstance().onRestart();
			break;
		case RESUMED:
			U8SDK.getInstance().onResume();
			break;
		case PAUSED:
			U8SDK.getInstance().onResume();
			break;
		case STOPPED:
			U8SDK.getInstance().onStop();
			break;
		case DESTROYED:
			U8SDK.getInstance().onDestroy();
			break;
		}
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		Log.d("U8SDK_ANE", "onConfigurationChanged called. ");
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		Log.d("U8SDK_ANE", "onActivityResult called. ");
		U8SDK.getInstance().onActivityResult(requestCode, resultCode, data);
	}

}
