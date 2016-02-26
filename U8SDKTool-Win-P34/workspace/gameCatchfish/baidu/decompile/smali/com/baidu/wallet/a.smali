.class public Lcom/baidu/wallet/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/wallet/a;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/a;->a:Lcom/baidu/wallet/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/wallet/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/wallet/a;
    .registers 2

    sget-object v1, Lcom/baidu/wallet/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/a;->a:Lcom/baidu/wallet/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/a;

    invoke-direct {v0}, Lcom/baidu/wallet/a;-><init>()V

    sput-object v0, Lcom/baidu/wallet/a;->a:Lcom/baidu/wallet/a;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/baidu/wallet/a;->a:Lcom/baidu/wallet/a;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/wallet/b;-><init>(Lcom/baidu/wallet/a;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    goto :goto_1b
.end method

.method static synthetic a(Lcom/baidu/wallet/a;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/a;->h(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V
    .registers 3

    return-void
.end method

.method static synthetic b(Lcom/baidu/wallet/a;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/a;->i(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 5

    if-eqz p2, :cond_18

    if-eqz p1, :cond_14

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_14
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/baidu/android/pay/UserInfoQueryListener;->onQueryComplete(I)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    new-instance v0, Lcom/baidu/paysdk/beans/UserInfoBean;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/UserInfoBean;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/baidu/wallet/e;

    invoke-direct {v1, p0, p2}, Lcom/baidu/wallet/e;-><init>(Lcom/baidu/wallet/a;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/UserInfoBean;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/UserInfoBean;->execBean()V

    goto :goto_18
.end method

.method private h(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/paysdk/PayUtils;->getCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/core/DebugConfig;->getWalletHttpsHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/content/mywallet/h5/sdk_page/sdk_quan_manager.html?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "atbc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pay/SafePay;->getpw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "webview_title"

    const-string v4, "ebpay_coupon"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "jump_url"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    const-string v2, "com.baidu.balance"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    const-string v2, "BaizhuanfenActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    sget-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->isBalancePlugin:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2b
    const/4 v0, 0x2

    goto :goto_1f
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    const-string v2, "com.baidu.home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    const-string v2, "WalletHomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/baidu/wallet/core/beans/BeanConstants;->isWalletHomePlugin:Z

    if-nez v1, :cond_22

    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_22
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 9

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/a;->c(Landroid/content/Context;)V

    goto :goto_9

    :cond_14
    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/a;->b(Landroid/content/Context;)V

    goto :goto_9

    :cond_1e
    const-wide/16 v0, 0x4

    cmp-long v0, p2, v0

    if-nez v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/a;->d(Landroid/content/Context;)V

    goto :goto_9

    :cond_28
    const-wide/16 v0, 0x10

    cmp-long v0, p2, v0

    if-nez v0, :cond_31

    sput-boolean v2, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    goto :goto_9

    :cond_31
    const-wide/16 v0, 0x20

    cmp-long v0, p2, v0

    if-nez v0, :cond_3a

    sput-boolean v2, Lcom/baidu/wallet/core/beans/BeanConstants;->mHasHomePage:Z

    goto :goto_9

    :cond_3a
    const-wide/16 v0, 0x40

    cmp-long v0, p2, v0

    if-nez v0, :cond_44

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/a;->e(Landroid/content/Context;)V

    goto :goto_9

    :cond_44
    const-wide/16 v0, 0x80

    cmp-long v0, p2, v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/a;->g(Landroid/content/Context;)V

    goto :goto_9
.end method

.method public a(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V
    .registers 4

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/a;->b(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;->onResult(Z)V

    goto :goto_15
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ebpay_no_network"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    const-string v2, "com.baidu.transfer"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    const-string v2, "TransferHomePageActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->isTransferPlugin:Z

    if-nez v0, :cond_36

    const-string v2, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    sget-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->isTransferPlugin:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    :goto_33
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_36
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f

    :cond_3f
    const/4 v0, 0x2

    goto :goto_33
.end method

.method public b(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/a;->c(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    const-string v2, "com.baidu.fastpay"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    const-string v2, "WalletPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/baidu/wallet/core/beans/BeanConstants;->isFastPayPlugin:Z

    if-nez v1, :cond_22

    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_22
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ebpay_no_network"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    const-string v2, "com.baidu.personal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    const-string v2, "WalletPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/baidu/wallet/core/beans/BeanConstants;->isPersonalPlugin:Z

    if-nez v1, :cond_32

    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_32
    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_FUNCTION"

    const-string v2, "accessMyBankInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public e(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ebpay_no_network"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/baidu/wallet/a;->h(Landroid/content/Context;)V

    goto :goto_f

    :cond_1e
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/c;

    invoke-direct {v1, p0, p1}, Lcom/baidu/wallet/c;-><init>(Lcom/baidu/wallet/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_f
.end method

.method public f(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    const-string v2, "com.baidu.bankdetection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    const-string v2, "WalletPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/baidu/wallet/core/beans/BeanConstants;->isBankDetectionPlugin:Z

    if-nez v1, :cond_22

    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    return-void
.end method

.method public g(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ebpay_no_network"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/baidu/wallet/a;->i(Landroid/content/Context;)V

    goto :goto_f

    :cond_1e
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/d;

    invoke-direct {v1, p0, p1}, Lcom/baidu/wallet/d;-><init>(Lcom/baidu/wallet/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    goto :goto_f
.end method
