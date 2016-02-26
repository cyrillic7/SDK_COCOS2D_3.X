.class final Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;
.super Lcom/baidu/bdgame/sdk/obf/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiLoginProxyActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->b(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    .line 121
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->c(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->d(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 124
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 114
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 116
    return-void
.end method
