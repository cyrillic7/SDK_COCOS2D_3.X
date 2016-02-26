package com.u8.sdk;

import java.util.UUID;

import org.json.JSONException;
import org.json.JSONObject;

import android.os.Bundle;
import android.util.Log;

import com.xiaomi.gamecenter.sdk.GameInfoField;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnExitListner;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

public class XMiSDK {
	private static XMiSDK instance;

	private String AppId;
	private String AppKey;
	
	private XMiSDK(){
		
	}

	public static XMiSDK getInstance(){
		if(instance == null){
			instance = new XMiSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.AppId = params.getString("XM_APPID");
		this.AppKey = params.getString("XM_APPKEY");
		//this.payUrl = params.getString("MZ_PAYURL");
	}
	
	private void initSDK(){
		MiAppInfo appInfo = new MiAppInfo();
		appInfo.setAppId(this.AppId);
		appInfo.setAppKey(this.AppKey);
		MiCommplatform.Init( U8SDK.getInstance().getContext(), appInfo );
	}
	
	public void login(){//登录 
		MiCommplatform.getInstance().miLogin(U8SDK.getInstance().getContext(), 
                new OnLoginProcessListener()
		{
	        public void finishLoginProcess( int code ,MiAccountInfo arg1)
	        {
	            switch( code )
	            {
	              case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
	                   // 登陆成功
	                //获取用户的登陆后的UID（即用户唯一标识）
	                long uid = arg1.getUid();
	                String session = arg1.getSessionId();
	                String nickname = "";//arg1.getNikename();
	                Log.v("U8SDK","uid = " + uid);
	                Log.v("U8SDK","session = " + session);
	                U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS,String.valueOf(uid));
	                 String result = encodeLoginResult(nickname, String.valueOf(uid),session);
	                 U8SDK.getInstance().onLoginResult(result);
	                 
	                break;
	              case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_LOGIN_FAIL:
                      // 登陆失败
	            	  U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login failed.");
                      break;
	              case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_CANCEL:
                        // 取消登录
	            	  U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login cancelled.");
                        break;
              	  case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED: 
              		  //登录操作正在进行中
              		U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login executed.");
              		  break;        
              	  default:
                      // 登录失败
              		U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL,"login failled.");
              		  break;
	            }
	        }
		});
		
	}
	
	public void logout(){
		MiCommplatform.getInstance().miAppExit(U8SDK.getInstance().getContext(),new OnExitListner() {          
            @Override
            public void onExit(int code) {
                Log.e("errorCode===",code+"");
                if(code==MiErrorCode.MI_XIAOMI_EXIT){
                    //执行退出的一些操作
                }
            }
        });
	}
	
	public void pay(final PayParams data){
		
		MiBuyInfo miBuyInfo= new MiBuyInfo();
		miBuyInfo.setCpOrderId(data.getOrderID());//订单号唯一（不为空）
		miBuyInfo.setCpUserInfo( String.valueOf(data.getPrice()) ); //此参数在用户支付成功后会透传给CP的服务器
		miBuyInfo.setAmount( data.getPrice() ); //必须是大于1的整数，10代表10米币，即10元人民币（不为空）
		//用户信息，网游必须设置、单机游戏或应用可选**
		Bundle mBundle = new Bundle();
		mBundle.putString( GameInfoField.GAME_USER_BALANCE, "" );   //用户余额
		mBundle.putString( GameInfoField.GAME_USER_GAMER_VIP, data.getVip() );  //vip等级
		mBundle.putString( GameInfoField.GAME_USER_LV, String.valueOf(data.getRoleLevel()) );           //角色等级
		mBundle.putString( GameInfoField.GAME_USER_PARTY_NAME, "" );  //工会，帮派
		mBundle.putString( GameInfoField.GAME_USER_ROLE_NAME, data.getRoleName() ); //角色名称
		mBundle.putString( GameInfoField.GAME_USER_ROLEID, data.getRoleId() );    //角色id
		mBundle.putString( GameInfoField.GAME_USER_SERVER_NAME, data.getServerName() );  //所在服务器
		miBuyInfo.setExtraInfo( mBundle ); //设置用户信息
		MiCommplatform.getInstance().miUniPay(U8SDK.getInstance().getContext(), miBuyInfo, 
		new OnPayProcessListener()
		{
		@Override
		    public void finishPayProcess( int code ) {
		        switch( code ) {
		        case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
		       //购买成功
		        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay successed.");
		            break;
		        case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_CANCEL:
		            //取消购买
		        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
		               break;
		        case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_FAILURE:
		            //购买失败
		        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
		               break;       
		        case  MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:  
		        	//操作正在进行中
		        	break;       
		        default:
		              //购买失败
		        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.");
		            break;
		        }
		    }
		});
		
	}
	
	private String encodeLoginResult(String nickname, String openId, String accessToken) {

		
		JSONObject ext = new JSONObject();
		try {
			ext.put("accountType", "");
			ext.put("userID", 0);
			ext.put("sdkUserID", openId);
			ext.put("username", "");
			ext.put("sdkUserName", nickname);
			ext.put("token", accessToken);
			ext.put("extension", openId);
			
		} catch (JSONException e) {
			e.printStackTrace();
		}
		/*try {
			ext.put("accountType", requesttype);
			ext.put("token", accessToken);
			ext.put("extension", openId);
			
		} catch (JSONException e) {
			e.printStackTrace();
		}*/

		return ext.toString();
	}
	
}
