.class public Lcom/qbao/sdk/api/QbaoSdk;
.super Ljava/lang/Object;
.source "QbaoSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;,
        Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;,
        Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/qbao/sdk/a/c;->exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    .line 25
    return-void
.end method

.method public static exitApp()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/qbao/sdk/a/c;->exitApp()V

    .line 29
    return-void
.end method

.method public static initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V
    .registers 4

    .prologue
    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/qbao/sdk/a/c;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V

    .line 17
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V
    .registers 3

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/qbao/sdk/a/c;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V

    .line 21
    return-void
.end method
