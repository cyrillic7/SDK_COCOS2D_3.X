.class Lcom/baidu/sapi2/c$G;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/callback/SapiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/SapiResult;

.field final synthetic c:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 4

    .prologue
    .line 3480
    iput-object p1, p0, Lcom/baidu/sapi2/c$G;->c:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$G;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/SapiResult;->setResultCode(I)V

    .line 3518
    iget-object v0, p0, Lcom/baidu/sapi2/c$G;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3519
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/baidu/sapi2/c$G;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3489
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/baidu/sapi2/c$G;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 3484
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 19
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3494
    const v2, 0x1adb0

    .line 3495
    .local v2, "WAPPASS_SUCCESS":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/c$G;->c:Lcom/baidu/sapi2/c;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v5

    .line 3496
    .local v5, "resultCode":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    invoke-virtual {v11, v5}, Lcom/baidu/sapi2/result/SapiResult;->setResultCode(I)V

    .line 3497
    if-eqz v5, :cond_1b

    const v11, 0x1adb0

    if-ne v5, v11, :cond_5b

    .line 3499
    :cond_1b
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3500
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v8, v12, v14

    .line 3501
    .local v8, "systemTimeSeconds":J
    const-string v11, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v4, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3502
    .local v6, "serverTimeSeconds":J
    sub-long v12, v6, v8

    long-to-int v10, v12

    .line 3503
    .local v10, "timeOffsetSeconds":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/c$G;->c:Lcom/baidu/sapi2/c;

    invoke-static {v11}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v11

    iget-object v11, v11, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/baidu/sapi2/d;->a(I)V

    .line 3505
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/c$G;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    invoke-interface {v11, v12}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_56} :catch_57

    .line 3513
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "resultCode":I
    .end local v6    # "serverTimeSeconds":J
    .end local v8    # "systemTimeSeconds":J
    .end local v10    # "timeOffsetSeconds":I
    :goto_56
    return-void

    .line 3508
    :catch_57
    move-exception v3

    .line 3509
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 3511
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    const/16 v12, -0xca

    invoke-virtual {v11, v12}, Lcom/baidu/sapi2/result/SapiResult;->setResultCode(I)V

    .line 3512
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/c$G;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/c$G;->b:Lcom/baidu/sapi2/result/SapiResult;

    invoke-interface {v11, v12}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_56
.end method
