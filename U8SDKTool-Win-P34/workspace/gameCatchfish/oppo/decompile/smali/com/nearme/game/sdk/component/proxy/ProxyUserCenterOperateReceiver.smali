.class public Lcom/nearme/game/sdk/component/proxy/ProxyUserCenterOperateReceiver;
.super Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;
.source "ProxyUserCenterOperateReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 13
    const-string v0, "ProxyUserCenterOperateReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v0, "PLUGIN_NAME"

    const-string v1, "oppo_game_service.so"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string v0, "LAUNCH_COMPONENT"

    const-string v1, "com.oppo.usercenter.sdk.helper.UserCenterOperateReceiver"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-super {p0, p1, p2}, Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 17
    return-void
.end method
