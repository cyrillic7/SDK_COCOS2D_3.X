.class public Lcom/u8/sdk/BaiduProxyApplication;
.super Lcom/baidu/gamesdk/BDGameApplication;
.source "BaiduProxyApplication.java"

# interfaces
.implements Lcom/u8/sdk/IApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/baidu/gamesdk/BDGameApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAttachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/baidu/gamesdk/BDGameApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public onProxyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/baidu/gamesdk/BDGameApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    return-void
.end method

.method public onProxyCreate()V
    .registers 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/baidu/gamesdk/BDGameApplication;->onCreate()V

    .line 14
    return-void
.end method
