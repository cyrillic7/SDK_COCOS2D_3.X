.class Lcom/qbao/sdk/a/e$4;
.super Ljava/lang/Object;
.source "QbaoPayMain.java"

# interfaces
.implements Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/e;->r(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancelExit()V
    .registers 1

    .prologue
    .line 326
    return-void
.end method

.method public onConfirmExit()V
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->a(Z)V

    .line 321
    return-void
.end method
