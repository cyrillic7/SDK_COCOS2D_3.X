.class Lcom/qbao/sdk/ui/PayView$8;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->c(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fb:Lcom/qbao/sdk/ui/PayView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/PayView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 318
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->am()V

    .line 324
    const v0, 0x163a2

    if-eq p1, v0, :cond_1e

    const v0, 0x15f9e

    if-eq p1, v0, :cond_1e

    const v0, 0x163a3

    if-eq p1, v0, :cond_1e

    const v0, 0x15f96

    if-eq p1, v0, :cond_1e

    const v0, 0x15fa8

    if-ne p1, v0, :cond_26

    .line 325
    :cond_1e
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    :goto_25
    return-void

    .line 328
    :cond_26
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/sdk/ui/PayView;)Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v2}, Lcom/qbao/sdk/ui/PayView;->b(Lcom/qbao/sdk/ui/PayView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 311
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->am()V

    .line 312
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/sdk/ui/PayView;)Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView$8;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v2}, Lcom/qbao/sdk/ui/PayView;->b(Lcom/qbao/sdk/ui/PayView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    return-void
.end method
