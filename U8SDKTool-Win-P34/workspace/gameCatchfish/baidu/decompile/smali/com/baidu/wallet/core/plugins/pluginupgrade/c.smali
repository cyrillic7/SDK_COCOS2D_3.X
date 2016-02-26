.class Lcom/baidu/wallet/core/plugins/pluginupgrade/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponseCallback;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Lcom/baidu/wallet/core/beans/IBeanResponseCallback;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->c:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iput-object p3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeanExecFailure(IILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->c:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Z)Z

    return-void
.end method

.method public onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    instance-of v0, p2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    const-string v1, ""

    invoke-interface {v0, p1, v2, v1}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    move-object v0, p2

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;->checkResponseValidity()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_1c
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    const-string v1, ""

    invoke-interface {v0, p1, v2, v1}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_10

    :cond_28
    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->c:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->c:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Z)Z

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->c:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;->a:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_10
.end method
