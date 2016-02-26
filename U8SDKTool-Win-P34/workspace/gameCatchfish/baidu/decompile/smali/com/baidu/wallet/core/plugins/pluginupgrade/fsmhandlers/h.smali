.class Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getUpdateDialog()Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->dismiss()V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-static {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-static {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->setIgnorePluginUpdate(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-static {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;->a:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-static {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    return-void
.end method
