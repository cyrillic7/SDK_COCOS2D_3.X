.class Lcom/baidu/sapi2/c$k$a$a;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c$k$a;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/c$k$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c$k$a;)V
    .registers 2

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2303
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v1, v1, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v1, v1, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2304
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFinish()V

    .line 2262
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onStart()V

    .line 2257
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "resBody"    # Ljava/lang/String;

    .prologue
    .line 2268
    :try_start_0
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-virtual {v4, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v3

    .line 2269
    .local v3, "resultCode":I
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2270
    packed-switch v3, :pswitch_data_8c

    .line 2290
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v5, v5, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v5, v5, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2297
    .end local v3    # "resultCode":I
    :goto_25
    return-void

    .line 2272
    .restart local v3    # "resultCode":I
    :pswitch_26
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 2274
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2276
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "displayname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 2278
    const-string v4, "bduss"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 2280
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 2282
    const-string v4, "ptoken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 2284
    const-string v4, "stoken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 2286
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    iput-object v0, v4, Lcom/baidu/sapi2/result/FillUserProfileResult;->session:Lcom/baidu/sapi2/SapiAccount;

    .line 2287
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v5, v5, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v5, v5, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_25

    .line 2293
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    :catch_70
    move-exception v1

    .line 2294
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v5, -0xca

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2295
    iget-object v4, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v4, v4, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$k$a$a;->a:Lcom/baidu/sapi2/c$k$a;

    iget-object v5, v5, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v5, v5, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_25

    .line 2270
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method
