.class final Lcom/baidu/bdgame/sdk/obf/ay$9;
.super Lcom/baidu/sapi2/callback/LoginCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 2

    .prologue
    .line 643
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 648
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login captcha required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;Z)V

    .line 651
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->j(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 652
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->c(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 653
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->l(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 654
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 659
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->v(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 662
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 5

    .prologue
    .line 677
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    if-eqz p1, :cond_2e

    .line 681
    invoke-virtual {p1}, Lcom/baidu/sapi2/result/LoginResult;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 688
    return-void

    .line 683
    :cond_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

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
    .line 643
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay$9;->a(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 643
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay$9;->c(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 672
    return-void
.end method

.method public onLoginTypeConflict(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4
    .param p1, "arg0"    # Lcom/baidu/sapi2/result/LoginResult;

    .prologue
    .line 701
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login login type conflict"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->w(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 704
    return-void
.end method

.method public onProxyActionRequired(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 6
    .param p1, "result"    # Lcom/baidu/sapi2/result/LoginResult;

    .prologue
    .line 693
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass login proxy action required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/result/LoginResult;->action:Lcom/baidu/sapi2/result/SapiResult$Action;

    iget-object v1, v1, Lcom/baidu/sapi2/result/SapiResult$Action;->actionTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/sapi2/result/LoginResult;->action:Lcom/baidu/sapi2/result/SapiResult$Action;

    iget-object v2, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ay;->u(Lcom/baidu/bdgame/sdk/obf/ay;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 696
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 666
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$9;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->c(I)V

    .line 667
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 643
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay$9;->b(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method
