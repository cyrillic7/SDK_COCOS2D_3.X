.class public Lcom/qbao/sdk/a/c;
.super Ljava/lang/Object;
.source "QbaoPay.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V
    .registers 2

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/qbao/sdk/a/e;->exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    .line 23
    return-void
.end method

.method public static exitApp()V
    .registers 0

    .prologue
    .line 26
    invoke-static {}, Lcom/qbao/sdk/a/e;->exitApp()V

    .line 27
    return-void
.end method

.method public static initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V
    .registers 4

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/qbao/sdk/a/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V

    .line 14
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V
    .registers 3

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/qbao/sdk/a/e;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V

    .line 19
    return-void
.end method
