.class Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/b/a$b;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/b/b;)V
    .registers 10

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v5, :cond_d9

    iget-wide v0, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->pluginDownloadId:J

    move-wide v6, v0

    :goto_1c
    invoke-virtual {p1}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5c

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7, p0}, Lcom/baidu/wallet/core/b/a;->b(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Lcom/baidu/wallet/core/c/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a;->b(I)V

    :goto_5b
    return-void

    :cond_5c
    invoke-virtual {p1}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b9

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/baidu/wallet/core/b/a;->a(J)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7, p0}, Lcom/baidu/wallet/core/b/a;->b(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->isConfigInfoForceUpdate(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onDownloadFailure(Ljava/lang/String;Z)V

    goto :goto_5b

    :cond_b9
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/i;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-static {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->isConfigInfoForceUpdate(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onDownloadOngoing(Ljava/lang/String;Lcom/baidu/wallet/core/b/b;Z)V

    goto :goto_5b

    :cond_d9
    move-wide v6, v2

    goto/16 :goto_1c
.end method
