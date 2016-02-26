.class Lcom/baidu/sapi2/c$k;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/FillUserProfileCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/FillUserProfileResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/FillUserProfileCallback;Lcom/baidu/sapi2/result/FillUserProfileResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$k;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2352
    iget-object v0, p0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2353
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFinish()V

    .line 2176
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onStart()V

    .line 2171
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 19
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2181
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2182
    .local v5, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v7

    .line 2183
    .local v7, "resultCode":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v7}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2184
    sparse-switch v7, :sswitch_data_12c

    .line 2340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2347
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v7    # "resultCode":I
    :goto_26
    return-void

    .line 2186
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "resultCode":I
    :sswitch_27
    const-string v12, "sms"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2187
    .local v9, "smsDestination":Ljava/lang/String;
    const-string v12, "vcode"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2188
    .local v8, "smsCode":Ljava/lang/String;
    const-string v12, "upsmschannel"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2189
    .local v10, "statusChannelId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v12}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v12

    iget-object v12, v12, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v12, v8, v9}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 2190
    .local v11, "success":Z
    if-eqz v11, :cond_fc

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_fc

    .line 2191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    new-instance v13, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v13}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {v12, v13}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v12}, Lcom/baidu/sapi2/c;->e(Lcom/baidu/sapi2/c;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->d(Lcom/baidu/sapi2/c;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2193
    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 2194
    .local v3, "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v12, "BAIDUID"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    .local v2, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v12, "baidu.com"

    invoke-virtual {v2, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 2197
    const-string v12, "/"

    invoke-virtual {v2, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v12}, Lcom/baidu/sapi2/c;->e(Lcom/baidu/sapi2/c;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 2200
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 2201
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    const-string v12, "channel_id"

    invoke-virtual {v6, v12, v10}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const-string v12, "callback"

    const-string v13, "p"

    invoke-virtual {v6, v12, v13}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v12, "apiver"

    const-string v13, "v3"

    invoke-virtual {v6, v12, v13}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v12, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v12}, Lcom/baidu/sapi2/c;->e(Lcom/baidu/sapi2/c;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->d:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const-string v14, "https://passport.baidu.com/channel/unicast"

    new-instance v15, Lcom/baidu/sapi2/c$k$a;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10, v8}, Lcom/baidu/sapi2/c$k$a;-><init>(Lcom/baidu/sapi2/c$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14, v6, v15}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e3} :catch_e5

    goto/16 :goto_26

    .line 2343
    .end local v2    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v3    # "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v7    # "resultCode":I
    .end local v8    # "smsCode":Ljava/lang/String;
    .end local v9    # "smsDestination":Ljava/lang/String;
    .end local v10    # "statusChannelId":Ljava/lang/String;
    .end local v11    # "success":Z
    :catch_e5
    move-exception v4

    .line 2344
    .local v4, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v13, -0xca

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_26

    .line 2329
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "resultCode":I
    .restart local v8    # "smsCode":Ljava/lang/String;
    .restart local v9    # "smsDestination":Ljava/lang/String;
    .restart local v10    # "statusChannelId":Ljava/lang/String;
    .restart local v11    # "success":Z
    :cond_fc
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v13, -0xca

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_26

    .line 2334
    .end local v8    # "smsCode":Ljava/lang/String;
    .end local v9    # "smsDestination":Ljava/lang/String;
    .end local v10    # "statusChannelId":Ljava/lang/String;
    .end local v11    # "success":Z
    :sswitch_112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onCompleteUser(Lcom/baidu/sapi2/result/FillUserProfileResult;)V

    goto/16 :goto_26

    .line 2337
    :sswitch_11f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$k;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/c$k;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_12a} :catch_e5

    goto/16 :goto_26

    .line 2184
    :sswitch_data_12c
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_11f
        0xee4a -> :sswitch_112
    .end sparse-switch
.end method
