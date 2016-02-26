.class public Lcom/nearme/game/sdk/component/proxy/ProxyActivity;
.super Lcom/nearme/plugin/framework/activity/PluginProxyActivity;
.source "ProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    const-string v0, "oppo_game_service.so"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 12
    invoke-super {p0, p1}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 14
    return-void
.end method
