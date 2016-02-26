.class Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;Landroid/os/Handler;ZZ)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    iput-boolean p3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->a:Z

    iput-boolean p4, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->b:Z

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_42

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Z

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.baidu.wallet.preferences_name"

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+++ preference is set to true"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->a:Z

    iget-boolean v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->b:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadSuccess(Ljava/lang/String;ZZ)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->c:Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->a:Z

    iget-boolean v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;->b:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadFailure(Ljava/lang/String;ZZ)V

    goto :goto_41
.end method
