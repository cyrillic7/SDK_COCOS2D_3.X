.class public final Lcom/baidu/wallet/core/plugins/pluginmanager/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/wallet/core/plugins/pluginmanager/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    invoke-direct {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;
    .registers 5

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->isNeedUpdate()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->getPlugin()Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    return-object v0
.end method

.method public a()Ljava/util/HashMap;
    .registers 2

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->setCurrentContext(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->removeComponent(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public a(ZLandroid/content/Context;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContextWrapper;
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/a;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a(Ljava/lang/String;)V

    return-void
.end method
