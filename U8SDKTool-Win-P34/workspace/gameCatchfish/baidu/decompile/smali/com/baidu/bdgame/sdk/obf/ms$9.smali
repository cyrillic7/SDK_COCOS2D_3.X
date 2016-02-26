.class final Lcom/baidu/bdgame/sdk/obf/ms$9;
.super Lcom/baidu/sapi2/callback/QuickUserRegCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ms;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ms;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 2

    .prologue
    .line 477
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 4

    .prologue
    .line 481
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg captcha required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Lcom/baidu/bdgame/sdk/obf/ms;Z)V

    .line 484
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->l(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 485
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->k(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 490
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 5

    .prologue
    .line 513
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    if-eqz p1, :cond_1e

    .line 516
    invoke-virtual {p1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 520
    :goto_d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 523
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass register in upgrade failed."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    .line 518
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_fail_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public synthetic onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 477
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms$9;->a(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 477
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms$9;->c(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 534
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ms;->c(I)V

    .line 529
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 477
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms$9;->b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public onUsernameExist(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 5
    .param p1, "result"    # Lcom/baidu/sapi2/result/QuickUserRegResult;

    .prologue
    .line 496
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg username exist"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/result/QuickUserRegResult;->sugUsernameList:Ljava/util/List;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ms$9$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/ms$9$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ms$9;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bf;->a(Landroid/content/Context;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/bf$a;)V

    .line 508
    return-void
.end method
