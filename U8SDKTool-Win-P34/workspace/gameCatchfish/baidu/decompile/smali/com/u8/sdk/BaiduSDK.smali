.class public Lcom/u8/sdk/BaiduSDK;
.super Ljava/lang/Object;
.source "BaiduSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/BaiduSDK;


# instance fields
.field private AppId:I

.field private AppKey:Ljava/lang/String;

.field private isFixePay:Z

.field private mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;

.field private mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;

.field private ratio:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/u8/sdk/BaiduSDK;->ratio:I

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAdPage;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;

    return-object v0
.end method

.method static synthetic access$1(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAnalytics;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;

    return-object v0
.end method

.method static synthetic access$2(Lcom/u8/sdk/BaiduSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK;->encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildOrderInfo(Lcom/u8/sdk/PayParams;)Lcom/baidu/platformsdk/PayOrderInfo;
    .registers 10
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "cpOrderId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "goodsName":Ljava/lang/String;
    const-string v5, "baidu"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "baidu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v5, "baidu"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "baidu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v5, "baidu"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "baidu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v5, "baidu"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "baidu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v4, 0x1

    .line 280
    .local v4, "ratio":I
    const-string v1, ""

    .line 287
    .local v1, "extInfo":Ljava/lang/String;
    new-instance v3, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-direct {v3}, Lcom/baidu/platformsdk/PayOrderInfo;-><init>()V

    .line 288
    .local v3, "payOrderInfo":Lcom/baidu/platformsdk/PayOrderInfo;
    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/PayOrderInfo;->setCooperatorOrderSerial(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3, v2}, Lcom/baidu/platformsdk/PayOrderInfo;->setProductName(Ljava/lang/String;)V

    .line 291
    iget-boolean v5, p0, Lcom/u8/sdk/BaiduSDK;->isFixePay:Z

    if-eqz v5, :cond_84

    .line 292
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Lcom/baidu/platformsdk/PayOrderInfo;->setTotalPriceCent(J)V

    .line 293
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/baidu/platformsdk/PayOrderInfo;->setRatio(I)V

    .line 298
    :goto_80
    invoke-virtual {v3, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setExtInfo(Ljava/lang/String;)V

    .line 300
    return-object v3

    .line 295
    :cond_84
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/baidu/platformsdk/PayOrderInfo;->setTotalPriceCent(J)V

    .line 296
    iget v5, p0, Lcom/u8/sdk/BaiduSDK;->ratio:I

    invoke-virtual {v3, v5}, Lcom/baidu/platformsdk/PayOrderInfo;->setRatio(I)V

    goto :goto_80
.end method

.method private encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "requesttype"    # I
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v2, "sdkUserName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_32

    .line 205
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 193
    :catch_32
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static getInstance()Lcom/u8/sdk/BaiduSDK;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/u8/sdk/BaiduSDK;->instance:Lcom/u8/sdk/BaiduSDK;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/u8/sdk/BaiduSDK;

    invoke-direct {v0}, Lcom/u8/sdk/BaiduSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/BaiduSDK;->instance:Lcom/u8/sdk/BaiduSDK;

    .line 48
    :cond_b
    sget-object v0, Lcom/u8/sdk/BaiduSDK;->instance:Lcom/u8/sdk/BaiduSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 5

    .prologue
    .line 64
    new-instance v0, Lcom/baidu/gamesdk/BDGameSDKSetting;

    invoke-direct {v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;-><init>()V

    .line 65
    .local v0, "mBDGameSDKSetting":Lcom/baidu/gamesdk/BDGameSDKSetting;
    iget v1, p0, Lcom/u8/sdk/BaiduSDK;->AppId:I

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppID(I)V

    .line 66
    iget-object v1, p0, Lcom/u8/sdk/BaiduSDK;->AppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppKey(Ljava/lang/String;)V

    .line 67
    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->RELEASE:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setDomain(Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;)V

    .line 68
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/u8/sdk/baidu/Utils;->getOrientation(Landroid/content/Context;)Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setOrientation(Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;)V

    .line 70
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/BaiduSDK$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/BaiduSDK$1;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 102
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/BaiduSDK$2;

    invoke-direct {v2, p0}, Lcom/u8/sdk/BaiduSDK$2;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v1, v0, v2}, Lcom/baidu/gamesdk/BDGameSDK;->init(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V

    .line 122
    invoke-direct {p0}, Lcom/u8/sdk/BaiduSDK;->setSuspendWindowChangeAccountListener()V

    .line 124
    invoke-direct {p0}, Lcom/u8/sdk/BaiduSDK;->setSessionInvalidListener()V

    .line 126
    new-instance v1, Lcom/baidu/gamesdk/ActivityAnalytics;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/gamesdk/ActivityAnalytics;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;

    .line 128
    new-instance v1, Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/BaiduSDK$3;

    invoke-direct {v3, p0}, Lcom/u8/sdk/BaiduSDK$3;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-direct {v1, v2, v3}, Lcom/baidu/gamesdk/ActivityAdPage;-><init>(Landroid/app/Activity;Lcom/baidu/gamesdk/ActivityAdPage$Listener;)V

    iput-object v1, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;

    .line 137
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 57
    const-string v0, "BD_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/u8/sdk/BaiduSDK;->AppId:I

    .line 58
    const-string v0, "BD_APPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/BaiduSDK;->AppKey:Ljava/lang/String;

    .line 59
    const-string v0, "BD_FIXEPAY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/BaiduSDK;->isFixePay:Z

    .line 60
    const-string v0, "BD_RATIO"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/u8/sdk/BaiduSDK;->ratio:I

    .line 61
    return-void
.end method

.method private setSessionInvalidListener()V
    .registers 2

    .prologue
    .line 352
    new-instance v0, Lcom/u8/sdk/BaiduSDK$9;

    invoke-direct {v0, p0}, Lcom/u8/sdk/BaiduSDK$9;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSessionInvalidListener(Lcom/baidu/gamesdk/IResponse;)V

    .line 365
    return-void
.end method

.method private setSuspendWindowChangeAccountListener()V
    .registers 2

    .prologue
    .line 304
    new-instance v0, Lcom/u8/sdk/BaiduSDK$8;

    invoke-direct {v0, p0}, Lcom/u8/sdk/BaiduSDK$8;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSuspendWindowChangeAccountListener(Lcom/baidu/gamesdk/IResponse;)V

    .line 348
    return-void
.end method


# virtual methods
.method public ClosefloatView()V
    .registers 3

    .prologue
    .line 259
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/BaiduSDK$7;

    invoke-direct {v1, p0}, Lcom/u8/sdk/BaiduSDK$7;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public ShowfloatView()V
    .registers 3

    .prologue
    .line 248
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/BaiduSDK$6;

    invoke-direct {v1, p0}, Lcom/u8/sdk/BaiduSDK$6;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/u8/sdk/BaiduSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 53
    invoke-direct {p0}, Lcom/u8/sdk/BaiduSDK;->initSDK()V

    .line 54
    return-void
.end method

.method public login()V
    .registers 2

    .prologue
    .line 140
    new-instance v0, Lcom/u8/sdk/BaiduSDK$4;

    invoke-direct {v0, p0}, Lcom/u8/sdk/BaiduSDK$4;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->login(Lcom/baidu/gamesdk/IResponse;)V

    .line 178
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 5
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/u8/sdk/BaiduSDK;->buildOrderInfo(Lcom/u8/sdk/PayParams;)Lcom/baidu/platformsdk/PayOrderInfo;

    move-result-object v0

    .line 210
    .local v0, "payOrderInfo":Lcom/baidu/platformsdk/PayOrderInfo;
    if-nez v0, :cond_7

    .line 245
    :goto_6
    return-void

    .line 214
    :cond_7
    const/4 v1, 0x0

    .line 215
    new-instance v2, Lcom/u8/sdk/BaiduSDK$5;

    invoke-direct {v2, p0}, Lcom/u8/sdk/BaiduSDK$5;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    .line 214
    invoke-static {v0, v1, v2}, Lcom/baidu/gamesdk/BDGameSDK;->pay(Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    goto :goto_6
.end method
