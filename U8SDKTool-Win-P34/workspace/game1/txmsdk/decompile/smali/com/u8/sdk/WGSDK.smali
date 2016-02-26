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

.field private qqAppId:Ljava/lang/String;

.field private qqAppKey:Ljava/lang/String;

.field private wxAppId:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tencent$msdk$consts$EPlatform()[I
    .registers 3

    .prologue
    .line 41
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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/u8/sdk/WGSDK;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/WGSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/WGSDK;->reqCharge(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/u8/sdk/WGSDK;)V
    .registers 1

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/u8/sdk/WGSDK;->showTip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/u8/sdk/WGSDK;)Lcom/tencent/msdk/consts/EPlatform;
    .registers 2

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/u8/sdk/WGSDK;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/WGSDK;->encodeLoginResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/u8/sdk/WGSDK;)V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->showDiffLogin()V

    return-void
.end method

.method static synthetic access$8(Lcom/u8/sdk/WGSDK;)Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    return v0
.end method

.method private encodeLoginResult(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "requesttype"    # I
    .param p2, "openId"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 389
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string v2, "openId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_14

    .line 396
    :goto_f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 392
    :catch_14
    move-exception v0

    .line 393
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method public static getInstance()Lcom/u8/sdk/WGSDK;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/u8/sdk/WGSDK;->instance:Lcom/u8/sdk/WGSDK;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/u8/sdk/WGSDK;

    invoke-direct {v0}, Lcom/u8/sdk/WGSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/WGSDK;->instance:Lcom/u8/sdk/WGSDK;

    .line 77
    :cond_b
    sget-object v0, Lcom/u8/sdk/WGSDK;->instance:Lcom/u8/sdk/WGSDK;

    return-object v0
.end method

.method private getPlatform()Lcom/tencent/msdk/consts/EPlatform;
    .registers 3

    .prologue
    .line 348
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 349
    .local v0, "ret":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    .line 350
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v1, :cond_13

    .line 351
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Lcom/tencent/msdk/consts/EPlatform;->getEnum(I)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v1

    .line 353
    :goto_12
    return-object v1

    :cond_13
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    goto :goto_12
.end method

.method private hideProgressDialog()V
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 622
    :goto_4
    return-void

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    goto :goto_4
.end method

.method private initSDK()V
    .registers 6

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/WGSDK$1;

    invoke-direct {v3, p0}, Lcom/u8/sdk/WGSDK$1;-><init>(Lcom/u8/sdk/WGSDK;)V

    invoke-virtual {v2, v3}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 132
    new-instance v0, Lcom/tencent/msdk/api/MsdkBaseInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/api/MsdkBaseInfo;-><init>()V

    .line 133
    .local v0, "baseInfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->qqAppId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->qqAppKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppKey:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->wxAppId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->msdkKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/u8/sdk/WGSDK;->offerId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/msdk/api/WGPlatform;->Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    .line 147
    const v2, 0xffffff

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->WGSetPermission(I)V

    .line 148
    new-instance v2, Lcom/u8/sdk/WGSDK$MsdkCallback;

    invoke-direct {v2, p0}, Lcom/u8/sdk/WGSDK$MsdkCallback;-><init>(Lcom/u8/sdk/WGSDK;)V

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    .line 149
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    .line 151
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "init success"

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    .line 157
    .end local v0    # "baseInfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    :goto_57
    return-void

    .line 153
    :catch_58
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 86
    const-string v0, "WG_QQAPPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->qqAppId:Ljava/lang/String;

    .line 87
    const-string v0, "WG_QQAPPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->qqAppKey:Ljava/lang/String;

    .line 88
    const-string v0, "WG_WXAPPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->wxAppId:Ljava/lang/String;

    .line 89
    const-string v0, "WG_MSDKKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->msdkKey:Ljava/lang/String;

    .line 90
    const-string v0, "WG_OFFERID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->offerId:Ljava/lang/String;

    .line 91
    const-string v0, "WG_ENV"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->env:Ljava/lang/String;

    .line 92
    const-string v0, "WG_DEBUG_MODE"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK;->debugMode:Z

    .line 93
    const-string v0, "WG_FIXEDPAY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK;->fixedPay:Z

    .line 94
    const-string v0, "WG_COIN_ICON_NAME"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->coinIconName:Ljava/lang/String;

    .line 95
    const-string v0, "WG_MULTI_SERVERS"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    .line 96
    const-string v0, "WG_PAY_URL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private reqCharge(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "opType"    # I
    .param p2, "orderID"    # Ljava/lang/String;
    .param p3, "serverID"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v5, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 308
    :cond_c
    const-string v5, "U8SDK"

    const-string v6, "the pay url is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    .line 343
    :goto_14
    return-object v1

    .line 314
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v3

    .line 315
    .local v3, "p":Lcom/tencent/msdk/consts/EPlatform;
    const/4 v0, 0x0

    .line 316
    .local v0, "accountType":I
    sget-object v5, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v3, v5, :cond_1f

    .line 317
    const/4 v0, 0x1

    .line 320
    :cond_1f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "opType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v5, "channelID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/U8SDK;->getCurrChannel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v5, "userID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/U8SDK;->getUToken()Lcom/u8/sdk/verify/UToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v5, "accountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v5, "openID"

    iget-object v6, p0, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v5, "openKey"

    iget-object v6, p0, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v6, "pay_token"

    if-nez v0, :cond_ce

    iget-object v5, p0, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    :goto_94
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v5, "pf"

    iget-object v6, p0, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v5, "pfkey"

    iget-object v6, p0, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v5, "zoneid"

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v5, p0, Lcom/u8/sdk/WGSDK;->payUrl:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/u8/sdk/utils/U8HttpUtils;->httpGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "authResult":Ljava/lang/String;
    const-string v5, "U8SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "the pay req to u8server response : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_c4} :catch_c6

    goto/16 :goto_14

    .line 338
    .end local v0    # "accountType":I
    .end local v1    # "authResult":Ljava/lang/String;
    .end local v3    # "p":Lcom/tencent/msdk/consts/EPlatform;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_c6
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    const-string v1, ""

    goto/16 :goto_14

    .line 327
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "accountType":I
    .restart local v3    # "p":Lcom/tencent/msdk/consts/EPlatform;
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ce
    :try_start_ce
    const-string v5, ""
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d0} :catch_c6

    goto :goto_94
