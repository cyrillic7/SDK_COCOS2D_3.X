.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Lcom/baidu/sapi2/shell/callback/SapiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
        "<",
        "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 2

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkFailed()V
    .registers 2

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->j(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2501
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->k(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2502
    return-void
.end method

.method public onSuccess(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 2490
    iget-boolean v0, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v0, :cond_11

    .line 2491
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    .line 2495
    :goto_b
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->k(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2496
    return-void

    .line 2493
    :cond_11
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    goto :goto_b
.end method

.method public bridge synthetic onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/shell/response/SapiResponse;

    .prologue
    .line 2486
    check-cast p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .end local p1    # "x0":Lcom/baidu/sapi2/shell/response/SapiResponse;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method public onSystemError(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    .line 2506
    packed-switch p1, :pswitch_data_1e

    .line 2516
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->j(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2517
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->k(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2520
    :goto_d
    return-void

    .line 2508
    :pswitch_e
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7$1;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7$1;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 2506
    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch
.end method
