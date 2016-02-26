.class Lcom/baidu/sapi2/c$C;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->c(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/OAuthResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/OAuthResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/baidu/sapi2/c$C;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$C;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2629
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2630
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 2631
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2637
    :goto_23
    return-void

    .line 2634
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 2635
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$C;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->c(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 2596
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 2591
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2600
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->d:Lcom/baidu/sapi2/c;

    invoke-static {v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2602
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2603
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2604
    .local v2, "resultCode":I
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 2605
    packed-switch v2, :pswitch_data_80

    .line 2617
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v3, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2624
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "resultCode":I
    :goto_27
    return-void

    .line 2607
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "resultCode":I
    :pswitch_28
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "access_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->accessToken:Ljava/lang/String;

    .line 2608
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "expires_in"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->expiresIn:I

    .line 2609
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "scope"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->scope:Ljava/lang/String;

    .line 2610
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "refresh_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->refreshToken:Ljava/lang/String;

    .line 2611
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "session_key"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->sessionKey:Ljava/lang/String;

    .line 2612
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const-string v4, "session_secret"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/result/OAuthResult;->sessionSecret:Ljava/lang/String;

    .line 2613
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    iput-object p2, v3, Lcom/baidu/sapi2/result/OAuthResult;->extra:Ljava/lang/String;

    .line 2614
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v3, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_6f} :catch_70

    goto :goto_27

    .line 2620
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "resultCode":I
    :catch_70
    move-exception v0

    .line 2621
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 2622
    iget-object v3, p0, Lcom/baidu/sapi2/c$C;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/c$C;->b:Lcom/baidu/sapi2/result/OAuthResult;

    invoke-interface {v3, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_27

    .line 2605
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method
