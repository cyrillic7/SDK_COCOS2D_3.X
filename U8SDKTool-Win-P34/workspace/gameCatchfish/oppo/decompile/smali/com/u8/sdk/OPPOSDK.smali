.class public Lcom/u8/sdk/OPPOSDK;
.super Ljava/lang/Object;
.source "OPPOSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/OPPOSDK;


# instance fields
.field private AppId:Ljava/lang/String;

.field private AppSecret:Ljava/lang/String;

.field private payUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/OPPOSDK;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/OPPOSDK;->doGetUserInfoByCpClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/OPPOSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/OPPOSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doGetUserInfoByCpClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "ssoid"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    invoke-direct {v1, p1, p2}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/u8/sdk/OPPOSDK$4;

    invoke-direct {v2, p0, p1}, Lcom/u8/sdk/OPPOSDK$4;-><init>(Lcom/u8/sdk/OPPOSDK;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doGetUserInfo(Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 148
    return-void
.end method

.method private encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "sdkUserName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_32

    .line 166
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 162
    :catch_32
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static getInstance()Lcom/u8/sdk/OPPOSDK;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/u8/sdk/OPPOSDK;->instance:Lcom/u8/sdk/OPPOSDK;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/u8/sdk/OPPOSDK;

    invoke-direct {v0}, Lcom/u8/sdk/OPPOSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/OPPOSDK;->instance:Lcom/u8/sdk/OPPOSDK;

    .line 34
    :cond_b
    sget-object v0, Lcom/u8/sdk/OPPOSDK;->instance:Lcom/u8/sdk/OPPOSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    new-instance v5, Lcom/u8/sdk/OPPOSDK$1;

    invoke-direct {v5, p0}, Lcom/u8/sdk/OPPOSDK$1;-><init>(Lcom/u8/sdk/OPPOSDK;)V

    invoke-virtual {v4, v5}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 67
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/U8SDK;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nearme/game/sdk/common/util/AppUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 68
    if-eqz v4, :cond_43

    .line 69
    iget-object v2, p0, Lcom/u8/sdk/OPPOSDK;->AppId:Ljava/lang/String;

    .line 70
    .local v2, "appKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/u8/sdk/OPPOSDK;->AppSecret:Ljava/lang/String;

    .line 71
    .local v3, "appSecret":Ljava/lang/String;
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    .line 73
    const/4 v4, 0x1

    move v5, v1

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 76
    .local v0, "gameCenterSettings":Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->init(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V

    .line 78
    .end local v0    # "gameCenterSettings":Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
    .end local v2    # "appKey":Ljava/lang/String;
    .end local v3    # "appSecret":Ljava/lang/String;
    :cond_43
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 43
    const-string v0, "OPPO_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/OPPOSDK;->AppId:Ljava/lang/String;

    .line 44
    const-string v0, "OPPO_SECRET"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/OPPOSDK;->AppSecret:Ljava/lang/String;

    .line 45
    const-string v0, "OPPO_PAYURL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/OPPOSDK;->payUrl:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public doGetTokenAndSsoid()V
    .registers 3

    .prologue
    .line 98
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/OPPOSDK$3;

    invoke-direct {v1, p0}, Lcom/u8/sdk/OPPOSDK$3;-><init>(Lcom/u8/sdk/OPPOSDK;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->doGetTokenAndSsoid(Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 118
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/u8/sdk/OPPOSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 39
    invoke-direct {p0}, Lcom/u8/sdk/OPPOSDK;->initSDK()V

    .line 40
    return-void
.end method

.method public login()V
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/OPPOSDK$2;

    invoke-direct {v2, p0}, Lcom/u8/sdk/OPPOSDK$2;-><init>(Lcom/u8/sdk/OPPOSDK;)V

    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doLogin(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 95
    return-void
.end method

.method public logout()V
    .registers 4

    .prologue
    .line 197
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/u8/sdk/OPPOSDK$6;

    invoke-direct {v2, p0}, Lcom/u8/sdk/OPPOSDK$6;-><init>(Lcom/u8/sdk/OPPOSDK;)V

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->onExit(Landroid/app/Activity;Lcom/nearme/game/sdk/callback/GameExitCallback;)V

    .line 207
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 7
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v2

    mul-int/lit8 v0, v2, 0x64

    .line 171
    .local v0, "amount":I
    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    .local v1, "payInfo":Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductDesc(Ljava/lang/String;)V

    .line 173
    const-string v2, "\u5143\u5b9d"

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductName(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/u8/sdk/OPPOSDK;->payUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setCallbackUrl(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/u8/sdk/OPPOSDK$5;

    invoke-direct {v4, p0}, Lcom/u8/sdk/OPPOSDK$5;-><init>(Lcom/u8/sdk/OPPOSDK;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/nearme/game/sdk/GameCenterSDK;->doPay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 193
    return-void
.end method
