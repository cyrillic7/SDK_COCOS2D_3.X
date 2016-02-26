.class public Lcom/baidu/paysdk/api/BaiduPay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;
    }
.end annotation


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "pay_amount"

.field public static final CASHIER_TYPE:Ljava/lang/String; = "cashier_type"

.field public static final CASHIER_TYPE_LOGIN:Ljava/lang/String; = "0"

.field public static final CASHIER_TYPE_NOLOGIN:Ljava/lang/String; = "1"

.field public static final PAY_FROM:Ljava/lang/String; = "pay_from"

.field public static final PAY_FROM_BALANCE_CHARGE:Ljava/lang/String; = "pay_from_balance_charge"

.field public static final PAY_FROM_HUA_FEI:Ljava/lang/String; = "pay_from_huafei"

.field public static final PAY_FROM_HUA_ZHUAN_ZHANG:Ljava/lang/String; = "pay_from_zhuanzhang"

.field public static final TOKEN_VALUE_KEY:Ljava/lang/String; = "tokenValue"

.field public static final USER_TYPE_KEY:Ljava/lang/String; = "userType"

.field private static c:Lcom/baidu/paysdk/api/BaiduPay;

.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/android/pay/PayCallBack;

.field private b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/paysdk/api/BaiduPay;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/api/BaiduPay;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/PayRequest;)V
    .registers 12

    const/4 v5, 0x0

    iput-object p3, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz p4, :cond_83

    const-string v0, "userType"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tokenValue"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_83

    :try_start_20
    new-instance v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_30} :catch_72

    move-object v0, v2

    :goto_31
    if-eqz v0, :cond_3a

    invoke-static {p1, v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPay. order info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    invoke-virtual {p5}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/WelcomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_7d

    check-cast p1, Landroid/app/Activity;

    const v1, 0xa008

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_71
    return-void

    :catch_72
    move-exception v0

    new-instance v0, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V

    goto :goto_31

    :cond_7d
    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithoutAnim(Landroid/content/Intent;)V

    goto :goto_71

    :cond_83
    move-object v0, v2

    goto :goto_31
.end method

.method static synthetic a(Lcom/baidu/paysdk/api/BaiduPay;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/PayRequest;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/baidu/paysdk/api/BaiduPay;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/PayRequest;)V

    return-void
.end method

.method public static getInstance()Lcom/baidu/paysdk/api/BaiduPay;
    .registers 2

    sget-object v1, Lcom/baidu/paysdk/api/BaiduPay;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/paysdk/api/BaiduPay;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/paysdk/api/BaiduPay;

    invoke-direct {v0}, Lcom/baidu/paysdk/api/BaiduPay;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/paysdk/api/BaiduPay;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/baidu/paysdk/api/BaiduPay;->c:Lcom/baidu/paysdk/api/BaiduPay;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public clearBindCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    return-void
.end method

.method public clearPayBack()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    return-void
.end method

.method public doBindCard(Landroid/content/Context;Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;)V
    .registers 6

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    if-nez p1, :cond_b

    const-string v0, ""

    invoke-interface {p2, v0}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeFailed(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iput-object p2, p0, Lcom/baidu/paysdk/api/BaiduPay;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 12

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsOwnLogin(Z)V

    const-string v0, "pay_from"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-direct {v5}, Lcom/baidu/paysdk/datamodel/PayRequest;-><init>()V

    invoke-virtual {v5, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setPayFrom(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Lcom/baidu/paysdk/datamodel/PayRequest;->initOrder(Ljava/lang/String;)V

    const-string v1, "pay_from_balance_charge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "pay_amount"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->initBalanceChargeOrder(Ljava/lang/String;)V

    :goto_2e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "init"

    const-string v2, "SP_NO"

    invoke-virtual {v5, p2, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/paysdk/login/Login;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/paysdk/login/Login;-><init>(Landroid/content/Context;)V

    const-string v1, "SP_REQUEST_TYPE"

    invoke-virtual {v5, p2, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->setSpRequestType(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/api/BaiduWallet;->initWallet(Lcom/baidu/wallet/api/IWalletListener;)V

    iput-object p3, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c4

    :cond_6a
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_b3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokenValue"

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/api/BaiduPay;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/PayRequest;)V

    :goto_ad
    return-void

    :cond_ae
    invoke-virtual {v5, p2}, Lcom/baidu/paysdk/datamodel/PayRequest;->initOrder(Ljava/lang/String;)V

    goto/16 :goto_2e

    :cond_b3
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v6

    new-instance v0, Lcom/baidu/paysdk/api/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/api/a;-><init>(Lcom/baidu/paysdk/api/BaiduPay;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Lcom/baidu/paysdk/datamodel/PayRequest;)V

    invoke-virtual {v6, v0}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_ad

    :cond_c4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "userType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokenValue"

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/api/BaiduPay;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/PayRequest;)V

    goto :goto_ad
.end method

.method public finish()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/paysdk/api/BaiduPay;->clearPayBack()V

    return-void
.end method

.method public getBindCallback()Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    return-object v0
.end method

.method public getPayBack()Lcom/baidu/android/pay/PayCallBack;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/api/BaiduPay;->a:Lcom/baidu/android/pay/PayCallBack;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    if-eqz p3, :cond_9

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/baidu/android/pay/InitCallBack;->onComplete(Z)V

    :cond_9
    const-string v1, "init"

    const-string v0, "sp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
