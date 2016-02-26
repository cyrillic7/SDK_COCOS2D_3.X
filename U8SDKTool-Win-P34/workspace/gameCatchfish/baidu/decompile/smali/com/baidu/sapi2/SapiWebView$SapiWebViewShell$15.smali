.class Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$15;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->action_unite_verify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$15;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$15;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1725
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$15;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1727
    .local v3, "verityToken":Ljava/lang/String;
    const-string v4, "adtext"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "adText":Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$15;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->x(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;->handleUniteVerify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 1732
    .end local v0    # "adText":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "verityToken":Ljava/lang/String;
    :goto_1e
    return-void

    .line 1729
    :catch_1f
    move-exception v1

    .line 1730
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method
