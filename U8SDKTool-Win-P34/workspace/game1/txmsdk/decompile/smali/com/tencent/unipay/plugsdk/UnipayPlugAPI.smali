.class public Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;
.super Ljava/lang/Object;
.source "UnipayPlugAPI.java"


# static fields
.field public static final ACCOUNT_TYPE_COMMON:Ljava/lang/String; = "common"

.field public static final ACCOUNT_TYPE_SECURITY:Ljava/lang/String; = "secrety"

.field private static FUNC_GAME:Ljava/lang/String; = null

.field private static FUNC_GOODS:Ljava/lang/String; = null

.field private static FUNC_MONTH:Ljava/lang/String; = null

.field private static FUNC_NET:Ljava/lang/String; = null

.field private static FUNC_SUBSCRIBE:Ljava/lang/String; = null

.field private static FUNC_VERSION:Ljava/lang/String; = null

.field public static final PAY_CHANNEL_BANK:Ljava/lang/String; = "bank"

.field public static final PAY_CHANNEL_WECHAT:Ljava/lang/String; = "wechat"

.field public static envParams:Ljava/lang/String;

.field static payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

.field static payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

.field private static unipayPreLaunchPay:Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;


# instance fields
.field private ApplicationContext:Landroid/content/Context;

.field private LOG_TAG:Ljava/lang/String;

.field private MIDAS_JS_TAG:Ljava/lang/String;

.field private RET_LOGINOUT:Ljava/lang/String;

.field private RET_NETWORK_SYSTEM:Ljava/lang/String;

.field private RET_USER_CANCEL:Ljava/lang/String;

.field private RET_VESION_NOT_SUPPORT:Ljava/lang/String;

.field private acctType:Ljava/lang/String;

.field private broadcast:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private discountType:Ljava/lang/String;

.field private discountUrl:Ljava/lang/String;

.field private discoutId:Ljava/lang/String;

.field private drmInfo:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

.field private gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

.field private h5Message:Ljava/lang/String;

.field h5ServiceCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

.field private h5Url:Ljava/lang/String;

.field private hasRegistered:Z

.field private isCanChange:Z

.field private isH5Init:Z

.field private isLaunchWeb:Z

.field private isNewMethod:Z

.field private isShowListOtherNum:Z

.field private isShowNum:Z

.field private isUIInterface:Z

.field private logEnable:Z

.field private mallType:I

.field private offerId:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private openKey:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private reqType:Ljava/lang/String;

.field private request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

