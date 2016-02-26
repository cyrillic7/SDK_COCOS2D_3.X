.class public Lcom/u8/sdk/WGSDK;
.super Ljava/lang/Object;
.source "WGSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/WGSDK$MsdkCallback;,
        Lcom/u8/sdk/WGSDK$PayReqTask;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$tencent$msdk$consts$EPlatform:[I = null

.field public static final LOGIN_TYPE_QQ:I = 0x1

.field public static final LOGIN_TYPE_WX:I = 0x2

.field private static instance:Lcom/u8/sdk/WGSDK;


# instance fields
.field accessToken:Ljava/lang/String;

.field private coinIconName:Ljava/lang/String;

.field private debugMode:Z

.field private env:Ljava/lang/String;

.field private fixedPay:Z

.field private loadingActivity:Landroid/app/ProgressDialog;

.field private msdkKey:Ljava/lang/String;

.field private multiServers:Z

.field private offerId:Ljava/lang/String;

.field openId:Ljava/lang/String;

.field payToken:Ljava/lang/String;

.field private payUrl:Ljava/lang/String;

.field pf:Ljava/lang/String;

.field pfKey:Ljava/lang/String;

.field price:Ljava/lang/String;

.field private qqAppId:Ljava/lang/String;

.field private qqAppKey:Ljava/lang/String;

.field private wxAppId:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tencent$msdk$consts$EPlatform()[I
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/u8/sdk/WGSDK;->$SWITCH_TABLE$com$tencent$msdk$consts$EPlatform:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/tencent/msdk/consts/EPlatform;->values()[Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/u8/sdk/WGSDK;->$SWITCH_TABLE$com$tencent$msdk$consts$EPlatform:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->price:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/u8/sdk/WGSDK;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/WGSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 324
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/WGSDK;->reqCharge(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/u8/sdk/WGSDK;)V
    .registers 1

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/u8/sdk/WGSDK;->showTip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/u8/sdk/WGSDK;)Lcom/tencent/msdk/consts/EPlatform;
    .registers 2

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/u8/sdk/WGSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 418
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/WGSDK;->encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/u8/sdk/WGSDK;)V
    .registers 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->showDiffLogin()V

    return-void
.end method

.method static synthetic access$8(Lcom/u8/sdk/WGSDK;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    return v0
.end method

.method private encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "requesttype"    # I
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 423
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 424
    const-string v2, "userID"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v2, "sdkUserName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2c} :catch_31

    .line 443
    :goto_2c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 431
    :catch_31
    move-exception v0

    .line 432
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method

.method public static getInstance()Lcom/u8/sdk/WGSDK;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/u8/sdk/WGSDK;->instance:Lcom/u8/sdk/WGSDK;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/u8/sdk/WGSDK;

    invoke-direct {v0}, Lcom/u8/sdk/WGSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/WGSDK;->instance:Lcom/u8/sdk/WGSDK;

    .line 79
    :cond_b
    sget-object v0, Lcom/u8/sdk/WGSDK;->instance:Lcom/u8/sdk/WGSDK;

    return-object v0
.end method

.method private getPlatform()Lcom/tencent/msdk/consts/EPlatform;
    .registers 3

    .prologue
    .line 382
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 383
    .local v0, "ret":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    .line 384
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v1, :cond_13

    .line 385
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Lcom/tencent/msdk/consts/EPlatform;->getEnum(I)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v1

    .line 387
    :goto_12
    return-object v1

    :cond_13
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    goto :goto_12
.end method

.method private hideProgressDialog()V
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 671
    :goto_4
    return-void

    .line 669
    :cond_5
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    goto :goto_4
.end method

.method private initSDK()V
    .registers 6

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/WGSDK$1;

    invoke-direct {v3, p0}, Lcom/u8/sdk/WGSDK$1;-><init>(Lcom/u8/sdk/WGSDK;)V

    invoke-virtual {v2, v3}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 141
    new-instance v0, Lcom/tencent/msdk/api/MsdkBaseInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/api/MsdkBaseInfo;-><init>()V

    .line 142
    .local v0, "baseInfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->qqAppId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->qqAppKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppKey:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->wxAppId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->msdkKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->offerId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/msdk/api/WGPlatform;->Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    .line 156
    const v2, 0xffffff

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->WGSetPermission(I)V

    .line 157
    new-instance v2, Lcom/u8/sdk/WGSDK$MsdkCallback;

    invoke-direct {v2, p0}, Lcom/u8/sdk/WGSDK$MsdkCallback;-><init>(Lcom/u8/sdk/WGSDK;)V

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    .line 159
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->wakeUpFromHall(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 165
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    .line 168
    :cond_5f
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "init success"

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    .line 174
    .end local v0    # "baseInfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    :goto_69
    return-void

    .line 170
    :catch_6a
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 88
    const-string v0, "WG_QQAPPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->qqAppId:Ljava/lang/String;

    .line 89
    const-string v0, "WG_QQAPPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->qqAppKey:Ljava/lang/String;

    .line 90
    const-string v0, "WG_WXAPPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->wxAppId:Ljava/lang/String;

    .line 91
    const-string v0, "WG_MSDKKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->msdkKey:Ljava/lang/String;

    .line 92
    const-string v0, "WG_OFFERID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->offerId:Ljava/lang/String;

    .line 93
    const-string v0, "WG_ENV"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->env:Ljava/lang/String;

    .line 94
    const-string v0, "WG_DEBUG_MODE"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK;->debugMode:Z

    .line 95
    const-string v0, "WG_FIXEDPAY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK;->fixedPay:Z

    .line 96
    const-string v0, "WG_COIN_ICON_NAME"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->coinIconName:Ljava/lang/String;

    .line 97
    const-string v0, "WG_MULTI_SERVERS"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    .line 98
    const-string v0, "WG_PAY_URL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private reqCharge(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "opType"    # I
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "serverID"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v9, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 327
    :cond_c
    const-string v9, "U8SDK"

    const-string v10, "the pay url is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x0

    .line 377
    :goto_14
    return-object v2

    .line 333
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v6

    .line 334
    .local v6, "p":Lcom/tencent/msdk/consts/EPlatform;
    const/4 v0, 0x0

    .line 335
    .local v0, "accountType":I
    sget-object v9, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v6, v9, :cond_1f

    .line 336
    const/4 v0, 0x1

    .line 339
    :cond_1f
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "opType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v9, "channelID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/u8/sdk/U8SDK;->getCurrChannel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v9, "userID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/u8/sdk/U8SDK;->getUToken()Lcom/u8/sdk/verify/UToken;

    move-result-object v11

    invoke-virtual {v11}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v9, "accountType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v9, "openid"

    iget-object v10, p0, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v9, "openKey"

    iget-object v10, p0, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v10, "pay_token"

    if-nez v0, :cond_f9

    iget-object v9, p0, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    :goto_94
    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v9, "pf"

    iget-object v10, p0, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v9, "pfkey"

    iget-object v10, p0, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v9, "zoneid"

    invoke-interface {v7, v9, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v9, "amt"

    iget-object v10, p0, Lcom/u8/sdk/WGSDK;->price:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v9, "orderid"

    invoke-interface {v7, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v9, "U8SDK"

    const-string v10, "reqCharge"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v9, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/u8/sdk/utils/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "authResult":Ljava/lang/String;
    const-string v2, ""

    .line 358
    .local v2, "code":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_ca} :catch_f1

    .line 360
    .local v8, "payRes":Lorg/json/JSONTokener;
    :try_start_ca
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 361
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "ResultCode"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_ca .. :try_end_d5} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d5} :catch_f1

    move-result-object v2

    .line 367
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_d6
    :try_start_d6
    const-string v9, "\u652f\u4ed8\u53d1\u9001"

    invoke-direct {p0, v9}, Lcom/u8/sdk/WGSDK;->showTip(Ljava/lang/String;)V

    .line 368
    const-string v9, "U8SDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "the pay req to u8server response : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_ef} :catch_f1

    goto/16 :goto_14

    .line 372
    .end local v0    # "accountType":I
    .end local v1    # "authResult":Ljava/lang/String;
    .end local v2    # "code":Ljava/lang/String;
    .end local v6    # "p":Lcom/tencent/msdk/consts/EPlatform;
    .end local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "payRes":Lorg/json/JSONTokener;
    :catch_f1
    move-exception v3

    .line 374
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v2, ""

    goto/16 :goto_14

    .line 346
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "accountType":I
    .restart local v6    # "p":Lcom/tencent/msdk/consts/EPlatform;
    .restart local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f9
    :try_start_f9
    const-string v9, ""

    goto :goto_94

    .line 362
    .restart local v1    # "authResult":Ljava/lang/String;
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v8    # "payRes":Lorg/json/JSONTokener;
    :catch_fc
    move-exception v4

    .line 364
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_100} :catch_f1

    goto :goto_d6
