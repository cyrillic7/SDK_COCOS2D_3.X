.class Lcom/qbao/sdk/ui/PayView$1;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aU()V
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$1;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_3e

    .line 99
    :cond_3
    :goto_3
    return-void

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$1;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->finish()V

    .line 80
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 85
    :pswitch_17
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$1;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->finish()V

    .line 86
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 91
    :pswitch_2a
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$1;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->finish()V

    .line 92
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/qbao/sdk/a/e;->ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 77
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_17
        :pswitch_2a
    .end packed-switch
.end method
