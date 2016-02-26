#ifndef __U8SDK_H__
#define __U8SDK_H__

#include "cocos2d.h"
#include "U8SDKData.h"
#include "U8SDKNativeCallback.h"
#include "U8SDKCallback.h"
#include "NDKHelper/NDKHelper.h"

/*
 * U8SDK �����ӿ� ����
 */
class U8SDKInterface : cocos2d::CCObject
{
private:
	static U8SDKInterface* _instance;
	bool supportExit;
	bool supportAccountCenter;
	bool supportLogout;
	U8SDKNativeCallback* nativeCallback;

public:
	static U8SDKInterface* getInstance();
	virtual ~U8SDKInterface();

	/*SDK ��ʼ�� */
	void initSDK(U8SDKCallback* callback);
	void onU8LoginResult(cocos2d::Node *sender, cocos2d::Value data);


	/*��¼*/
	void login();
	
	/*��¼ Ӧ�ñ������Ϸ�㴦�����������ӿ� QQ����WX*/
	void loginCustom(const std::string& customData);

	/*�л��ʺ�*/
	void switchLogin();
	
	/*�ǳ�*/
	void logout();
	
	/*��ʾ�û���������*/
	void showAccoutCenter();
	
	/*�ϱ���Ϸ����*/
	void submitGameData(U8ExtraGameData * data);
	
	/*SDK �˳�ȷ�Ͽ�*/
	void sdkExit();
	
	/*֧���ӿ�*/
	void pay(U8PayParams * data);

	void setSupports(bool exit, bool accountCenter, bool logout);

	/*SDK�Ƿ�֧���˳�ȷ�Ͽ򣬲�֧����ʹ����Ϸ�Լ���*/
	bool isSupportExit();

	/*SDK�Ƿ�֧���û��������ģ�����SDKҪ����Ϸ�б���Ҫ�н����û����ĵİ�ť��������Ϸ���Ը���������ж���ʾ���ǲ���ʾ*/
	bool isSupportAccountCenter();
	
	/*SDK�Ƿ�֧�ֵǳ��ӿ�*/
	bool isSupportLogout();


};

#endif

