.class public Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "WalletProxyIntentService"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->e:I

    return-void
.end method

.method private a()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    if-eqz v1, :cond_2d

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2d} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2d} :catch_38

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2d

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2d

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2d
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContextWrapper;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    return-void
.end method


# virtual methods
.method public getService()Landroid/app/Service;
    .registers 1

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/app/IntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->b:Ljava/lang/String;

    const-string v0, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->c:Ljava/lang/String;

    const-string v0, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->e:I

    iget v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->b()V

    :goto_24
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;->setServiceProxy(Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->d:Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;->onHandleIntent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_33
    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->a()V

    goto :goto_24
.end method