.field private resData:[B

.field private resId:I

.field private reserv:Ljava/lang/String;

.field private saveValue:Ljava/lang/String;

.field private serviceBinded:Z

.field private sessionId:Ljava/lang/String;

.field private sessionType:Ljava/lang/String;

.field private unipayService:Lcom/tencent/unipay/plug/IUnipayService;

.field private unipayServiceConection:Landroid/content/ServiceConnection;

.field private unit:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayPreLaunchPay:Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;

    .line 46
    const-string v0, "release"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 66
    sput-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    .line 101
    const-string v0, "getVersion"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_VERSION:Ljava/lang/String;

    .line 102
    const-string v0, "payGame"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_GAME:Ljava/lang/String;

    .line 103
    const-string v0, "payGoods"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_GOODS:Ljava/lang/String;

    .line 104
    const-string v0, "payMonth"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_MONTH:Ljava/lang/String;

    .line 105
    const-string v0, "paySubscribe"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_SUBSCRIBE:Ljava/lang/String;

    .line 106
    const-string v0, "payNet"

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_NET:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    .line 41
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    .line 42
    iput-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->serviceBinded:Z

    .line 43
    iput-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    .line 47
    iput-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z

    .line 49
    const-string v0, "TencentUnipaySDK"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    .line 50
    const-string v0, "wsj_js_bridge_"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->MIDAS_JS_TAG:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Message:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->webView:Landroid/webkit/WebView;

    .line 57
    iput-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isLaunchWeb:Z

    .line 60
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .line 61
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    .line 62
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    .line 77
    iput-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    .line 78
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    .line 79
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    .line 86
    iput-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    .line 87
    iput-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    .line 95
    iput-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isUIInterface:Z

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    .line 109
    const-string v0, "-1001"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_VESION_NOT_SUPPORT:Ljava/lang/String;

    .line 110
    const-string v0, "-1002"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_NETWORK_SYSTEM:Ljava/lang/String;

    .line 111
    const-string v0, "1018"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_LOGINOUT:Ljava/lang/String;

    .line 112
    const-string v0, "2"

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_USER_CANCEL:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    .line 235
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;

    invoke-direct {v0, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayServiceConection:Landroid/content/ServiceConnection;

    .line 631
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;

    invoke-direct {v0, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    .line 1135
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;

    invoke-direct {v0, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5ServiceCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 123
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    .line 126
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$4;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayPreLaunchPay:Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;

    .line 139
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;

    invoke-direct {v0, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 161
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;

    invoke-direct {v0, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    .line 193
    return-void
.end method

.method private LaunchWeb(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V
    .registers 9
    .param p1, "request"    # Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .param p2, "callBack"    # Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 375
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    .line 376
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isUIInterface:Z

    .line 377
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isLaunchWeb:Z

    .line 378
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    .line 379
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .line 380
    iput-object p2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    .line 381
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkUnipayAPP()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 383
    invoke-direct {p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkLaunchRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 385
    if-nez p2, :cond_28

    .line 387
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    const-string v3, "\u56de\u8c03\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 420
    :cond_27
    :goto_27
    return-void

    .line 391
    :cond_28
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->serviceBinded:Z

    if-eqz v2, :cond_30

    .line 393
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->startWeb()V

    goto :goto_27

    .line 397
    :cond_30
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->bindUnipayService()V

    goto :goto_27

    .line 405
    :cond_34
    :try_start_34
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    if-nez v2, :cond_27

    .line 406
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 409
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 411
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    .line 413
    const-string v2, "BroadCast"

    const-string v3, "BroadCast registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5e} :catch_5f

    goto :goto_27

    .line 415
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_5f
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "registerReceiver error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    goto :goto_27
.end method

.method private LaunchWithUI()V
    .registers 9

    .prologue
    .line 1241
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LaunchWithUi"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :try_start_18
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    sget-object v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/tencent/unipay/plug/IUnipayService;->setEnv(Ljava/lang/String;)V

    .line 1245
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z

    invoke-interface {v3, v4}, Lcom/tencent/unipay/plug/IUnipayService;->setLogEnable(Z)V

    .line 1247
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget-object v3, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget v3, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    if-lez v3, :cond_5b

    .line 1250
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1251
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget v4, v4, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    .line 1249
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1252
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_56

    .line 1253
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1254
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1255
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    .line 1257
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_56
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    const/4 v4, 0x0

    iput v4, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    .line 1260
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_5b
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payCallBack is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v3, v3, Lcom/tencent/unipay/request/UnipayGameRequest;

    if-eqz v3, :cond_83

    .line 1263
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    .line 1264
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v3, Lcom/tencent/unipay/request/UnipayGameRequest;

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 1263
    invoke-interface {v4, v3, v5}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayLaunchGamePay(Lcom/tencent/unipay/request/UnipayGameRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 1292
    :cond_82
    :goto_82
    return-void

    .line 1266
    :cond_83
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v3, v3, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    if-eqz v3, :cond_9a

    .line 1268
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    .line 1269
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v3, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 1268
    invoke-interface {v4, v3, v5}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayLaunchGoodsPay(Lcom/tencent/unipay/request/UnipayGoodsRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_94} :catch_95

    goto :goto_82

    .line 1288
    :catch_95
    move-exception v2

    .line 1290
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_82

    .line 1271
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_9a
    :try_start_9a
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v3, v3, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    if-eqz v3, :cond_ac

    .line 1273
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    .line 1274
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v3, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 1273
    invoke-interface {v4, v3, v5}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayLaunchSubscribeRequest(Lcom/tencent/unipay/request/UnipaySubscribeRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    goto :goto_82

    .line 1276
    :cond_ac
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v3, v3, Lcom/tencent/unipay/request/UnipayMonthRequest;

    if-eqz v3, :cond_be

    .line 1278
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    .line 1279
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v3, Lcom/tencent/unipay/request/UnipayMonthRequest;

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    .line 1278
    invoke-interface {v4, v3, v5}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayLaunchMonthRequest(Lcom/tencent/unipay/request/UnipayMonthRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    goto :goto_82

    .line 1281
    :cond_be
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v3, v3, Lcom/tencent/unipay/request/UnipayNetRequest;

    if-eqz v3, :cond_82

    .line 1283
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payNetCallBack is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    .line 1285
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v3, Lcom/tencent/unipay/request/UnipayNetRequest;

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    .line 1284
    invoke-interface {v4, v3, v5}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayLaunchNetRequest(Lcom/tencent/unipay/request/UnipayNetRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_e5} :catch_95

    goto :goto_82
.end method

.method static synthetic access$0(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V
    .registers 2

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Lcom/tencent/unipay/request/UnipayPayBaseRequest;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    return-void
.end method

.method static synthetic access$10(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    return v0
.end method

.method static synthetic access$11(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isLaunchWeb:Z

    return v0
.end method

.method static synthetic access$12(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    .registers 1

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->startWeb()V

    return-void
.end method

.method static synthetic access$13(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    .registers 1

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->startPay()V

    return-void
.end method

.method static synthetic access$14(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    return v0
.end method

.method static synthetic access$15(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    .registers 1

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->webviewLoadUrl()V

    return-void
.end method

.method static synthetic access$16(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    return-object v0
.end method

.method static synthetic access$18(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$19(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_LOGINOUT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    return-void
.end method

.method static synthetic access$20(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1181
    invoke-direct {p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    .registers 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V

    return-void
.end method

.method static synthetic access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    return-object v0
.end method

.method static synthetic access$23(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_USER_CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_NETWORK_SYSTEM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->serviceBinded:Z

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V
    .registers 2

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Lcom/tencent/unipay/plug/IUnipayService;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plug/IUnipayService;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z

    return v0
.end method

.method static synthetic access$9()Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayPreLaunchPay:Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;

    return-object v0
.end method

.method private bindUnipayService()V
    .registers 6

    .prologue
    .line 198
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "bindUnipayService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.tencen.unipay.plug.UnipayPulgService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "com.tencent.unipay"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayServiceConection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    const-string v2, "BroadCast"

    const-string v3, "has registered and connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    .line 216
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_25
    return-void

    .line 211
    :catch_26
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "sdk"

    const-string v3, "bindUnipayService error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private callBack(Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1183
    const-string v0, ""

    .line 1186
    .local v0, "callBackInfo":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Message:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "__callback_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:(window.MidasJSBridge && window.MidasJSBridge._handleMsgFromMidas({\'__msg_type\':\'callback\',\'__callback_id\':\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    const-string v4, "__callback_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\'params\':"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    :cond_3c
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_42

    .line 1198
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_41
    return-void

    .line 1194
    :catch_42
    move-exception v1

    .line 1196
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private checkLaunchRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;)Z
    .registers 5
    .param p1, "request"    # Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .prologue
    const/4 v0, 0x0

    .line 622
    if-nez p1, :cond_f

    .line 624
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    const-string v2, "\u8bf7\u6c42\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 627
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private checkUnipayAPP()Z
    .registers 3

    .prologue
    .line 615
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;-><init>(Landroid/content/Context;)V

    .line 616
    .local v0, "unipayTools":Lcom/tencent/unipay/plugsdk/UnipayPlugTools;
    invoke-virtual {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->setUrlForTest()V

    .line 617
    invoke-virtual {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->checkUnipayAPP()Z

    move-result v1

    return v1
.end method

.method private getInfoWithoutUI()V
    .registers 6

    .prologue
    .line 1298
    :try_start_0
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/unipay/plug/IUnipayService;->setEnv(Ljava/lang/String;)V

    .line 1299
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z

    invoke-interface {v1, v2}, Lcom/tencent/unipay/plug/IUnipayService;->setLogEnable(Z)V

    .line 1301
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v1, v1, Lcom/tencent/unipay/request/UnipayGameRequest;

    if-eqz v1, :cond_22

    .line 1303
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v1, Lcom/tencent/unipay/request/UnipayGameRequest;

    sget-object v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/unipay/plug/IUnipayService;->GameGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayGameRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 1322
    :cond_21
    :goto_21
    return-void

    .line 1305
    :cond_22
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v1, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    if-eqz v1, :cond_3b

    .line 1307
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    sget-object v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/unipay/plug/IUnipayService;->GoodsGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayGoodsRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_21

    .line 1318
    :catch_36
    move-exception v0

    .line 1320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21

    .line 1309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v1, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;

    if-eqz v1, :cond_4f

    .line 1311
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v1, Lcom/tencent/unipay/request/UnipayMonthRequest;

    sget-object v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/unipay/plug/IUnipayService;->MonthGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayMonthRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    goto :goto_21

    .line 1313
    :cond_4f
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    instance-of v1, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    if-eqz v1, :cond_21

    .line 1315
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    check-cast v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    sget-object v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;

    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/unipay/plug/IUnipayService;->SubscribeGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipaySubscribeRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_62} :catch_36

    goto :goto_21
.end method

.method private getVersion()V
    .registers 2

    .prologue
    .line 1178
    const-string v0, "{\'resultCode\':\'0\',\'version\':\'2.3.9g\',\'resultMsg\':\'\'}"

    invoke-direct {p0, v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V

    .line 1179
    return-void
.end method

.method private params(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "jsonobj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 653
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    .line 654
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    .line 655
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    .line 656
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    .line 657
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    .line 658
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    .line 659
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    .line 660
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    .line 661
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    .line 662
    iput-boolean v7, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    .line 663
    iput v8, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    .line 664
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    .line 665
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    .line 666
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    .line 667
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    .line 668
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    .line 669
    iput-boolean v7, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    .line 670
    iput-boolean v7, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    .line 671
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    .line 672
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    .line 673
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    .line 674
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    .line 675
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    .line 676
    const-string v6, ""

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    .line 679
    :try_start_59
    const-string v6, "offerId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 681
    const-string v6, "offerId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    .line 683
    :cond_69
    const-string v6, "openId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 685
    const-string v6, "openId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    .line 687
    :cond_79
    const-string v6, "openKey"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 689
    const-string v6, "openKey"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    .line 691
    :cond_89
    const-string v6, "sessionId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 693
    const-string v6, "sessionId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    .line 695
    :cond_99
    const-string v6, "sessionType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 697
    const-string v6, "sessionType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    .line 699
    :cond_a9
    const-string v6, "zoneId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 701
    const-string v6, "zoneId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    .line 703
    :cond_b9
    const-string v6, "pf"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 705
    const-string v6, "pf"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    .line 707
    :cond_c9
    const-string v6, "pfKey"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 709
    const-string v6, "pfKey"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    .line 711
    :cond_d9
    const-string v6, "saveValue"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 713
    const-string v6, "saveValue"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    .line 715
    :cond_e9
    const-string v6, "isCanChange"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 717
    const-string v6, "isCanChange"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    .line 719
    :cond_f9
    const-string v6, "resId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 721
    const-string v6, "resId in parse"

    const-string v7, "jsonobj has resId"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_108} :catch_281

    .line 723
    :try_start_108
    const-string v6, "resId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I
    :try_end_110
    .catch Lorg/json/JSONException; {:try_start_108 .. :try_end_110} :catch_24a
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_110} :catch_281

    .line 732
    :cond_110
    :goto_110
    :try_start_110
    const-string v6, "in parse js resId is "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 735
    iget v7, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    .line 733
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 736
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 737
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 738
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    .line 739
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    .line 741
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_145
    const-string v6, "resData"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_179

    .line 743
    const-string v6, "resData"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, "sResData":Ljava/lang/String;
    const-string v6, "resData in parseJson "

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_179

    .line 747
    invoke-static {v5}, Lcom/tencent/unipay/plugsdk/APBase64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 748
    .local v2, "data":[B
    if-eqz v2, :cond_167

    array-length v6, v2

    if-nez v6, :cond_16e

    .line 749
    :cond_167
    const-string v6, "DataRes"

    const-string v7, "is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_16e
    iput-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    .line 752
    const-string v6, "DataRes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v2    # "data":[B
    .end local v5    # "sResData":Ljava/lang/String;
    :cond_179
    const-string v6, "acctType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_189

    .line 757
    const-string v6, "acctType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    .line 759
    :cond_189
    const-string v6, "reserv"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_199

    .line 761
    const-string v6, "reserv"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    .line 763
    :cond_199
    const-string v6, "mallType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a9

    .line 765
    const-string v6, "mallType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    .line 767
    :cond_1a9
    const-string v6, "h5Url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    .line 769
    const-string v6, "h5Url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    .line 771
    :cond_1b9
    const-string v6, "unit"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c9

    .line 773
    const-string v6, "unit"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    .line 775
    :cond_1c9
    const-string v6, "isShowNum"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d9

    .line 777
    const-string v6, "isShowNum"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    .line 779
    :cond_1d9
    const-string v6, "isShowListOtherNum"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e9

    .line 781
    const-string v6, "isShowListOtherNum"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    .line 783
    :cond_1e9
    const-string v6, "payChannel"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f9

    .line 785
    const-string v6, "payChannel"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    .line 787
    :cond_1f9
    const-string v6, "discountType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_209

    .line 789
    const-string v6, "discountType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    .line 791
    :cond_209
    const-string v6, "discountUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_219

    .line 793
    const-string v6, "discountUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    .line 795
    :cond_219
    const-string v6, "drmInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_229

    .line 797
    const-string v6, "drmInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    .line 799
    :cond_229
    const-string v6, "discoutId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_239

    .line 801
    const-string v6, "discoutId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    .line 803
    :cond_239
    const-string v6, "extras"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_249

    .line 805
    const-string v6, "extras"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    .line 812
    :cond_249
    :goto_249
    return-void

    .line 724
    :catch_24a
    move-exception v3

    .line 725
    .local v3, "e":Lorg/json/JSONException;
    const-string v6, "resId is string"

    const-string v7, "resId"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v6, "resId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "resStr":Ljava/lang/String;
    if-eqz v4, :cond_110

    const-string v6, "0x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26e

    const-string v6, "0X"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 729
    :cond_26e
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_27f} :catch_281

    goto/16 :goto_110

    .line 808
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "resStr":Ljava/lang/String;
    :catch_281
    move-exception v3

    .line 810
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_249
.end method

.method private payGame(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 815
    new-instance v0, Lcom/tencent/unipay/request/UnipayGameRequest;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayGameRequest;-><init>()V

    .line 816
    .local v0, "request":Lcom/tencent/unipay/request/UnipayGameRequest;
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->offerId:Ljava/lang/String;

    .line 817
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->openId:Ljava/lang/String;

    .line 818
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    .line 819
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    .line 821
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    .line 822
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->pf:Ljava/lang/String;

    .line 823
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->pfKey:Ljava/lang/String;

    .line 824
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->acctType:Ljava/lang/String;

    .line 825
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->saveValue:Ljava/lang/String;

    .line 826
    iget-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    iput-boolean v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->isCanChange:Z

    .line 827
    iget v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    iput v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->resId:I

    .line 828
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->resData:[B

    .line 829
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->reserv:Ljava/lang/String;

    .line 830
    iget v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    iput v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mallType:I

    .line 831
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->h5Url:Ljava/lang/String;

    .line 834
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 835
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 836
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 839
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 840
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 841
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 842
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 843
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 844
    iget-object v1, v0, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 845
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5ServiceCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 846
    return-void
.end method

.method private payGoods(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 854
    new-instance v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipayGoodsRequest;-><init>()V

    .line 855
    .local v1, "request":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->offerId:Ljava/lang/String;

    .line 856
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->openId:Ljava/lang/String;

    .line 857
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->openKey:Ljava/lang/String;

    .line 858
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->sessionId:Ljava/lang/String;

    .line 859
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->sessionType:Ljava/lang/String;

    .line 860
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->zoneId:Ljava/lang/String;

    .line 861
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->pf:Ljava/lang/String;

    .line 862
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->pfKey:Ljava/lang/String;

    .line 863
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->acctType:Ljava/lang/String;

    .line 864
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->saveValue:Ljava/lang/String;

    .line 865
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->isCanChange:Z

    .line 866
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->resId:I

    .line 867
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->resData:[B

    .line 868
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->reserv:Ljava/lang/String;

    .line 869
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mallType:I

    .line 870
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->h5Url:Ljava/lang/String;

    .line 875
    :try_start_45
    const-string v2, "goodsTokenUrl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 877
    const-string v2, "goodsTokenUrl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 879
    :cond_55
    const-string v2, "prodcutId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 881
    const-string v2, "prodcutId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 883
    :cond_65
    const-string v2, "tokenType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 885
    const-string v2, "tokenType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->tokenType:I
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_75} :catch_b1

    .line 894
    :cond_75
    :goto_75
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 895
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 896
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 897
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 898
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 899
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 900
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 901
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 902
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 903
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5ServiceCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 904
    return-void

    .line 888
    :catch_b1
    move-exception v0

    .line 890
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_75
.end method

.method private payMonth(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 912
    new-instance v1, Lcom/tencent/unipay/request/UnipayMonthRequest;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipayMonthRequest;-><init>()V

    .line 913
    .local v1, "request":Lcom/tencent/unipay/request/UnipayMonthRequest;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->offerId:Ljava/lang/String;

    .line 914
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->openId:Ljava/lang/String;

    .line 915
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->openKey:Ljava/lang/String;

    .line 916
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->sessionId:Ljava/lang/String;

    .line 917
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->sessionType:Ljava/lang/String;

    .line 918
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->zoneId:Ljava/lang/String;

    .line 919
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->pf:Ljava/lang/String;

    .line 920
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->pfKey:Ljava/lang/String;

    .line 921
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->acctType:Ljava/lang/String;

    .line 922
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->saveValue:Ljava/lang/String;

    .line 923
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->isCanChange:Z

    .line 924
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->resId:I

    .line 925
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->resData:[B

    .line 926
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->reserv:Ljava/lang/String;

    .line 927
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mallType:I

    .line 928
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->h5Url:Ljava/lang/String;

    .line 933
    :try_start_45
    const-string v2, "autoPay"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 935
    const-string v2, "autoPay"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->autoPay:Z

    .line 937
    :cond_55
    const-string v2, "remark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 939
    const-string v2, "remark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->remark:Ljava/lang/String;

    .line 941
    :cond_65
    const-string v2, "serviceCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 943
    const-string v2, "serviceCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceCode:Ljava/lang/String;

    .line 945
    :cond_75
    const-string v2, "serviceName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 947
    const-string v2, "serviceName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceName:Ljava/lang/String;

    .line 949
    :cond_85
    const-string v2, "serviceType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 951
    const-string v2, "serviceType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceType:I
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_95} :catch_d1

    .line 960
    :cond_95
    :goto_95
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 961
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 962
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 965
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 966
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 967
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 968
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 969
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 970
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 971
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5ServiceCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 972
    return-void

    .line 954
    :catch_d1
    move-exception v0

    .line 956
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_95
.end method

.method private payNet(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonobj"    # Lorg/json/JSONObject;

    .prologue
    .line 1052
    new-instance v1, Lcom/tencent/unipay/request/UnipayNetRequest;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipayNetRequest;-><init>()V

    .line 1053
    .local v1, "request":Lcom/tencent/unipay/request/UnipayNetRequest;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->offerId:Ljava/lang/String;

    .line 1054
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->openId:Ljava/lang/String;

    .line 1055
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->openKey:Ljava/lang/String;

    .line 1056
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->sessionId:Ljava/lang/String;

    .line 1057
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->sessionType:Ljava/lang/String;

    .line 1058
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->zoneId:Ljava/lang/String;

    .line 1059
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->pf:Ljava/lang/String;

    .line 1060
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->pfKey:Ljava/lang/String;

    .line 1061
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->acctType:Ljava/lang/String;

    .line 1062
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->saveValue:Ljava/lang/String;

    .line 1063
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->isCanChange:Z

    .line 1064
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->resId:I

    .line 1065
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->resData:[B

    .line 1066
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->reserv:Ljava/lang/String;

    .line 1067
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mallType:I

    .line 1068
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->h5Url:Ljava/lang/String;

    .line 1073
    :try_start_45
    const-string v2, "reqType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1075
    const-string v2, "reqType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->reqType:Ljava/lang/String;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_55} :catch_94

    .line 1084
    :cond_55
    :goto_55
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 1085
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 1086
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 1089
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 1090
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 1091
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 1092
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 1093
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 1094
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 1095
    new-instance v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;

    invoke-direct {v2, p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;-><init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    invoke-virtual {p0, v1, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchNetRequest(Lcom/tencent/unipay/request/UnipayNetRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 1133
    return-void

    .line 1078
    :catch_94
    move-exception v0

    .line 1080
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_55
.end method

.method private paySubscribe(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 980
    new-instance v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipaySubscribeRequest;-><init>()V

    .line 981
    .local v1, "request":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->offerId:Ljava/lang/String;

    .line 982
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->openId:Ljava/lang/String;

    .line 983
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->openKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->openKey:Ljava/lang/String;

    .line 984
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->sessionId:Ljava/lang/String;

    .line 985
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->sessionType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->sessionType:Ljava/lang/String;

    .line 986
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->zoneId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->zoneId:Ljava/lang/String;

    .line 987
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pf:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->pf:Ljava/lang/String;

    .line 988
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->pfKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->pfKey:Ljava/lang/String;

    .line 989
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->acctType:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->acctType:Ljava/lang/String;

    .line 990
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->saveValue:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->saveValue:Ljava/lang/String;

    .line 991
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isCanChange:Z

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->isCanChange:Z

    .line 992
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resId:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->resId:I

    .line 993
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->resData:[B

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->resData:[B

    .line 994
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reserv:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->reserv:Ljava/lang/String;

    .line 995
    iget v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->mallType:I

    iput v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mallType:I

    .line 996
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Url:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->h5Url:Ljava/lang/String;

    .line 1001
    :try_start_45
    const-string v2, "autoPay"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1003
    const-string v2, "autoPay"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->autoPay:Z

    .line 1005
    :cond_55
    const-string v2, "remark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1007
    const-string v2, "remark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->remark:Ljava/lang/String;

    .line 1009
    :cond_65
    const-string v2, "serviceCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1011
    const-string v2, "serviceCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceCode:Ljava/lang/String;

    .line 1013
    :cond_75
    const-string v2, "serviceName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1015
    const-string v2, "serviceName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceName:Ljava/lang/String;

    .line 1017
    :cond_85
    const-string v2, "serviceType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1019
    const-string v2, "serviceType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceType:I

    .line 1021
    :cond_95
    const-string v2, "productId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1023
    const-string v2, "productId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->productId:Ljava/lang/String;
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_a5} :catch_e1

    .line 1032
    :cond_a5
    :goto_a5
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unit:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 1033
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 1034
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isShowListOtherNum:Z

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 1037
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payChannel:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 1038
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountType:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 1039
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discountUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 1040
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->discoutId:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 1041
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->drmInfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 1042
    iget-object v2, v1, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->extras:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 1043
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5ServiceCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 1044
    return-void

    .line 1026
    :catch_e1
    move-exception v0

    .line 1028
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a5
.end method

.method private startPay()V
    .registers 2

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isUIInterface:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1231
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->getInfoWithoutUI()V

    .line 1237
    :goto_13
    return-void

    .line 1235
    :cond_14
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchWithUI()V

    goto :goto_13
.end method

.method private startWeb()V
    .registers 7

    .prologue
    .line 1203
    :try_start_0
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    sget-object v4, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/tencent/unipay/plug/IUnipayService;->setEnv(Ljava/lang/String;)V

    .line 1204
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z

    invoke-interface {v3, v4}, Lcom/tencent/unipay/plug/IUnipayService;->setLogEnable(Z)V

    .line 1206
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget-object v3, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget v3, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    if-lez v3, :cond_43

    .line 1209
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1210
    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget v4, v4, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    .line 1208
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1211
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3e

    .line 1212
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1213
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1214
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    .line 1216
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3e
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    const/4 v4, 0x0

    iput v4, v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    .line 1218
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_43
    const-string v3, "TencentPay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "final in SDK"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    iget-object v5, v5, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->offerId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    iget-object v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    sget-object v5, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;

    invoke-interface {v3, v4, v5}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayLaunchWebRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_64} :catch_65

    .line 1225
    :goto_64
    return-void

    .line 1221
    :catch_65
    move-exception v2

    .line 1223
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_64
.end method

.method private toPay(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 569
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_VERSION:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 571
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->getVersion()V

    .line 612
    :goto_b
    return-void

    .line 573
    :cond_c
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_GAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 575
    invoke-direct {p0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payGame(Lorg/json/JSONObject;)V

    goto :goto_b

    .line 578
    :cond_18
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_GOODS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 580
    invoke-direct {p0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payGoods(Lorg/json/JSONObject;)V

    goto :goto_b

    .line 583
    :cond_24
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_SUBSCRIBE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 585
    invoke-direct {p0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->paySubscribe(Lorg/json/JSONObject;)V

    goto :goto_b

    .line 588
    :cond_30
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_MONTH:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 590
    invoke-direct {p0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payMonth(Lorg/json/JSONObject;)V

    goto :goto_b

    .line 593
    :cond_3c
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->FUNC_NET:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 595
    invoke-direct {p0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNet(Lorg/json/JSONObject;)V

    goto :goto_b

    .line 600
    :cond_48
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 603
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_4d
    const-string v2, "resultCode"

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_VESION_NOT_SUPPORT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string v2, "resultMsg"

    const-string v3, "version not support"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_5b} :catch_63

    .line 610
    :goto_5b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V

    goto :goto_b

    .line 606
    :catch_63
    move-exception v0

    .line 608
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5b
.end method

.method private unbindUnipayService()V
    .registers 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "unbindUnipayService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :try_start_7
    iget-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    if-eqz v1, :cond_12

    .line 224
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    :cond_12
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayServiceConection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    .line 233
    :goto_19
    return-void

    .line 227
    :catch_1a
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private webviewLoadUrl()V
    .registers 6

    .prologue
    .line 528
    :try_start_0
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;

    invoke-interface {v2}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayH5PayInit()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "jsContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 530
    const-string v2, "webView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load js in init "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_32

    .line 536
    .end local v1    # "jsContent":Ljava/lang/String;
    :goto_2e
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V

    .line 537
    return-void

    .line 532
    :catch_32
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2e
.end method


# virtual methods
.method public LaunchNetRequest(Lcom/tencent/unipay/request/UnipayNetRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V
    .registers 9
    .param p1, "request"    # Lcom/tencent/unipay/request/UnipayNetRequest;
    .param p2, "callBack"    # Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 424
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    .line 425
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isUIInterface:Z

    .line 426
    iput-object p2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    .line 427
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkUnipayAPP()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 429
    invoke-direct {p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkLaunchRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 431
    if-nez p2, :cond_22

    .line 433
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    const-string v3, "\u56de\u8c03\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 461
    :cond_21
    :goto_21
    return-void

    .line 438
    :cond_22
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    .line 439
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .line 440
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->bindUnipayService()V

    goto :goto_21

    .line 448
    :cond_2a
    :try_start_2a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 451
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 453
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    .line 455
    const-string v2, "BroadCast"

    const-string v3, "BroadCast registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_50} :catch_51

    goto :goto_21

    .line 456
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_51
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "registerReceiver error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    goto :goto_21
.end method

.method public LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V
    .registers 9
    .param p1, "request"    # Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .param p2, "callBack"    # Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 326
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    .line 327
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isUIInterface:Z

    .line 328
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isLaunchWeb:Z

    .line 329
    iput-object p2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    .line 330
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    .line 331
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .line 333
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkUnipayAPP()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 335
    invoke-direct {p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkLaunchRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 337
    if-nez p2, :cond_28

    .line 339
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->ApplicationContext:Landroid/content/Context;

    const-string v3, "\u56de\u8c03\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 371
    :cond_27
    :goto_27
    return-void

    .line 343
    :cond_28
    iget-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->serviceBinded:Z

    if-eqz v2, :cond_30

    .line 345
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->startPay()V

    goto :goto_27

    .line 349
    :cond_30
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->bindUnipayService()V

    goto :goto_27

    .line 358
    :cond_34
    :try_start_34
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 361
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 363
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    .line 365
    const-string v2, "BroadCast"

    const-string v3, "BroadCast registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5a} :catch_5b

    goto :goto_27

    .line 366
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_5b
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "registerReceiver error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-boolean v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    goto :goto_27
.end method

.method public UnipayH5PayHook(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)I
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "jsResult"    # Landroid/webkit/JsResult;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkUnipayAPP()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 543
    const-string v3, ""

    .line 544
    .local v3, "h5Msg":Ljava/lang/String;
    if-eqz p4, :cond_4c

    iget-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->MIDAS_JS_TAG:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 546
    iget-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->MIDAS_JS_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 549
    :try_start_20
    iget-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->MIDAS_JS_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->h5Message:Ljava/lang/String;

    .line 550
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v6, "func"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "func":Ljava/lang/String;
    const-string v6, "params"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "params":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 554
    .local v5, "paramsJson":Lorg/json/JSONObject;
    invoke-direct {p0, v5}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->params(Lorg/json/JSONObject;)V

    .line 555
    invoke-direct {p0, v2, v5}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->toPay(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_4c} :catch_4e

    .line 560
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "func":Ljava/lang/String;
    .end local v4    # "params":Ljava/lang/String;
    .end local v5    # "paramsJson":Lorg/json/JSONObject;
    :cond_4c
    :goto_4c
    const/4 v6, -0x2

    .line 564
    .end local v3    # "h5Msg":Ljava/lang/String;
    :goto_4d
    return v6

    .line 556
    .restart local v3    # "h5Msg":Ljava/lang/String;
    :catch_4e
    move-exception v1

    .line 557
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4c

    .line 564
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "h5Msg":Ljava/lang/String;
    :cond_53
    const/4 v6, -0x1

    goto :goto_4d
.end method

.method public getInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V
    .registers 9
    .param p1, "reqtype"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .param p3, "callBack"    # Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 465
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    .line 466
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isUIInterface:Z

    .line 467
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->reqType:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    .line 469
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkUnipayAPP()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 471
    invoke-direct {p0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkLaunchRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 473
    if-nez p3, :cond_20

    .line 475
    const-string v2, "TencentPay"

    const-string v3, "callBack \u4e3a\u7a7a"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1f
    :goto_1f
    return-void

    .line 479
    :cond_20
    iput-boolean v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z

    .line 480
    iput-object p2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .line 481
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->bindUnipayService()V

    goto :goto_1f

    .line 489
    :cond_28
    :try_start_28
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 490
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 492
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 494
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    .line 496
    const-string v2, "BroadCast"

    const-string v3, "BroadCast registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4e} :catch_4f

    goto :goto_1f

    .line 497
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_4f
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "registerReceiver error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iput-boolean v4, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->hasRegistered:Z

    goto :goto_1f
.end method

.method public getUnipayPlugVersion()Ljava/lang/String;
    .registers 8

    .prologue
    .line 308
    const-string v3, ""

    .line 311
    .local v3, "version":Ljava/lang/String;
    :try_start_2
    iget-object v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 312
    .local v2, "manager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 313
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-object v4, v3

    .line 320
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "version":Ljava/lang/String;
    .local v4, "version":Ljava/lang/String;
    :goto_16
    return-object v4

    .line 316
    .end local v4    # "version":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 320
    .end local v3    # "version":Ljava/lang/String;
    .restart local v4    # "version":Ljava/lang/String;
    goto :goto_16
.end method

.method public setEnv(Ljava/lang/String;)V
    .registers 2
    .param p1, "env"    # Ljava/lang/String;

    .prologue
    .line 296
    sput-object p1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setLogEnable(Z)V
    .registers 2
    .param p1, "logEnable"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z

    .line 303
    return-void
.end method

.method public setOfferId(Ljava/lang/String;)V
    .registers 2
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->offerId:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public unipayH5Init(Landroid/app/Activity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->checkUnipayAPP()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 508
    iput-object p2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->webView:Landroid/webkit/WebView;

    .line 511
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z

    .line 512
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->bindUnipayService()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 520
    .end local p2    # "view":Landroid/webkit/WebView;
    :goto_e
    return-object p2

    .line 515
    .restart local p2    # "view":Landroid/webkit/WebView;
    :catch_f
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UnipaySDK "

    const-string v2, "h5 init error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 p2, 0x0

    goto :goto_e
.end method
