.class final Lcom/baidu/platformsdk/SapiWebActivity$4$1;
.super Lcom/baidu/sapi2/callback/GetUserInfoCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity$4;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field a:Lcom/baidu/bdgame/sdk/obf/lu;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ai;

.field final synthetic c:Lcom/baidu/platformsdk/SapiWebActivity$4;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity$4;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 5

    .prologue
    .line 192
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iput-object p2, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;-><init>()V

    .line 194
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lu;

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v1, v1, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a:Lcom/baidu/bdgame/sdk/obf/lu;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 4

    .prologue
    .line 198
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 199
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b:Lcom/baidu/bdgame/sdk/obf/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->b(Z)V

    .line 201
    :cond_10
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 2

    .prologue
    .line 215
    return-void
.end method

.method public c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 5

    .prologue
    .line 220
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v1, v1, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "baidu password modified."

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->logout()V

    .line 224
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Landroid/content/Context;)Z

    .line 225
    return-void
.end method

.method public synthetic onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 192
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 192
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a:Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 211
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->c:Lcom/baidu/platformsdk/SapiWebActivity$4;

    iget-object v0, v0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    .line 212
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a:Lcom/baidu/bdgame/sdk/obf/lu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;->a(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 192
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;->a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method
