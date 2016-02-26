package com.u8.sdk;

import com.tencent.msdk.api.WGPlatform;
import com.u8.sdk.plugin.U8User;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;

/**
 * 选择QQ、微信登录方式
 */
public class ChooseLoginTypeActivity extends Activity {
	
	private Button btnQQ;
	private Button btnWX;
	public static ChooseLoginTypeActivity loginActivity;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		loginActivity = this;
		requestWindowFeature(Window.FEATURE_NO_TITLE);//隐藏标题
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
		WindowManager.LayoutParams.FLAG_FULLSCREEN);//设置全屏
		int layoutID = getResources().getIdentifier("u8_layout_login_choice", "layout", getPackageName());
		setContentView(layoutID);
		//getWindow().setBackgroundDrawableResource(R.drawable.login_bg);
		btnQQ = (Button) findViewById(getResources().getIdentifier("btn_qq", "id", getPackageName()));
		btnWX = (Button) findViewById(getResources().getIdentifier("btn_wx", "id", getPackageName()));
		
		btnQQ.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				//ChooseLoginTypeActivity.this.finish();
				WGSDK.getInstance().login(WGSDK.LOGIN_TYPE_QQ);
			}
		});
		btnWX.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View arg0) {
				//ChooseLoginTypeActivity.this.finish();
				WGSDK.getInstance().login(WGSDK.LOGIN_TYPE_WX);
			}
		});
		
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		// TODO Auto-generated method stub
		if(keyCode==KeyEvent.KEYCODE_BACK){
			/*//Log.v("key","LOGINCANCEL");
			// 创建退出对话框  
            AlertDialog isExit = new AlertDialog.Builder(this).create();  
            // 设置对话框标题  
            isExit.setTitle("系统提示");  
            // 设置对话框消息  
            isExit.setMessage("确定要退出吗");  
            // 添加选择按钮并注册监听  
            isExit.setButton("确定", listener);  
            isExit.setButton2("取消", listener);  
            // 显示对话框  
            isExit.show();  
			//Message msg = Message.obtain();
			//msg.what = 1;
			//mExitHandler.sendMessage(msg);*/
			exit();

		}
		return super.onKeyDown(keyCode, event);
	}

	public void exit(){
		  if(U8User.getInstance().isSupport("exit")){
		    U8SDK.getInstance().runOnMainThread(new Runnable() {

		      @Override
		      public void run() {
		        U8User.getInstance().exit();
		      }
		    });
		  }else{
		        //游戏自己的退出确认框
		        AlertDialog.Builder builder = new AlertDialog.Builder(ChooseLoginTypeActivity.this);
		        builder.setTitle("退出确认");
		        builder.setMessage("欧巴，现在还早，要不要再玩一会？");
		        builder.setCancelable(true);
		        builder.setPositiveButton("好吧",
		                new DialogInterface.OnClickListener() {
		                    public void onClick(DialogInterface dialog,
		                            int whichButton) {
		                      //这里什么都不用做
		                    }
		                });
		        builder.setNeutralButton("一会再玩",
		                new DialogInterface.OnClickListener() {
		                    public void onClick(DialogInterface dialog,
		                            int whichButton) {
				          		U8User.getInstance().exit();
		                      //退出游戏
		                    	ChooseLoginTypeActivity.this.finish();
		                    	U8SDK.getInstance().getContext().finish();
		                      System.exit(0);
		                      
		                      
		                    }
		                   
		                });
		        builder.show();     
		  }
		}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
	}
}
