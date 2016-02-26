.class final Lcom/baidu/platformsdk/SapiWebActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Lcom/baidu/platformsdk/SapiWebActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 190
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 192
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    new-instance v2, Lcom/baidu/platformsdk/SapiWebActivity$4$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity$4$1;-><init>(Lcom/baidu/platformsdk/SapiWebActivity$4;Lcom/baidu/bdgame/sdk/obf/ai;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiAccountService;->getUserInfo(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    .line 231
    :cond_31
    :goto_31
    return-void

    .line 229
    :cond_32
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$4;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    goto :goto_31
.end method
