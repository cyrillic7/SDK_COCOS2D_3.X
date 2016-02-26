.class Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->unite_verify_result(Ljava/lang/String;)V
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
    .line 1530
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1534
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->a:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v2, "resultJSON":Lorg/json/JSONObject;
    const-string v5, "info"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, "verifyInfo":Ljava/lang/String;
    const-string v5, "u"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "redirectUrl":Ljava/lang/String;
    new-instance v3, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v3}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 1538
    .local v3, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    const-string v5, "passuid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 1539
    const-string v5, "username"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 1540
    const-string v5, "displayname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 1541
    const-string v5, "bduss"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 1542
    const-string v5, "ptoken"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 1543
    const-string v5, "stoken"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 1544
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 1545
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 1546
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    move-result-object v5

    invoke-interface {v5, v4, v1, v3}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount;)V

    .line 1548
    :cond_69
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

    move-result-object v5

    if-eqz v5, :cond_7e

    .line 1549
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;->b:Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;

    move-result-object v5

    invoke-interface {v5, v4, v1, v3}, Lcom/baidu/sapi2/SapiWebView$UniteBindCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7e} :catch_7f

    .line 1555
    .end local v1    # "redirectUrl":Ljava/lang/String;
    .end local v2    # "resultJSON":Lorg/json/JSONObject;
    .end local v3    # "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    .end local v4    # "verifyInfo":Ljava/lang/String;
    :cond_7e
    :goto_7e
    return-void

    .line 1552
    :catch_7f
    move-exception v0

    .line 1553
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_7e
.end method
