.class public Lcom/nearme/game/sdk/component/proxy/ProxyApiService;
.super Lcom/nearme/plugin/framework/service/PluginProxyService;
.source "ProxyApiService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nearme/plugin/framework/service/PluginProxyService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    const-string v0, "oppo_game_service.so"

    return-object v0
.end method