.end method

.method private showDiffLogin()V
    .registers 4

    .prologue
    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u5f02\u8d26\u53f7\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 394
    const-string v1, "\u4f60\u5f53\u524d\u62c9\u8d77\u7684\u8d26\u53f7\u4e0e\u4f60\u672c\u5730\u7684\u8d26\u53f7\u4e0d\u4e00\u81f4\uff0c\u8bf7\u9009\u62e9\u4f7f\u7528\u54ea\u4e2a\u8d26\u53f7\u767b\u9646\uff1a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 395
    const-string v1, "\u672c\u5730\u8d26\u53f7"

    .line 396
    new-instance v2, Lcom/u8/sdk/WGSDK$3;

    invoke-direct {v2, p0}, Lcom/u8/sdk/WGSDK$3;-><init>(Lcom/u8/sdk/WGSDK;)V

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    const-string v1, "\u62c9\u8d77\u8d26\u53f7"

    .line 406
    new-instance v2, Lcom/u8/sdk/WGSDK$4;

    invoke-direct {v2, p0}, Lcom/u8/sdk/WGSDK$4;-><init>(Lcom/u8/sdk/WGSDK;)V

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 416
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 663
    :goto_4
    return-void

    .line 652
    :cond_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    .line 653
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 654
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 655
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/u8/sdk/WGSDK$6;

    invoke-direct {v1, p0}, Lcom/u8/sdk/WGSDK$6;-><init>(Lcom/u8/sdk/WGSDK;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 662
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_4
.end method

.method private showTip(Ljava/lang/String;)V
    .registers 4
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/WGSDK$5;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/WGSDK$5;-><init>(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 455
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/u8/sdk/WGSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 84
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->initSDK()V

    .line 85
    return-void
.end method

.method public login()V
    .registers 5

    .prologue
    .line 177
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/u8/sdk/SDKTools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 178
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "The network now is unavailable"

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 184
    :goto_18
    return-void

    .line 182
    :cond_19
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/u8/sdk/ChooseLoginTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method public login(I)V
    .registers 6
    .param p1, "loginType"    # I

    .prologue
    const/4 v3, 0x5

    .line 187
    invoke-virtual {p0}, Lcom/u8/sdk/WGSDK;->logout()V

    .line 189
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    .line 191
    .local v0, "platform":Lcom/tencent/msdk/consts/EPlatform;
    packed-switch p1, :pswitch_data_4e

    .line 218
    :goto_b
    return-void

    .line 193
    :pswitch_c
    invoke-static {}, Lcom/u8/sdk/WGSDK;->$SWITCH_TABLE$com$tencent$msdk$consts$EPlatform()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 201
    :pswitch_19
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "\u8bf7\u91cd\u65b0\u70b9\u51fbQQ\u767b\u5f55"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_b

    .line 195
    :pswitch_23
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLoginWithLocalInfo()V

    goto :goto_b

    .line 198
    :pswitch_27
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v1}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    goto :goto_b

    .line 206
    :pswitch_2d
    invoke-static {}, Lcom/u8/sdk/WGSDK;->$SWITCH_TABLE$com$tencent$msdk$consts$EPlatform()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 214
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "\u8bf7\u91cd\u65b0\u70b9\u51fb\u5fae\u4fe1\u767b\u5f55"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_b

    .line 208
    :pswitch_44
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLoginWithLocalInfo()V

    goto :goto_b

    .line 211
    :pswitch_48
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v1}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    goto :goto_b

    .line 191
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_2d
    .end packed-switch

    .line 193
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_27
        :pswitch_19
        :pswitch_23
    .end packed-switch

    .line 206
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method

