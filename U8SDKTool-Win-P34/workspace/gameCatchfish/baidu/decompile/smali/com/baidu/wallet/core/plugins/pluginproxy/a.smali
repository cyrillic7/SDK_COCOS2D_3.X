.class Lcom/baidu/wallet/core/plugins/pluginproxy/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    iput-boolean p2, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->b(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->a(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->a:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->b(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->onStart()V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->b(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->a(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginproxy/a;->b:Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->b(Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;)Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;->onResume()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_34
.end method
