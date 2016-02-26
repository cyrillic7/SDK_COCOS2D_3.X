.class final Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->run()V
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
        "Lcom/baidu/sapi2/result/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->setResult(I)V

    .line 176
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->finish()V

    .line 177
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/LoginResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->finish()V

    .line 184
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 163
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->b(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 172
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;->a(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 163
    check-cast p1, Lcom/baidu/sapi2/result/LoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;->a(Lcom/baidu/sapi2/result/LoginResult;)V

    return-void
.end method
