.class final Lcom/baidu/bdgame/sdk/obf/mr$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mr;->b(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/mr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mr;I)V
    .registers 3

    .prologue
    .line 203
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/FastRegResult;)V
    .registers 4

    .prologue
    .line 207
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass fastReg success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_20

    .line 211
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->a:I

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;I)V

    .line 216
    :goto_1f
    return-void

    .line 214
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdp_error_fail_register"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public b(Lcom/baidu/sapi2/result/FastRegResult;)V
    .registers 4

    .prologue
    .line 221
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass fastReg fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz p1, :cond_1a

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/FastRegResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 229
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 203
    check-cast p1, Lcom/baidu/sapi2/result/FastRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mr$6;->b(Lcom/baidu/sapi2/result/FastRegResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$6;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->b(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 237
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 232
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 203
    check-cast p1, Lcom/baidu/sapi2/result/FastRegResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mr$6;->a(Lcom/baidu/sapi2/result/FastRegResult;)V

    return-void
.end method
