.class final Lcom/baidu/platformsdk/SapiWebActivity$2;
.super Lcom/baidu/bdgame/sdk/obf/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$2;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$2;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->e(Lcom/baidu/platformsdk/SapiWebActivity;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$2;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->f(Lcom/baidu/platformsdk/SapiWebActivity;)V

    .line 165
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$2;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->g(Lcom/baidu/platformsdk/SapiWebActivity;)V

    .line 166
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$2;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->d(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 167
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 157
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$2;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->d(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 159
    return-void
.end method
