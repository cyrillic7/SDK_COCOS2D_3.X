.class Lcom/baidu/sapi2/c$l;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/result/FastRegResult;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic e:Lcom/baidu/cloudsdk/common/http/RequestParams;

.field final synthetic f:[Z

.field final synthetic g:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/result/FastRegResult;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;[Z)V
    .registers 8

    .prologue
    .line 3210
    iput-object p1, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    iput-object p3, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p6, p0, Lcom/baidu/sapi2/c$l;->e:Lcom/baidu/cloudsdk/common/http/RequestParams;

    iput-object p7, p0, Lcom/baidu/sapi2/c$l;->f:[Z

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3263
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 3264
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 3265
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3266
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3267
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3272
    :goto_2f
    return-void

    .line 3269
    :cond_30
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 3270
    iget-object v0, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$l;->e:Lcom/baidu/cloudsdk/common/http/RequestParams;

    iget-object v3, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/baidu/sapi2/c$l;->f:[Z

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V

    goto :goto_2f
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3214
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-virtual {v6, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v3

    .line 3215
    .local v3, "resultCode":I
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-virtual {v6, v3}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 3217
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3218
    .local v2, "responseJSONObj":Lorg/json/JSONObject;
    const-string v6, "sdk"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 3219
    .local v5, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3220
    .local v4, "resultMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-virtual {v6, v4}, Lcom/baidu/sapi2/result/FastRegResult;->setResultMsg(Ljava/lang/String;)V

    .line 3222
    sparse-switch v3, :sswitch_data_be

    .line 3245
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-static {v6}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/c$E;->d()V

    .line 3246
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3247
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3248
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3258
    .end local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v4    # "resultMsg":Ljava/lang/String;
    .end local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :goto_40
    return-void

    .line 3224
    .restart local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v4    # "resultMsg":Ljava/lang/String;
    .restart local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_41
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-static {v6}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/c$E;->d()V

    .line 3225
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-virtual {v6, v2}, Lcom/baidu/sapi2/c;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 3226
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 3227
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const-string v7, "newreg"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/baidu/sapi2/result/FastRegResult;->newReg:Z

    .line 3228
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const-string v7, "authsid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/sapi2/result/FastRegResult;->authSid:Ljava/lang/String;

    .line 3229
    const-string v6, "null"

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    iget-object v7, v7, Lcom/baidu/sapi2/result/FastRegResult;->authSid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 3230
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/baidu/sapi2/result/FastRegResult;->authSid:Ljava/lang/String;

    .line 3232
    :cond_7c
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3233
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3234
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_8f} :catch_90

    goto :goto_40

    .line 3251
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v4    # "resultMsg":Ljava/lang/String;
    .end local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :catch_90
    move-exception v1

    .line 3252
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    invoke-static {v6}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/c$E;->d()V

    .line 3253
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3254
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3255
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/c$l;->a:Lcom/baidu/sapi2/result/FastRegResult;

    invoke-interface {v6, v7}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3256
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 3237
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v4    # "resultMsg":Ljava/lang/String;
    .restart local v5    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_b1
    :try_start_b1
    iget-object v6, p0, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/sapi2/c$l$a;

    invoke-direct {v7, p0}, Lcom/baidu/sapi2/c$l$a;-><init>(Lcom/baidu/sapi2/c$l;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bd} :catch_90

    goto :goto_40

    .line 3222
    :sswitch_data_be
    .sparse-switch
        0x0 -> :sswitch_41
        0x7 -> :sswitch_b1
    .end sparse-switch
.end method
