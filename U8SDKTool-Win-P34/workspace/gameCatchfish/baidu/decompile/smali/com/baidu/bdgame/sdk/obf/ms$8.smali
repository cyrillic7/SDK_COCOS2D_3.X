.class final Lcom/baidu/bdgame/sdk/obf/ms$8;
.super Lcom/baidu/sapi2/callback/LoginCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ms;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
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
    .line 403
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 408
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login captcha required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Lcom/baidu/bdgame/sdk/obf/ms;Z)V

    .line 411
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->f(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 412
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->c(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 413
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->l(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 414
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 419
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->k(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 422
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 5

    .prologue
    .line 437
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz p1, :cond_1e

    .line 441
    invoke-virtual {p1}, Lcom/baidu/sapi2/result/LoginResult;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login in upgrade failed."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void

    .line 443
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_fail_login"

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
    .line 403
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms$8;->a(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 403
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms$8;->c(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 432
    return-void
.end method

.method public onLoginTypeConflict(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4
    .param p1, "arg0"    # Lcom/baidu/sapi2/result/LoginResult;

    .prologue
    .line 462
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login login type conflict"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m(Lcom/baidu/bdgame/sdk/obf/ms;)V

    .line 465
    return-void
.end method

.method public onProxyActionRequired(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 6
    .param p1, "result"    # Lcom/baidu/sapi2/result/LoginResult;

    .prologue
    .line 454
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login proxy action required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/result/LoginResult;->action:Lcom/baidu/sapi2/result/SapiResult$Action;

    iget-object v1, v1, Lcom/baidu/sapi2/result/SapiResult$Action;->actionTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/sapi2/result/LoginResult;->action:Lcom/baidu/sapi2/result/SapiResult$Action;

    iget-object v2, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ms;->j(Lcom/baidu/bdgame/sdk/obf/ms;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms$8;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ms;->c(I)V

    .line 427
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 403
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms$8;->b(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method
