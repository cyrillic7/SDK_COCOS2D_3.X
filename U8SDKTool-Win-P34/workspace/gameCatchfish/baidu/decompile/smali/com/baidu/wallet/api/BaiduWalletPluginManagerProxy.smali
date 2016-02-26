.class public final Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;
    }
.end annotation


# static fields
.field public static final BAIDU_WALLET_PACKAGE_NAME:Ljava/lang/String; = "com.baidu.wallet"

.field public static final PLUGIN_CLASS_NAME:Ljava/lang/String; = "com.baidu.wallet.plugin.BaiduWalletPluginInterfaceImpl"

.field private static a:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;


# instance fields
.field private b:Lcom/baidu/android/pay/InitCallBack;

.field private c:Lcom/baidu/wallet/api/ILoginBackListener;

.field private d:Lcom/baidu/wallet/api/IWalletListener;

.field private e:Lcom/baidu/android/pay/PayCallBack;

.field private f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

.field private g:Ljava/util/Map;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "interface_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.baidu.wallet"

    const-string v3, "com.baidu.wallet.plugin.BaiduWalletPluginTempActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    if-nez v0, :cond_13

    const-class v1, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    invoke-direct {v0}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;-><init>()V

    sput-object v0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static releaseProxyInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a:Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;

    return-void
.end method


# virtual methods
.method public accessMyBankInfo(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessMyBankInfo:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public accessSecurityCenter(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessSecurityCenter:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public accessTransRecords(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessTransRecords:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public accessWalletBalance(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessWalletBalance:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public accessWalletService(Landroid/content/Context;JLjava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessWalletService:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v0}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    invoke-interface {v1, p1, v0}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V
    .registers 7

    if-eqz p1, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iput-object p2, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->e:Lcom/baidu/android/pay/PayCallBack;

    iput-object p4, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->i:Ljava/util/Map;

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->doPay:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_10
.end method

.method public doWalletPhoneCharge(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->doWalletPhoneCharge:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public doWalletSuperTransfer(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->doWalletSuperTransfer:Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v1}, Lcom/baidu/wallet/api/Constants$InterfaceId;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/baidu/wallet/api/BaiduWalletPluginListener;->startTempActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public getBaiduWalletPluginListener()Lcom/baidu/wallet/api/BaiduWalletPluginListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    return-object v0
.end method

.method public getBindCardAmount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;Lcom/baidu/wallet/api/BaiduWalletPluginInterface;)V
    .registers 5

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-eqz v0, :cond_a

    if-nez p3, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-interface {p3, p1, p2}, Lcom/baidu/wallet/api/BaiduWalletPluginInterface;->getBindCardAmount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    goto :goto_a
.end method

.method public getDoPayParam()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getILoginBackListener()Lcom/baidu/wallet/api/ILoginBackListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->c:Lcom/baidu/wallet/api/ILoginBackListener;

    return-object v0
.end method

.method public getIWalletListener()Lcom/baidu/wallet/api/IWalletListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->d:Lcom/baidu/wallet/api/IWalletListener;

    return-object v0
.end method

.method public getInitCallBack()Lcom/baidu/android/pay/InitCallBack;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->b:Lcom/baidu/android/pay/InitCallBack;

    return-object v0
.end method

.method public getInitCallBackParam()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getOrderInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCallBack()Lcom/baidu/android/pay/PayCallBack;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->e:Lcom/baidu/android/pay/PayCallBack;

    return-object v0
.end method

.method public getWaitingRecvCount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;Lcom/baidu/wallet/api/BaiduWalletPluginInterface;)V
    .registers 5

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-eqz v0, :cond_a

    if-nez p3, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-interface {p3, p1, p2}, Lcom/baidu/wallet/api/BaiduWalletPluginInterface;->getWaitingRecvCount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    goto :goto_a
.end method

.method public getWalletServiceList(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginInterface;)J
    .registers 5

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-eqz v0, :cond_8

    if-nez p2, :cond_b

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    invoke-interface {p2, p1}, Lcom/baidu/wallet/api/BaiduWalletPluginInterface;->getWalletServiceList(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_a
.end method

.method public hasNewBalance(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;Lcom/baidu/wallet/api/BaiduWalletPluginInterface;)V
    .registers 5

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-eqz v0, :cond_a

    if-nez p3, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-interface {p3, p1, p2}, Lcom/baidu/wallet/api/BaiduWalletPluginInterface;->hasNewBalance(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V

    goto :goto_a
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;Lcom/baidu/wallet/api/BaiduWalletPluginInterface;)V
    .registers 6

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-eqz v0, :cond_c

    if-nez p4, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput-object p2, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->g:Ljava/util/Map;

    iput-object p3, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->b:Lcom/baidu/android/pay/InitCallBack;

    invoke-interface {p4, p1, p2, p3}, Lcom/baidu/wallet/api/BaiduWalletPluginInterface;->init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V

    goto :goto_c
.end method

.method public initWallet(Landroid/content/Context;Lcom/baidu/wallet/api/IWalletListener;)V
    .registers 4

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p2, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->d:Lcom/baidu/wallet/api/IWalletListener;

    goto :goto_8
.end method

.method public isLogin()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->d:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->d:Lcom/baidu/wallet/api/IWalletListener;

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

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->d:Lcom/baidu/wallet/api/IWalletListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->d:Lcom/baidu/wallet/api/IWalletListener;

    invoke-interface {v0, p1}, Lcom/baidu/wallet/api/IWalletListener;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/baidu/wallet/api/ILoginBackListener;->onFail(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public setBaiduWalletPluginListener(Lcom/baidu/wallet/api/BaiduWalletPluginListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy;->f:Lcom/baidu/wallet/api/BaiduWalletPluginListener;

    return-void
.end method
