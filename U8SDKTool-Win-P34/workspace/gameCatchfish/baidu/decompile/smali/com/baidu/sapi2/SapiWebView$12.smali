.class Lcom/baidu/sapi2/SapiWebView$12;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->loadWeixinSSOLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->B(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2072
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->B(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2076
    :goto_12
    return-void

    .line 2074
    :cond_13
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->D(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/baidu/sapi2/SapiWebView$WeixinHandler;->handleServerError(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 2060
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->C(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 2062
    :try_start_8
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->C(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_12

    .line 2067
    :cond_11
    :goto_11
    return-void

    .line 2063
    :catch_12
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public onStart()V
    .registers 7

    .prologue
    .line 2052
    :try_start_0
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "\u52a0\u8f7d\u4e2d..."

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 2056
    :goto_13
    return-void

    .line 2053
    :catch_14
    move-exception v0

    .line 2054
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 2081
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "mkey"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2083
    .local v3, "mkey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 2084
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 2085
    .local v4, "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    const-string v6, "snsapi_userinfo"

    iput-object v6, v4, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 2086
    iput-object v3, v4, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 2087
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v7}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v7

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->wxAppID:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v5

    .line 2088
    .local v5, "wxAPI":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v5, v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 2089
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v6}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2099
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "mkey":Ljava/lang/String;
    .end local v4    # "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    .end local v5    # "wxAPI":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    :cond_38
    :goto_38
    return-void

    .line 2091
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "mkey":Ljava/lang/String;
    :cond_39
    const-string v6, "error_code"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2092
    .local v1, "errorCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v6}, Lcom/baidu/sapi2/SapiWebView;->D(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 2093
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v6}, Lcom/baidu/sapi2/SapiWebView;->D(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/baidu/sapi2/SapiWebView$WeixinHandler;->handleServerError(Ljava/lang/String;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_38

    .line 2096
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "mkey":Ljava/lang/String;
    :catch_53
    move-exception v0

    .line 2097
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_38
.end method
