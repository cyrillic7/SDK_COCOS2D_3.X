.class final Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiLoginProxyActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->g(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v0

    new-instance v1, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4$1;-><init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;)V

    iget-object v2, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v2}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiWebView;->loadLoginProxy(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    .line 186
    return-void
.end method
