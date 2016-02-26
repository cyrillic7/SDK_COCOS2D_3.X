.class public Lcom/u8/sdk/XMiSDK;
.super Ljava/lang/Object;
.source "XMiSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/XMiSDK;


# instance fields
.field private AppId:Ljava/lang/String;

.field private AppKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/XMiSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/XMiSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "sdkUserName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_32

    .line 183
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 171
    :catch_32
    move-exception v0

    .line 172
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static getInstance()Lcom/u8/sdk/XMiSDK;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/u8/sdk/XMiSDK;->instance:Lcom/u8/sdk/XMiSDK;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/u8/sdk/XMiSDK;

    invoke-direct {v0}, Lcom/u8/sdk/XMiSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/XMiSDK;->instance:Lcom/u8/sdk/XMiSDK;

    .line 35
    :cond_b
    sget-object v0, Lcom/u8/sdk/XMiSDK;->instance:Lcom/u8/sdk/XMiSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 3

    .prologue
    .line 50
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;-><init>()V

    .line 51
    .local v0, "appInfo":Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    iget-object v1, p0, Lcom/u8/sdk/XMiSDK;->AppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppId(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/u8/sdk/XMiSDK;->AppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppKey(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    .line 54
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 44
    const-string v0, "XM_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/XMiSDK;->AppId:Ljava/lang/String;

    .line 45
    const-string v0, "XM_APPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/XMiSDK;->AppKey:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/u8/sdk/XMiSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 40
    invoke-direct {p0}, Lcom/u8/sdk/XMiSDK;->initSDK()V

    .line 41
    return-void
.end method

.method public login()V
    .registers 4

    .prologue
    .line 57
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/u8/sdk/XMiSDK$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/XMiSDK$1;-><init>(Lcom/u8/sdk/XMiSDK;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    .line 97
    return-void
.end method

.method public logout()V
    .registers 4

    .prologue
    .line 100
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/XMiSDK$2;

    invoke-direct {v2, p0}, Lcom/u8/sdk/XMiSDK$2;-><init>(Lcom/u8/sdk/XMiSDK;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miAppExit(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V

    .line 109
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 7
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 113
    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    .line 114
    .local v1, "miBuyInfo":Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpUserInfo(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setAmount(I)V

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v2, "balance"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "vip"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getVip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "lv"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "partyName"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "roleName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "roleId"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "serverName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setExtraInfo(Landroid/os/Bundle;)V

    .line 127
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v3

    .line 128
    new-instance v4, Lcom/u8/sdk/XMiSDK$3;

    invoke-direct {v4, p0}, Lcom/u8/sdk/XMiSDK$3;-><init>(Lcom/u8/sdk/XMiSDK;)V

    .line 127
    invoke-virtual {v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I

    .line 156
    return-void
.end method