.end method

.method private showDiffLogin()V
    .registers 4

    .prologue
    .line 358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u5f02\u8d26\u53f7\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 360
    const-string v1, "\u4f60\u5f53\u524d\u62c9\u8d77\u7684\u8d26\u53f7\u4e0e\u4f60\u672c\u5730\u7684\u8d26\u53f7\u4e0d\u4e00\u81f4\uff0c\u8bf7\u9009\u62e9\u4f7f\u7528\u54ea\u4e2a\u8d26\u53f7\u767b\u9646\uff1a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 361
    const-string v1, "\u672c\u5730\u8d26\u53f7"

    .line 362
    new-instance v2, Lcom/u8/sdk/WGSDK$3;

    invoke-direct {v2, p0}, Lcom/u8/sdk/WGSDK$3;-><init>(Lcom/u8/sdk/WGSDK;)V

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    const-string v1, "\u62c9\u8d77\u8d26\u53f7"

    .line 372
    new-instance v2, Lcom/u8/sdk/WGSDK$4;

    invoke-direct {v2, p0}, Lcom/u8/sdk/WGSDK$4;-><init>(Lcom/u8/sdk/WGSDK;)V

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 382
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 614
    :goto_4
    return-void

    .line 603
    :cond_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    .line 604
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 605
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 606
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/u8/sdk/WGSDK$6;

    invoke-direct {v1, p0}, Lcom/u8/sdk/WGSDK$6;-><init>(Lcom/u8/sdk/WGSDK;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 613
    iget-object v0, p0, Lcom/u8/sdk/WGSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_4
.end method

.method private showTip(Ljava/lang/String;)V
    .registers 4
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/WGSDK$5;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/WGSDK$5;-><init>(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/u8/sdk/WGSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 82
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->initSDK()V

    .line 83
    return-void
.end method

.method public login()V
    .registers 5

    .prologue
    .line 160
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/u8/sdk/SDKTools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 161
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "The network now is unavailable"

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 167
    :goto_18
    return-void

    .line 165
    :cond_19
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/u8/sdk/ChooseLoginTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
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

    .line 170
    invoke-virtual {p0}, Lcom/u8/sdk/WGSDK;->logout()V

    .line 172
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    .line 174
    .local v0, "platform":Lcom/tencent/msdk/consts/EPlatform;
    packed-switch p1, :pswitch_data_4e

    .line 201
    :goto_b
    return-void

    .line 176
    :pswitch_c
    invoke-static {}, Lcom/u8/sdk/WGSDK;->$SWITCH_TABLE$com$tencent$msdk$consts$EPlatform()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 184
    :pswitch_19
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "\u8bf7\u91cd\u65b0\u70b9\u51fbQQ\u767b\u5f55"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_b

    .line 178
    :pswitch_23
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLoginWithLocalInfo()V

    goto :goto_b

    .line 181
    :pswitch_27
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v1}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    goto :goto_b

    .line 189
    :pswitch_2d
    invoke-static {}, Lcom/u8/sdk/WGSDK;->$SWITCH_TABLE$com$tencent$msdk$consts$EPlatform()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 197
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "\u8bf7\u91cd\u65b0\u70b9\u51fb\u5fae\u4fe1\u767b\u5f55"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_b

    .line 191
    :pswitch_44
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLoginWithLocalInfo()V

    goto :goto_b

    .line 194
    :pswitch_48
    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v1}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    goto :goto_b

    .line 174
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_2d
    .end packed-switch

    .line 176
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_27
        :pswitch_19
        :pswitch_23
    .end packed-switch

    .line 189
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method

