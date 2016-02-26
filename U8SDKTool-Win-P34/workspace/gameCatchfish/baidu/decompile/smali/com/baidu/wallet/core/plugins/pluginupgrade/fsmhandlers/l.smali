.class Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/b/a$b;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/b/b;)V
    .registers 11

    const-wide/16 v2, -0x1

    const/4 v8, 0x1

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v0, :cond_d4

    iget-wide v0, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->pluginDownloadId:J

    move-wide v6, v0

    :goto_1c
    invoke-virtual {p1}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7, p0}, Lcom/baidu/wallet/core/b/a;->b(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v8}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onDownloadOngoing(Ljava/lang/String;Lcom/baidu/wallet/core/b/b;Z)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->e(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Lcom/baidu/wallet/core/c/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a;->b(I)V

    :goto_6c
    return-void

    :cond_6d
    invoke-virtual {p1}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c2

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/baidu/wallet/core/b/a;->a(J)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7, p0}, Lcom/baidu/wallet/core/b/a;->b(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->showFailDialogStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_6c

    :cond_c2
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v8}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onDownloadOngoing(Ljava/lang/String;Lcom/baidu/wallet/core/b/b;Z)V

    goto :goto_6c

    :cond_d4
    move-wide v6, v2

    goto/16 :goto_1c
.end method
