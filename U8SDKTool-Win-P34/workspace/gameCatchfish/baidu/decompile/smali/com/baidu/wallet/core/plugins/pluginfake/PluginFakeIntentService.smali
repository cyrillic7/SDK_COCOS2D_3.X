.class public Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;
.super Lcom/baidu/wallet/core/plugins/pluginfake/a;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# instance fields
.field private a:Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginfake/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;->a:Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;->a:Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public setServiceProxy(Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginfake/a;->setPluginProxy(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;->a:Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;

    return-void
.end method
