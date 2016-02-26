.class Lcom/baidu/sapi2/c$t;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

.field final synthetic b:Lcom/baidu/sapi2/utils/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$t;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/c$t;->b:Lcom/baidu/sapi2/utils/a;

    iput-object p4, p0, Lcom/baidu/sapi2/c$t;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/c$t;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/c$t;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 11
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2050
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2051
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2052
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v1, ""

    .line 2054
    .local v1, "json":Ljava/lang/String;
    :try_start_a
    const-string v3, "failure_info"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2055
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_12} :catch_34

    move-result-object v1

    .line 2060
    :goto_13
    iget-object v3, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    invoke-static {v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2061
    iget-object v3, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    invoke-static {v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2062
    iget-object v3, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    const/16 v4, -0x64

    iget-object v5, p0, Lcom/baidu/sapi2/c$t;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/c$t;->b:Lcom/baidu/sapi2/utils/a;

    invoke-static {v3, v4, v5, v1, v6}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/a;)V

    .line 2066
    :goto_33
    return-void

    .line 2056
    :catch_34
    move-exception v0

    .line 2057
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 2064
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_39
    iget-object v3, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    iget-object v4, p0, Lcom/baidu/sapi2/c$t;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v5, p0, Lcom/baidu/sapi2/c$t;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/sapi2/c$t;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/c$t;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2070
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2073
    :try_start_c
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v9, "jSONObject":Lorg/json/JSONObject;
    const-string v0, "cert"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2075
    .local v5, "cert":Ljava/lang/String;
    const-string v0, "cert_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2076
    .local v6, "certId":Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$t;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/c$t;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/c$t;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/c$t;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/c$t;->b:Lcom/baidu/sapi2/utils/a;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/utils/a;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d

    .line 2082
    .end local v5    # "cert":Ljava/lang/String;
    .end local v6    # "certId":Ljava/lang/String;
    .end local v9    # "jSONObject":Lorg/json/JSONObject;
    :goto_2c
    return-void

    .line 2077
    :catch_2d
    move-exception v8

    .line 2078
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$t;->f:Lcom/baidu/sapi2/c;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/c;->c(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/c$t;->a:Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;

    iget-object v3, p0, Lcom/baidu/sapi2/c$t;->b:Lcom/baidu/sapi2/utils/a;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/a;)V

    .line 2080
    invoke-static {v8}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method
