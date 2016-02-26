.class Lcom/baidu/sapi2/c$b;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/LoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/LoginResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/a;

.field final synthetic d:Lcom/baidu/sapi2/dto/LoginDTO;

.field final synthetic e:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/result/LoginResult;Lcom/baidu/sapi2/utils/a;Lcom/baidu/sapi2/dto/LoginDTO;)V
    .registers 6

    .prologue
    .line 463
    iput-object p1, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$b;->c:Lcom/baidu/sapi2/utils/a;

    iput-object p5, p0, Lcom/baidu/sapi2/c$b;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 538
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 539
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 540
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 545
    :goto_23
    return-void

    .line 542
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 543
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$b;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/LoginCallback;->onFinish()V

    .line 473
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/LoginCallback;->onStart()V

    .line 468
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 18
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/sapi2/c$E;->d()V

    .line 478
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v9

    .line 479
    .local v9, "resultCode":I
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v9}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 481
    :try_start_16
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    .local v8, "responseJSONObj":Lorg/json/JSONObject;
    const-string v13, "userinfo"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "cipherUserInfo":Ljava/lang/String;
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->c:Lcom/baidu/sapi2/utils/a;

    invoke-virtual {v13, v4}, Lcom/baidu/sapi2/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, "plainUserInfo":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 485
    .local v12, "userInfoJSONObj":Lorg/json/JSONObject;
    const-string v13, "sdk"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 486
    .local v11, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v13, "msg"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, "resultMsg":Ljava/lang/String;
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v10}, Lcom/baidu/sapi2/result/LoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 489
    new-instance v2, Lcom/baidu/sapi2/result/SapiResult$Action;

    invoke-direct {v2}, Lcom/baidu/sapi2/result/SapiResult$Action;-><init>()V

    .line 490
    .local v2, "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    const-string v13, "action"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->fromString(Ljava/lang/String;)Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionMode:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    .line 491
    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/sapi2/result/SapiResult$ActionType;->fromString(Ljava/lang/String;)Lcom/baidu/sapi2/result/SapiResult$ActionType;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionType:Lcom/baidu/sapi2/result/SapiResult$ActionType;

    .line 492
    const-string v13, "title"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionTitle:Ljava/lang/String;

    .line 493
    const-string v13, "url"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionUrl:Ljava/lang/String;

    .line 494
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    iput-object v2, v13, Lcom/baidu/sapi2/result/LoginResult;->action:Lcom/baidu/sapi2/result/SapiResult$Action;

    .line 496
    const-string v13, "needvcode"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a3

    const/4 v3, 0x1

    .line 497
    .local v3, "captchaRequired":Z
    :goto_7a
    if-eqz v3, :cond_8e

    .line 498
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    const-string v14, "vcodestr"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 501
    :cond_8e
    sget-object v13, Lcom/baidu/sapi2/c$O;->a:[I

    iget-object v14, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionMode:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    invoke-virtual {v14}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_122

    .line 526
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 533
    .end local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .end local v3    # "captchaRequired":Z
    .end local v4    # "cipherUserInfo":Ljava/lang/String;
    .end local v6    # "plainUserInfo":Ljava/lang/String;
    .end local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v10    # "resultMsg":Ljava/lang/String;
    .end local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_a2
    return-void

    .line 496
    .restart local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .restart local v4    # "cipherUserInfo":Ljava/lang/String;
    .restart local v6    # "plainUserInfo":Ljava/lang/String;
    .restart local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v10    # "resultMsg":Ljava/lang/String;
    .restart local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :cond_a3
    const/4 v3, 0x0

    goto :goto_7a

    .line 503
    .restart local v3    # "captchaRequired":Z
    :pswitch_a5
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-static {v13, v14}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/dto/LoginDTO;)Lcom/baidu/sapi2/dto/LoginDTO;

    .line 504
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onProxyActionRequired(Lcom/baidu/sapi2/result/LoginResult;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_b3} :catch_b4

    goto :goto_a2

    .line 529
    .end local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .end local v3    # "captchaRequired":Z
    .end local v4    # "cipherUserInfo":Ljava/lang/String;
    .end local v6    # "plainUserInfo":Ljava/lang/String;
    .end local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v10    # "resultMsg":Ljava/lang/String;
    .end local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_b4
    move-exception v5

    .line 530
    .local v5, "e":Ljava/lang/Exception;
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 531
    invoke-static {v5}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_a2

    .line 507
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .restart local v3    # "captchaRequired":Z
    .restart local v4    # "cipherUserInfo":Ljava/lang/String;
    .restart local v6    # "plainUserInfo":Ljava/lang/String;
    .restart local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v10    # "resultMsg":Ljava/lang/String;
    .restart local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :pswitch_c0
    if-nez v9, :cond_10d

    .line 508
    :try_start_c2
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    invoke-virtual {v13, v12}, Lcom/baidu/sapi2/c;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    .line 509
    .local v1, "account":Lcom/baidu/sapi2/SapiAccount;
    new-instance v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v7}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    .line 511
    .local v7, "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    iget-object v13, v13, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    .line 512
    const-string v13, "logintype"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    .line 513
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    iget-object v13, v13, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-static {v13}, Lcom/baidu/sapi2/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    .line 514
    const-string v13, "ubi"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    .line 515
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->e:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v13

    iget-object v14, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v13, v14, v7}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 517
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 518
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_a2

    .line 519
    .end local v1    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v7    # "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    :cond_10d
    const/16 v13, 0x12

    if-ne v9, v13, :cond_119

    .line 520
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onLoginTypeConflict(Lcom/baidu/sapi2/result/LoginResult;)V

    goto :goto_a2

    .line 522
    :cond_119
    iget-object v13, p0, Lcom/baidu/sapi2/c$b;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$b;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_120} :catch_b4

    goto :goto_a2

    .line 501
    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_c0
    .end packed-switch
.end method
