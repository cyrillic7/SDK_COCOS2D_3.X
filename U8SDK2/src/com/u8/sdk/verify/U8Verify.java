package com.u8.sdk.verify;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.text.TextUtils;
import android.util.Log;
import com.u8.sdk.U8SDK;
import com.u8.sdk.utils.EncryptUtils;
import com.u8.sdk.utils.U8HttpUtils;

public class U8Verify{

	/***
	 * 访问U8Server验证sid的合法性，同时获取U8Server返回的token，userID,sdkUserID信息
	 * @param result
	 * @return
	 */
	public static UToken auth(String result){
		
		try{
			/*Map<String, String> params = new HashMap<String, String>();
			params.put("appID", U8SDK.getInstance().getAppID()+"");
			params.put("channelID", "" + U8SDK.getInstance().getCurrChannel());
			params.put("extension", result);
			params.put("sdkVersionCode", U8SDK.getInstance().getSDKVersionCode());
			
            StringBuilder sb = new StringBuilder();
            sb.append("appID=").append(U8SDK.getInstance().getAppID()+"")
                    .append("channelID=").append(U8SDK.getInstance().getCurrChannel())
                    .append("extension=").append(result).append(U8SDK.getInstance().getAppKey());			
			
            String sign = EncryptUtils.md5(sb.toString()).toLowerCase();
            
            params.put("sign", sign);
            
			String authResult = U8HttpUtils.httpGet(U8SDK.getInstance().getAuthURL(), params);
			
			Log.d("U8SDK", "The sign is " + sign + " The auth result is "+authResult);*/
			
			JSONObject jsonObj = new JSONObject(result);
			
			JSONObject ext = new JSONObject();
			
			try {
				ext.put("userID", jsonObj.getString("userID"));
				ext.put("sdkUserID", jsonObj.getString("sdkUserID"));
				ext.put("username", jsonObj.getString("username"));
				ext.put("sdkUserName", jsonObj.getString("sdkUserName"));
				ext.put("token", jsonObj.getString("token"));
				ext.put("extension", jsonObj.getString("extension"));
				
			} catch (JSONException e) {
				e.printStackTrace();
			}

			String authResult = ext.toString();
			
			return parseAuthResult(authResult/*authResult*/);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return new UToken();
		
	}
	
	
	private static UToken parseAuthResult(String authResult){
		
		if(authResult == null || TextUtils.isEmpty(authResult)){
			
			Log.d("U8SDK", "auth failed.authResult == null || TextUtils.isEmpty(authResult)");
			return new UToken();
		}
		
		try {
			Log.d("U8SDK", "auth success1." );
			JSONObject jsonObj = new JSONObject(authResult);
			Log.d("U8SDK", "auth success2." );
			/*int state = jsonObj.getInt("state");
			Log.d("U8SDK", "auth success3." );
			if(state != 1){
				Log.d("U8SDK", "auth failed. the state is "+ state);
				return new UToken();
			}*/
			Log.d("U8SDK", "auth success4." );
			//JSONObject jsonData = jsonObj.getJSONObject("data");
			Log.d("U8SDK", "auth success5." );
			Log.d("U8SDK", "auth success." + "userID = " + jsonObj.getInt("userID")
					+ "sdkUserID = " + jsonObj.getString("sdkUserID")
					+ "username = " + jsonObj.getString("username")
					+ "sdkUserName = " + jsonObj.getString("sdkUserName")
					+ "token = " + jsonObj.getString("token")
					+ "extension = " + jsonObj.getString("extension"));
			Log.d("U8SDK", "auth success6." );
			return new UToken(jsonObj.getInt("userID")
					, jsonObj.getString("sdkUserID")
					, jsonObj.getString("username")
					, jsonObj.getString("sdkUserName")
					, jsonObj.getString("token")
					, jsonObj.getString("extension"));
			
		} catch (JSONException e) {

			e.printStackTrace();
		}
		
		Log.d("U8SDK", "auth failed.");
		return new UToken();
	}
}
