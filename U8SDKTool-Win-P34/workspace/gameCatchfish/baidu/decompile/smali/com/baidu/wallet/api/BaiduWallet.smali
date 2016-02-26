.class public final Lcom/baidu/wallet/api/BaiduWallet;
.super Ljava/lang/Object;


# static fields
.field public static final SERVICE_ID_BALANCE:J = 0x20L

.field public static final SERVICE_ID_COUPON:J = 0x40L

.field public static final SERVICE_ID_MY_BANK:J = 0x4L

.field public static final SERVICE_ID_PHONE_CHARGE:J = 0x1L

.field public static final SERVICE_ID_RECORD:J = 0x10L

.field public static final SERVICE_ID_SECURITY_CENETR:J = 0x8L

.field public static final SERVICE_ID_SUPER_TRANSFER:J = 0x2L

.field public static final SERVICE_ID_WALLET_SCORE:J = 0x80L

.field private static b:Lcom/baidu/wallet/api/BaiduWallet;


# instance fields
.field private a:Lcom/baidu/wallet/api/IWalletListener;

.field private c:Lcom/baidu/paysdk/api/BaiduPay;

.field private d:Lcom/baidu/wallet/a;

.field private e:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->getInstance()Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/api/BaiduWallet;Lcom/baidu/paysdk/api/BaiduPay;)Lcom/baidu/paysdk/api/BaiduPay;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    return-object p1
.end method

.method private a()Lcom/baidu/wallet/api/IWalletListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->e:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->getIWalletListener()Lcom/baidu/wallet/api/IWalletListener;

    move-result-object v0

    goto :goto_5
.end method

.method static synthetic a(Lcom/baidu/wallet/api/BaiduWallet;)Lcom/baidu/wallet/api/IWalletListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->initMTJForOnce(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/wallet/api/BaiduWallet;)Lcom/baidu/paysdk/api/BaiduPay;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginType()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->saveBdussOrToken(ILjava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    goto :goto_15
.end method

.method public static getInstance()Lcom/baidu/wallet/api/BaiduWallet;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/api/BaiduWallet;->b:Lcom/baidu/wallet/api/BaiduWallet;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/api/BaiduWallet;

    invoke-direct {v0}, Lcom/baidu/wallet/api/BaiduWallet;-><init>()V

    sput-object v0, Lcom/baidu/wallet/api/BaiduWallet;->b:Lcom/baidu/wallet/api/BaiduWallet;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/api/BaiduWallet;->b:Lcom/baidu/wallet/api/BaiduWallet;

    return-object v0
.end method


# virtual methods
.method public accessWalletCoupon(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->e(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public accessWalletService(Landroid/content/Context;JLjava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_13
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public accessWalletService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :try_start_6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/baidu/wallet/api/BaiduWallet;->accessWalletService(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public checkMyBankInfo(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->d(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public doBankcardDetection(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->f(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public doPay(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 7

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "xl"

    const-string v1, "already Logined!"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    :cond_1b
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/paysdk/api/BaiduPay;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    :goto_20
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void

    :cond_24
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/api/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/wallet/api/a;-><init>(Lcom/baidu/wallet/api/BaiduWallet;Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_20
.end method

.method public doWalletPhoneCharge(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public doWalletSuperTransfer(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public getBindCardAmount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->b(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    return-void
.end method

.method public getLoginData()Ljava/util/Map;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_b
    const-string v2, "getLoginData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_13} :catch_18

    move-result-object v0

    if-nez v0, :cond_1b

    move-object v0, v1

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    move-object v0, v1

    goto :goto_17

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_23} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_23} :catch_2e

    move-result-object v0

    :goto_24
    if-nez v0, :cond_31

    move-object v0, v1

    goto :goto_17

    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :cond_31
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_38

    check-cast v0, Ljava/util/Map;

    goto :goto_17

    :cond_38
    move-object v0, v1

    goto :goto_17
.end method

.method public getLoginToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "pass_bduss"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_24
    const-string v0, ""

    goto :goto_1c
.end method

.method public getLoginType()I
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "loginType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_21

    move-result v0

    :goto_20
    return v0

    :catch_21
    move-exception v0

    :cond_22
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->getLoginType()I

    move-result v0

    goto :goto_20

    :cond_29
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getWaitingRecvCount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public handlerWalletError(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/api/IWalletListener;->handlerWalletError(I)V

    :cond_9
    return-void
.end method

.method public hasNewBalance(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    :cond_a
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->c:Lcom/baidu/paysdk/api/BaiduPay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/paysdk/api/BaiduPay;->init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void
.end method

.method public initWallet()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/api/BaiduWallet;->a()Lcom/baidu/wallet/api/IWalletListener;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    new-instance v0, Lcom/baidu/wallet/api/c;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/api/c;-><init>(Lcom/baidu/wallet/api/BaiduWallet;)V

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/PassUtil;->registerPassNormalize(Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;)V

    return-void
.end method

.method public initWallet(Lcom/baidu/wallet/api/IWalletListener;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    new-instance v0, Lcom/baidu/wallet/api/b;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/api/b;-><init>(Lcom/baidu/wallet/api/BaiduWallet;)V

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/PassUtil;->registerPassNormalize(Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;)V

    return-void
.end method

.method public isLogin()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0}, Lcom/baidu/wallet/api/IWalletListener;->isLogin()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public login(Lcom/baidu/wallet/api/ILoginBackListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/api/IWalletListener;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/baidu/wallet/api/ILoginBackListener;->onFail(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public parseO2OBarcode(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    :try_start_6
    const-string v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_b} :catch_29

    move-result-object p2

    :goto_c
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.baidu.com/lightapp/3345414?page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/api/BaiduWallet;->startPage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_25
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_c

    :cond_2e
    const-string v0, "bd_wallet_o2o_error"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method public startBankDetection(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public startPage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p2}, Lcom/baidu/wallet/api/IWalletListener;->startPage(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "bd_wallet_load_fail"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public startWallet(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->a:Lcom/baidu/wallet/api/IWalletListener;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/baidu/wallet/a;->a()Lcom/baidu/wallet/a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    :cond_10
    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->b(Landroid/content/Context;)V

    sput-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWallet;->d:Lcom/baidu/wallet/a;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_5
.end method
