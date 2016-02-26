.class final Lcom/baidu/bdgame/sdk/obf/mj$16;
.super Lcom/baidu/sapi2/callback/QuickUserRegCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mj;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/mj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mj;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 302
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 4

    .prologue
    .line 306
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg captcha required"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mj;->b(Lcom/baidu/bdgame/sdk/obf/mj;Z)V

    .line 309
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->j(Lcom/baidu/bdgame/sdk/obf/mj;)V

    .line 310
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 6

    .prologue
    .line 315
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_52

    iget-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 319
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_passport_register"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 320
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_dialog_loading_login"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mj;->c(I)V

    .line 321
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/mj$16$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/mj$16$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mj$16;)V

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 337
    :goto_51
    return-void

    .line 335
    :cond_52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_51
.end method

.method public c(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 5

    .prologue
    .line 359
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz p1, :cond_26

    .line 362
    invoke-virtual {p1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 369
    return-void

    .line 364
    :cond_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->l()Landroid/app/Activity;

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
    .line 302
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj$16;->a(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 302
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj$16;->c(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->m()V

    .line 379
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mj;->c(I)V

    .line 374
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 302
    check-cast p1, Lcom/baidu/sapi2/result/QuickUserRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj$16;->b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V

    return-void
.end method

.method public onUsernameExist(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    .registers 5
    .param p1, "result"    # Lcom/baidu/sapi2/result/QuickUserRegResult;

    .prologue
    .line 342
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass quickUserReg username exist"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/sapi2/result/QuickUserRegResult;->sugUsernameList:Ljava/util/List;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mj$16$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/mj$16$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mj$16;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bf;->a(Landroid/content/Context;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/bf$a;)V

    .line 354
    return-void
.end method
