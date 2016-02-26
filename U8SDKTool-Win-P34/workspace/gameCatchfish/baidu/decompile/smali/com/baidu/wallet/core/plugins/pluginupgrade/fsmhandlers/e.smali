.class public Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/c/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->a(Ljava/lang/String;Lcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/wallet/core/plugins/pluginmanager/a;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->isConfigInfoForceUpdate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-nez v0, :cond_39

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->b:Ljava/lang/String;

    move v5, v1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    invoke-interface {p2, p1, v4, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadSuccess(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->setNeedUpdate(Z)V

    goto :goto_38

    :cond_40
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_5f

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->setNeedUpdate(Z)V

    :cond_5f
    invoke-interface {p2, p1, v1, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadSuccess(Ljava/lang/String;ZZ)V

    goto :goto_38
.end method