.method public logout()V
    .registers 1

    .prologue
    .line 221
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    .line 222
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 12
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    const/4 v6, 0x1

    .line 238
    new-instance v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;-><init>(Landroid/content/Context;)V

    .line 239
    .local v4, "unipayAPI":Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->env:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->setEnv(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4, v6}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->setLogEnable(Z)V

    .line 241
    iget-boolean v7, p0, Lcom/u8/sdk/WGSDK;->debugMode:Z

    if-eqz v7, :cond_2a

    .line 242
    new-instance v5, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;-><init>(Landroid/content/Context;)V

    .line 243
    .local v5, "unipayPlugTools":Lcom/tencent/unipay/plugsdk/UnipayPlugTools;
    invoke-virtual {v5}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->setUrlForTest()V

    .line 246
    .end local v5    # "unipayPlugTools":Lcom/tencent/unipay/plugsdk/UnipayPlugTools;
    :cond_2a
    const-string v7, "U8SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TMXorderid = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v3, Lcom/tencent/unipay/request/UnipayGameRequest;

    invoke-direct {v3}, Lcom/tencent/unipay/request/UnipayGameRequest;-><init>()V

    .line 249
    .local v3, "request":Lcom/tencent/unipay/request/UnipayGameRequest;
    iget-boolean v7, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    if-eqz v7, :cond_18a

    .line 251
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    .line 256
    :goto_51
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->offerId:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->offerId:Ljava/lang/String;

    .line 257
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openId:Ljava/lang/String;

    .line 258
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->pf:Ljava/lang/String;

    .line 259
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->pfKey:Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v2

    .line 263
    .local v2, "platform":Lcom/tencent/msdk/consts/EPlatform;
    sget-object v7, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v2, v7, :cond_190

    .line 264
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    .line 265
    const-string v7, "openid"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    .line 266
    const-string v7, "kp_actoken"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    .line 274
    :cond_75
    :goto_75
    const-string v7, "common"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->acctType:Ljava/lang/String;

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->saveValue:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/u8/sdk/WGSDK;->price:Ljava/lang/String;

    .line 277
    iget-boolean v7, p0, Lcom/u8/sdk/WGSDK;->fixedPay:Z

    if-eqz v7, :cond_9b

    const/4 v6, 0x0

    :cond_9b
    iput-boolean v6, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->isCanChange:Z

    .line 278
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "R.drawable."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/u8/sdk/WGSDK;->coinIconName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/u8/sdk/utils/ResourceHelper;->getIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->resId:I

    .line 280
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->resId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v6, "U8SDK"

    const-string v7, "Bitmap.CompressFormat"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 284
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->resData:[B

    .line 286
    const-string v6, "U8SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TMXSDK Pay:::::offerID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->offerId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",openId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",openKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",sessionType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 287
    const-string v8, ",zoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",pf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->pf:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",pfKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->pfKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",acctType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->acctType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",saveValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->saveValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 288
    const-string v8, ",isCanChange="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->isCanChange:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",resId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->resId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v6, Lcom/u8/sdk/WGSDK$2;

    invoke-direct {v6, p0, p1}, Lcom/u8/sdk/WGSDK$2;-><init>(Lcom/u8/sdk/WGSDK;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v4, v3, v6}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 322
    return-void

    .line 253
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "platform":Lcom/tencent/msdk/consts/EPlatform;
    :cond_18a
    const-string v7, "1"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    goto/16 :goto_51

    .line 268
    .restart local v2    # "platform":Lcom/tencent/msdk/consts/EPlatform;
    :cond_190
    sget-object v7, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v2, v7, :cond_75

    .line 269
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    .line 270
    const-string v7, "hy_gameid"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    .line 271
    const-string v7, "wc_actoken"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    goto/16 :goto_75
.end method

.method public submitExtendData(Lcom/u8/sdk/UserExtraData;)V
    .registers 7
    .param p1, "extraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getDataType()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 234
    :goto_8
    return-void

    .line 230
    :pswitch_9
    new-instance v0, Lcom/u8/sdk/WGSDK$PayReqTask;

    invoke-direct {v0, p0, v3}, Lcom/u8/sdk/WGSDK$PayReqTask;-><init>(Lcom/u8/sdk/WGSDK;Z)V

    .line 231
    .local v0, "payReqTask":Lcom/u8/sdk/WGSDK$PayReqTask;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, ""

    aput-object v3, v2, v1

    const/4 v3, 0x2

    iget-boolean v1, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getServerID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_30
    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/u8/sdk/WGSDK$PayReqTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8

    :cond_36
    const-string v1, "1"

    goto :goto_30

    .line 226
    nop

    :pswitch_data_3a
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch
.end method
