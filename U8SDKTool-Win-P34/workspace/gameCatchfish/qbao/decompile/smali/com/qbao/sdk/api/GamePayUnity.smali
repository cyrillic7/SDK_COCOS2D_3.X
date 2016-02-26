.class public Lcom/qbao/sdk/api/GamePayUnity;
.super Ljava/lang/Object;
.source "GamePayUnity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lcom/qbao/sdk/api/GamePayUnity$3;

    invoke-direct {v0, p1, p2}, Lcom/qbao/sdk/api/GamePayUnity$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p0, v0}, Lcom/qbao/sdk/api/QbaoSdk;->exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    .line 39
    return-void
.end method

.method public static exitApp()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/qbao/sdk/api/QbaoSdk;->exitApp()V

    .line 43
    return-void
.end method

.method public static initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 11
    new-instance v0, Lcom/qbao/sdk/api/GamePayUnity$1;

    invoke-direct {v0, p3, p4}, Lcom/qbao/sdk/api/GamePayUnity$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2, v0}, Lcom/qbao/sdk/api/QbaoSdk;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V

    .line 17
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 20
    new-instance v0, Lcom/qbao/sdk/api/GamePayUnity$2;

    invoke-direct {v0, p2, p3}, Lcom/qbao/sdk/api/GamePayUnity$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1, v0}, Lcom/qbao/sdk/api/QbaoSdk;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V

    .line 26
    return-void
.end method
