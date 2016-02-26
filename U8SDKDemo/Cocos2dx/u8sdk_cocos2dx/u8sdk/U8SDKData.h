
#ifndef __U8SDKDATA_H__
#define __U8SDKDATA_H__

#include "cocos2d.h"

/*֧���ӿ���Ҫ�Ĳ���*/
class U8PayParams : public cocos2d::Ref
{
public:
	U8PayParams();
	virtual ~U8PayParams();

	static U8PayParams* create();

	//��Ϸ����ƷID
	std::string productId;

	//��Ϸ����Ʒ���ƣ�����Ԫ������ʯ...
	std::string productName;

	//��Ϸ����Ʒ����
	std::string productDesc;

	//��Ʒ�۸񣬵�λԪ
	int price;

	//��������,һ�㶼Ϊ1.ע���£�������Ϸ�С�100Ԫ������һ����ֵ��Ʒ��
	//��Ӧ�ļ۸���90Ԫ����ô����price��90Ԫ������buyNum=1������100
	int buyNum;

	//��ǰ�������ʣ������������
	int coinNum;

	//��ǰ��ɫ���ڵķ�����ID
	std::string serverId;

	//��ǰ��ɫ���ڵķ���������
	std::string serverName;

	//��ǰ��ɫID
	std::string roleId;

	//��ǰ��ɫ����
	std::string roleName;

	//��ǰ��ɫ�ȼ�
	int roleLevel;

	//��ǰ��ɫ��vip�ȼ�
	std::string vip;

	//��Ϸ�����������ţ��ɷ���������
	std::string orderID;

	//��չ�ֶΣ�����Ϸ���������ɣ���������SDK���ܲ�һ��
	std::string extension;

};

/*�����ϱ��ӿ���Ҫ�Ĳ���*/
class U8ExtraGameData : public cocos2d::Ref
{
public:

	static const int TYPE_SELECT_SERVER = 1;		//ѡ�������
	static const int TYPE_CREATE_ROLE = 2;			//������ɫ
	static const int TYPE_ENTER_GAME = 3;			//������Ϸ
	static const int TYPE_LEVEL_UP = 4;				//�ȼ�����
	static const int TYPE_EXIT_GAME = 5;			//�˳���Ϸ


	U8ExtraGameData();
	virtual ~U8ExtraGameData();

	static U8ExtraGameData* create();

	//����ʱ��������Ϊ���涨������ͣ��ڸ�����Ӧ�ĵط�����submitGameData����
	int dataType;

	//��ɫID
	std::string roleId;

	//��ɫ����
	std::string roleName;

	//��ɫ�ȼ�
	int roleLevel;

	//������ID
	int serverId;

	//����������
	std::string serverName;

	//��ǰ��ɫ����ӵ�е����������
	int moneyNum;
};

class U8LoginResult : public cocos2d::Ref
{
public:
	U8LoginResult();
	virtual ~U8LoginResult();

	static U8LoginResult* create();

	//�Ƿ���֤�ɹ�
	bool isSuc;

	//��ǰ�Ƿ�ΪSDK�������л��ʺŵĻص�
	bool isSwitchAccount;

	//u8server ���ص�userId
	std::string userId;

	//����SDK��userID
	std::string sdkUserId;

	//u8server���ص��û���
	std::string username;


	//����SDK �û���
	std::string sdkUsername;

	//u8server���ص����ڵ�¼��֤��ƾ��
	std::string token;

};


#endif