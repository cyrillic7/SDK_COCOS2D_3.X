.class final Lcom/baidu/bdgame/sdk/obf/ay$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/SapiCallback",
        "<",
        "Lcom/baidu/sapi2/result/FastRegResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 2

    .prologue
    .line 729
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/FastRegResult;)V
    .registers 6

    .prologue
    .line 733
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass fastReg success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_account_created_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->c(I)V

    .line 737
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_40

    .line 739
    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 744
    :goto_2c
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ay$11$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ay$11$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ay$11;)V

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 755
    return-void

    .line 741
    :cond_40
    const-string v0, ""

    goto :goto_2c
.end method

.method public b(Lcom/baidu/sapi2/result/FastRegResult;)V
    .registers 5

    .prologue
    .line 760
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass fastReg fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    if-eqz p1, :cond_2e

    .line 764
    invoke-virtual {p1}, Lcom/baidu/sapi2/result/FastRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 768
    :goto_d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 771
    return-void

    .line 766
    :cond_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_fail_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 729
    check-cast p1, Lcom/baidu/sapi2/result/FastRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay$11;->b(Lcom/baidu/sapi2/result/FastRegResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 782
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 777
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 729
    check-cast p1, Lcom/baidu/sapi2/result/FastRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay$11;->a(Lcom/baidu/sapi2/result/FastRegResult;)V

    return-void
.end method