.method public logout()V
    .registers 1

    .prologue
    .line 204
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    .line 205
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 11
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    const/4 v6, 0x1

    .line 221
    new-instance v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;-><init>(Landroid/content/Context;)V

    .line 222
    .local v4, "unipayAPI":Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->env:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->setEnv(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4, v6}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->setLogEnable(Z)V

    .line 224
    iget-boolean v7, p0, Lcom/u8/sdk/WGSDK;->debugMode:Z

    if-eqz v7, :cond_2a

    .line 225
    new-instance v5, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;-><init>(Landroid/content/Context;)V

    .line 226
    .local v5, "unipayPlugTools":Lcom/tencent/unipay/plugsdk/UnipayPlugTools;
    invoke-virtual {v5}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->setUrlForTest()V

    .line 230
    .end local v5    # "unipayPlugTools":Lcom/tencent/unipay/plugsdk/UnipayPlugTools;
    :cond_2a
    new-instance v3, Lcom/tencent/unipay/request/UnipayGameRequest;

    invoke-direct {v3}, Lcom/tencent/unipay/request/UnipayGameRequest;-><init>()V

    .line 232
    .local v3, "request":Lcom/tencent/unipay/request/UnipayGameRequest;
    iget-boolean v7, p0, Lcom/u8/sdk/WGSDK;->multiServers:Z

    if-eqz v7, :cond_163

    .line 234
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    .line 239
    :goto_39
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->offerId:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->offerId:Ljava/lang/String;

    .line 240
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openId:Ljava/lang/String;

    .line 241
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->pf:Ljava/lang/String;

    .line 242
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->pfKey:Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v2

    .line 246
    .local v2, "platform":Lcom/tencent/msdk/consts/EPlatform;
    sget-object v7, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v2, v7, :cond_169

    .line 247
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    .line 248
    const-string v7, "openid"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    .line 249
    const-string v7, "kp_actoken"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    .line 257
    :cond_5d
    :goto_5d
    const-string v7, "common"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->acctType:Ljava/lang/String;

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->saveValue:Ljava/lang/String;

    .line 259
    iget-boolean v7, p0, Lcom/u8/sdk/WGSDK;->fixedPay:Z

    if-eqz v7, :cond_7b

    const/4 v6, 0x0

    :cond_7b
    iput-boolean v6, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->isCanChange:Z

    .line 260
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

    .line 262
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->resId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->resData:[B

    .line 267
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

    .line 268
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

    .line 269
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

    .line 267
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v6, Lcom/u8/sdk/WGSDK$2;

    invoke-direct {v6, p0, p1}, Lcom/u8/sdk/WGSDK$2;-><init>(Lcom/u8/sdk/WGSDK;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v4, v3, v6}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 303
    return-void

    .line 236
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "platform":Lcom/tencent/msdk/consts/EPlatform;
    :cond_163
    const-string v7, "1"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    goto/16 :goto_39

    .line 251
    .restart local v2    # "platform":Lcom/tencent/msdk/consts/EPlatform;
    :cond_169
    sget-object v7, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v2, v7, :cond_5d

    .line 252
    iget-object v7, p0, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    .line 253
    const-string v7, "hy_gameid"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    .line 254
    const-string v7, "wc_actoken"

    iput-object v7, v3, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    goto/16 :goto_5d
.end method

.method public submitExtendData(Lcom/u8/sdk/UserExtraData;)V
    .registers 7
    .param p1, "extraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getDataType()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 217
    :goto_8
    return-void

    .line 213
    :pswitch_9
    new-instance v0, Lcom/u8/sdk/WGSDK$PayReqTask;

    invoke-direct {v0, p0, v3}, Lcom/u8/sdk/WGSDK$PayReqTask;-><init>(Lcom/u8/sdk/WGSDK;Z)V

    .line 214
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

    .line 209
    nop

    :pswitch_data_3a
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch
.end method
