.class Lcom/baidu/sapi2/c$k$a;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c$k;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/c$k;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c$k;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iput-object p2, p0, Lcom/baidu/sapi2/c$k$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/c$k$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2325
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v1, v1, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2326
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFinish()V

    .line 2217
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v0, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onStart()V

    .line 2212
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 16
    .param p1, "statusCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    const/16 v12, -0xca

    .line 2221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2222
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v12}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2223
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2320
    :goto_1a
    return-void

    .line 2226
    :cond_1b
    const-string v7, "("

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2227
    .local v1, "dataStart":I
    const-string v7, ")"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2228
    .local v0, "dataEnd":I
    if-ltz v1, :cond_133

    .line 2230
    add-int/lit8 v7, v1, 0x1

    :try_start_2b
    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2231
    .local v3, "jsonData":Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-virtual {v7, v3}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v5

    .line 2232
    .local v5, "resultCode":I
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v5}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2233
    packed-switch v5, :pswitch_data_148

    .line 2308
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_4c} :catch_4d

    goto :goto_1a

    .line 2311
    .end local v3    # "jsonData":Ljava/lang/String;
    .end local v5    # "resultCode":I
    :catch_4d
    move-exception v2

    .line 2312
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 2313
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v12}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2314
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_1a

    .line 2235
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "jsonData":Ljava/lang/String;
    .restart local v5    # "resultCode":I
    :pswitch_64
    :try_start_64
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2236
    .local v4, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "appid"

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    const-string v7, "tpl"

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v7}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v7

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a6

    .line 2239
    const-string v7, "clientid"

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    :cond_a6
    const-string v7, "upsmschannel"

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->a:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    const-string v7, "bduss"

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->c:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    const-string v7, "vcode"

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->b:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-static {v7, v4, v8}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2245
    .local v6, "sig":Ljava/lang/String;
    const-string v7, "sig"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    new-instance v8, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {v7, v8}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2248
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v7}, Lcom/baidu/sapi2/c;->e(Lcom/baidu/sapi2/c;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->d(Lcom/baidu/sapi2/c;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2249
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v7}, Lcom/baidu/sapi2/c;->e(Lcom/baidu/sapi2/c;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v10, v10, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v10}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/sapi2/c$E;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/v2/security/sapibindwidgetbind"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    new-instance v11, Lcom/baidu/sapi2/c$k$a$a;

    invoke-direct {v11, p0}, Lcom/baidu/sapi2/c$k$a$a;-><init>(Lcom/baidu/sapi2/c$k$a;)V

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_131} :catch_4d

    goto/16 :goto_1a

    .line 2317
    .end local v3    # "jsonData":Ljava/lang/String;
    .end local v4    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "resultCode":I
    .end local v6    # "sig":Ljava/lang/String;
    :cond_133
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v12}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2318
    iget-object v7, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v7, v7, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/c$k$a;->c:Lcom/baidu/sapi2/c$k;

    iget-object v8, v8, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_1a

    .line 2233
    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_64
    .end packed-switch
.end method
