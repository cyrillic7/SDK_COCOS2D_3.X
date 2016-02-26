.class public Lcom/tencent/msdk/request/WxRequestMng;
.super Ljava/lang/Object;
.source "WxRequestMng.java"

# interfaces
.implements Lcom/tencent/msdk/communicator/IHttpRequestListener;


# static fields
.field private static final DEFAULT_WX_ACCESS_TOKEN_EXPIRATION:I = 0x1c20

.field private static final DEFAULT_WX_REFRESH_TOKEN_EXPIRATION:I = 0x278d00


# instance fields
.field private final REFRESH_RETRY_TIME_EVENT_NAME:Ljava/lang/String;

.field private final REFRESH_TIME_EVENT_NAME:Ljava/lang/String;

.field private final SAMPLE_RATE:I

.field private callbackMsg:Ljava/lang/String;

.field private currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

.field private forceNotify:Z

.field private notifyState:I

.field private refreshRetryStartTime:J

.field private refreshStartTime:J

.field private req:Lcom/tencent/msdk/request/WxRequest;

.field private reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/tencent/msdk/request/WxRequest;

    invoke-direct {v0}, Lcom/tencent/msdk/request/WxRequest;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->req:Lcom/tencent/msdk/request/WxRequest;

    .line 44
    new-instance v0, Lcom/tencent/msdk/api/WakeupRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/WakeupRet;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    .line 45
    iput v1, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->callbackMsg:Ljava/lang/String;

    .line 47
    iput-wide v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    .line 48
    iput-wide v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshRetryStartTime:J

    .line 49
    const-string v0, "wgFirstRefreshTime"

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->REFRESH_TIME_EVENT_NAME:Ljava/lang/String;

    .line 50
    const-string v0, "wgSecondRefreshTime"

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->REFRESH_RETRY_TIME_EVENT_NAME:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->SAMPLE_RATE:I

    .line 55
    iput-boolean v1, p0, Lcom/tencent/msdk/request/WxRequestMng;->forceNotify:Z

    return-void
.end method

.method private callNotifyLogin(ZLjava/lang/String;II)V
    .registers 7
    .param p1, "isOk"    # Z
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "what"    # I

    .prologue
    .line 276
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginManager;->getIsGameRequest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notifyLogin(ZII)V

    .line 298
    :goto_d
    return-void

    .line 280
    :cond_e
    const/16 v0, 0x7e2

    if-ne v0, p4, :cond_52

    .line 281
    if-eqz p1, :cond_33

    .line 282
    iget-boolean v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->forceNotify:Z

    if-eqz v0, :cond_1c

    .line 283
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notifyLogin(ZII)V

    goto :goto_d

    .line 285
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLogin wxRequest finish but not notify, statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_d

    .line 288
    :cond_33
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_3b

    .line 289
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notifyLogin(ZII)V

    goto :goto_d

    .line 291
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLogin wxRequest finish but not notify, statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_d

    .line 295
    :cond_52
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notifyLogin(ZII)V

    goto :goto_d
.end method

.method private notifyLogin(ZII)V
    .registers 11
    .param p1, "isOk"    # Z
    .param p2, "what"    # I
    .param p3, "statusCode"    # I

    .prologue
    const/16 v6, 0x7dd

    const/16 v5, 0x7dc

    const/16 v4, 0x7d6

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/login/LoginManager;->setIsGameRequest(Z)V

    .line 306
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 307
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 308
    const/4 v1, 0x1

    if-ne v1, p1, :cond_a9

    .line 309
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 310
    if-ne p2, v6, :cond_7a

    .line 311
    iput v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 312
    const/16 v1, 0x7d5

    sget v2, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-static {v1, v2}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 350
    :cond_31
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->callbackMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLogin flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 353
    return-void

    .line 315
    :cond_7a
    if-ne p2, v5, :cond_87

    .line 316
    iput v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 317
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-static {v2, v1}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_31

    .line 319
    :cond_87
    const/16 v1, 0x7de

    if-eq p2, v1, :cond_8f

    const/16 v1, 0x7df

    if-ne p2, v1, :cond_9a

    .line 321
    :cond_8f
    iput v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 322
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-static {v2, v1}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_31

    .line 324
    :cond_9a
    const/16 v1, 0x7e2

    if-ne p2, v1, :cond_31

    .line 325
    iput v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 326
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-static {v2, v1}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_31

    .line 329
    :cond_a9
    const/16 v1, 0xc8

    if-eq p3, v1, :cond_b7

    .line 330
    const/16 v1, 0x3eb

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 331
    const-string v1, "network error"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_31

    .line 333
    :cond_b7
    if-ne p2, v6, :cond_c5

    .line 334
    iput v4, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 335
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-static {v4, v1}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_31

    .line 337
    :cond_c5
    if-ne p2, v5, :cond_d0

    .line 338
    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 339
    const-string v1, "MSDK\u7528Code\u6362\u53d6accessToken\u5931\u8d25"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_31

    .line 340
    :cond_d0
    const/16 v1, 0x7de

    if-eq p2, v1, :cond_d8

    const/16 v1, 0x7df

    if-ne p2, v1, :cond_e0

    .line 342
    :cond_d8
    iput v3, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 343
    const-string v1, "\u81ea\u52a8\u767b\u5f55\u7528refreshToken\u6362\u53d6accessToken\u5931\u8d25"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_31

    .line 344
    :cond_e0
    const/16 v1, 0x7e2

    if-ne p2, v1, :cond_31

    .line 345
    iput v3, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 346
    const-string v1, "local AccessToken & RefreshToken is expired!"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_31
.end method

.method private notifyWakup(Z)V
    .registers 4
    .param p1, "isOk"    # Z

    .prologue
    .line 357
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/request/WxRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 358
    return-void
.end method

.method private reportEventToBeacon(IZIZ)V
    .registers 16
    .param p1, "what"    # I
    .param p2, "success"    # Z
    .param p3, "errCode"    # I
    .param p4, "isLogicError"    # Z

    .prologue
    const/16 v0, 0x7de

    const/16 v1, 0x7dc

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 441
    if-eqz p2, :cond_2c

    .line 442
    if-ne p1, v0, :cond_14

    .line 443
    const-string v1, "wxExpiredLoginReq"

    iget-wide v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    .line 467
    :cond_13
    :goto_13
    return-void

    .line 444
    :cond_14
    const/16 v0, 0x7df

    if-ne p1, v0, :cond_21

    .line 445
    const-string v1, "wxExpiredLoginReq"

    iget-wide v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshRetryStartTime:J

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_13

    .line 446
    :cond_21
    if-ne p1, v1, :cond_13

    .line 447
    const-string v1, "wxFirstLoginReq"

    iget-wide v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_13

    .line 450
    :cond_2c
    if-ne p1, v0, :cond_71

    .line 451
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 452
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "param_FailCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_6f

    move v0, v4

    :goto_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v5, "wxExpiredLoginReq"

    iget-wide v6, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_13

    :cond_6f
    move v0, v8

    .line 453
    goto :goto_5b

    .line 455
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_71
    const/16 v0, 0x7df

    if-ne p1, v0, :cond_b9

    .line 456
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 457
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "param_FailCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_b7

    move v0, v4

    :goto_a2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v5, "wxExpiredLoginReq"

    iget-wide v6, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshRetryStartTime:J

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto/16 :goto_13

    :cond_b7
    move v0, v8

    .line 458
    goto :goto_a2

    .line 460
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b9
    if-ne p1, v1, :cond_13

    .line 461
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 462
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "param_FailCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_fd

    move v0, v4

    :goto_e8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v5, "wxFirstLoginReq"

    iget-wide v6, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto/16 :goto_13

    :cond_fd
    move v0, v8

    .line 463
    goto :goto_e8
.end method

.method public static updateWxInfo(Lcom/tencent/msdk/request/WxResponse;)Z
    .registers 15
    .param p0, "rspFromLogin"    # Lcom/tencent/msdk/request/WxResponse;

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 177
    .local v2, "curTime":J
    const/4 v0, 0x0

    .line 178
    .local v0, "bForceNotify":Z
    iget-object v9, p0, Lcom/tencent/msdk/request/WxResponse;->openid:Ljava/lang/String;

    if-nez v9, :cond_bb

    const-string v4, ""

    .line 179
    .local v4, "s_open_id":Ljava/lang/String;
    :goto_f
    iget-object v9, p0, Lcom/tencent/msdk/request/WxResponse;->accessToken:Ljava/lang/String;

    if-nez v9, :cond_bf

    const-string v1, ""

    .line 180
    .local v1, "s_access_token":Ljava/lang/String;
    :goto_15
    iget-object v9, p0, Lcom/tencent/msdk/request/WxResponse;->refreshToken:Ljava/lang/String;

    if-nez v9, :cond_c3

    const-string v7, ""

    .line 181
    .local v7, "s_refresh_token":Ljava/lang/String;
    :goto_1b
    iget-object v9, p0, Lcom/tencent/msdk/request/WxResponse;->pf:Ljava/lang/String;

    if-nez v9, :cond_c7

    const-string v5, ""

    .line 182
    .local v5, "s_pf":Ljava/lang/String;
    :goto_21
    iget-object v9, p0, Lcom/tencent/msdk/request/WxResponse;->pfKey:Ljava/lang/String;

    if-nez v9, :cond_cb

    const-string v6, ""

    .line 184
    .local v6, "s_pf_key":Ljava/lang/String;
    :goto_27
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/msdk/login/LoginManager;->getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v8

    .line 185
    .local v8, "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v8, :cond_d6

    .line 186
    const/4 v0, 0x1

    .line 187
    new-instance v8, Lcom/tencent/msdk/db/WxLoginModel;

    .end local v8    # "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-direct {v8}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    .line 189
    .restart local v8    # "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    const-wide/32 v10, 0x278d00

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 190
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    if-eqz v9, :cond_cf

    .line 191
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    int-to-long v10, v9

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 211
    :cond_47
    :goto_47
    iput-object v4, v8, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    .line 212
    iput-object v1, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 213
    iput-object v7, v8, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 214
    iput-object v5, v8, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    .line 215
    iput-object v6, v8, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    .line 217
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->checkTokenFlag:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_112

    .line 219
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    if-eqz v9, :cond_60

    .line 220
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    int-to-long v10, v9

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 238
    :cond_60
    :goto_60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rspFromLogin.expired:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wxUserInfo.access_token_expire:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wxUserInfo.refresh_token_expire"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v8}, Lcom/tencent/msdk/db/WxLoginModel;->save()Z

    .line 243
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/msdk/request/WxResponse;->regChannel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tencent/msdk/pf/WGPfManager;->setRegChannelId(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/msdk/request/WxResponse;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tencent/msdk/permission/PermissionManage;->updateDataFromNet(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/tencent/msdk/control/SwitcherManager;->getInstance()Lcom/tencent/msdk/control/SwitcherManager;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/msdk/request/WxResponse;->otherFuncs:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tencent/msdk/control/SwitcherManager;->updateSwitchData(Ljava/lang/String;)V

    .line 248
    return v0

    .line 178
    .end local v1    # "s_access_token":Ljava/lang/String;
    .end local v4    # "s_open_id":Ljava/lang/String;
    .end local v5    # "s_pf":Ljava/lang/String;
    .end local v6    # "s_pf_key":Ljava/lang/String;
    .end local v7    # "s_refresh_token":Ljava/lang/String;
    .end local v8    # "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :cond_bb
    iget-object v4, p0, Lcom/tencent/msdk/request/WxResponse;->openid:Ljava/lang/String;

    goto/16 :goto_f

    .line 179
    .restart local v4    # "s_open_id":Ljava/lang/String;
    :cond_bf
    iget-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->accessToken:Ljava/lang/String;

    goto/16 :goto_15

    .line 180
    .restart local v1    # "s_access_token":Ljava/lang/String;
    :cond_c3
    iget-object v7, p0, Lcom/tencent/msdk/request/WxResponse;->refreshToken:Ljava/lang/String;

    goto/16 :goto_1b

    .line 181
    .restart local v7    # "s_refresh_token":Ljava/lang/String;
    :cond_c7
    iget-object v5, p0, Lcom/tencent/msdk/request/WxResponse;->pf:Ljava/lang/String;

    goto/16 :goto_21

    .line 182
    .restart local v5    # "s_pf":Ljava/lang/String;
    :cond_cb
    iget-object v6, p0, Lcom/tencent/msdk/request/WxResponse;->pfKey:Ljava/lang/String;

    goto/16 :goto_27

    .line 193
    .restart local v6    # "s_pf_key":Ljava/lang/String;
    .restart local v8    # "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :cond_cf
    const-wide/16 v10, 0x1c20

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    goto/16 :goto_47

    .line 196
    :cond_d6
    iget-object v9, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fe

    iget-object v9, v8, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fe

    iget-object v9, v8, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fe

    iget-object v9, v8, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fe

    iget-object v9, v8, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10f

    .line 201
    :cond_fe
    const/4 v0, 0x1

    .line 203
    iget-object v9, v8, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    .line 204
    const-wide/32 v10, 0x278d00

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    goto/16 :goto_47

    .line 207
    :cond_10f
    const/4 v0, 0x0

    goto/16 :goto_47

    .line 222
    :cond_112
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->checkTokenFlag:I

    if-nez v9, :cond_129

    .line 224
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    if-eqz v9, :cond_122

    .line 225
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    int-to-long v10, v9

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    goto/16 :goto_60

    .line 227
    :cond_122
    const-wide/16 v10, 0x1c20

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    goto/16 :goto_60

    .line 230
    :cond_129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wxUserInfo bad checkTokenFlag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/tencent/msdk/request/WxResponse;->checkTokenFlag:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 232
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    if-eqz v9, :cond_14d

    .line 233
    iget v9, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    int-to-long v10, v9

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    goto/16 :goto_60

    .line 235
    :cond_14d
    const-wide/16 v10, 0x1c20

    add-long/2addr v10, v2

    iput-wide v10, v8, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    goto/16 :goto_60
.end method

.method private wxExpiredLoginReq(IIZ)V
    .registers 26
    .param p1, "notifyState"    # I
    .param p2, "msgNo"    # I
    .param p3, "needVarify"    # Z

    .prologue
    .line 126
    new-instance v16, Ljava/util/Properties;

    invoke-direct/range {v16 .. v16}, Ljava/util/Properties;-><init>()V

    .line 127
    .local v16, "p":Ljava/util/Properties;
    const-string v12, "startTime"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v12, 0x7de

    move/from16 v0, p2

    if-ne v0, v12, :cond_76

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    .line 134
    :cond_39
    :goto_39
    const-string v12, "wxExpiredLoginReq"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 135
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    .line 136
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/msdk/login/LoginManager;->getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    if-eqz v12, :cond_60

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    invoke-virtual {v12}, Lcom/tencent/msdk/db/WxLoginModel;->isExisted()Z

    move-result v12

    if-nez v12, :cond_87

    .line 138
    :cond_60
    const-string v12, "wxUserInfo is not Existed"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 140
    const/4 v12, 0x0

    const-string v18, "wxUserInfo is not Existed"

    const/16 v19, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    .line 170
    :goto_75
    return-void

    .line 130
    :cond_76
    const/16 v12, 0x7df

    move/from16 v0, p2

    if-ne v0, v12, :cond_39

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tencent/msdk/request/WxRequestMng;->refreshRetryStartTime:J

    goto :goto_39

    .line 144
    :cond_87
    new-instance v4, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->req:Lcom/tencent/msdk/request/WxRequest;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v12}, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;-><init>(Lcom/tencent/msdk/request/WxRequest;)V

    .line 145
    .local v4, "loginReq":Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v12

    iget-object v8, v12, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    .line 146
    .local v8, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "channel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v6, v12, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 148
    .local v6, "accessToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v7, v12, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 149
    .local v7, "refreshToken":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/msdk/pf/WGPfManager;->getPlatformId()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "platformId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v12

    iget-object v10, v12, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 151
    .local v10, "offerId":Ljava/lang/String;
    const-string v5, ""

    .line 152
    .local v5, "grantType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v15, v12, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    .line 153
    .local v15, "openId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v12

    sget v18, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/msdk/request/WxRequestMng;->reqWXUserInfo:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v12, v12, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    invoke-virtual/range {v4 .. v12}, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 158
    .local v14, "json":Lorg/json/JSONObject;
    if-eqz p3, :cond_e3

    .line 159
    :try_start_da
    const-string v12, "checkTokenFlag"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    :cond_e3
    sget-object v12, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v12}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/msdk/stat/MsdkStat;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v14, v0}, Lcom/tencent/msdk/stat/MsdkStat;->addLoginLog(Lorg/json/JSONObject;Z)V
    :try_end_f2
    .catch Lorg/json/JSONException; {:try_start_da .. :try_end_f2} :catch_158

    .line 165
    :goto_f2
    const-string v12, "/auth/wxexpired_login/"

    sget v18, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    move/from16 v0, v18

    invoke-static {v12, v0, v15}, Lcom/tencent/msdk/communicator/UrlManager;->getUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, "url":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "json: "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "url: "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, ", checkTokenFlag:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 169
    new-instance v12, Lcom/tencent/msdk/communicator/HttpRequestManager;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v12, v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_75

    .line 162
    .end local v17    # "url":Ljava/lang/String;
    :catch_158
    move-exception v13

    .line 163
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f2
.end method


# virtual methods
.method protected getInterfaceName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "name":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "nameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 91
    .local v0, "interfaceName":Ljava/lang/String;
    if-eqz v2, :cond_19

    array-length v3, v2

    if-lez v3, :cond_19

    .line 92
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 94
    :cond_19
    return-object v0
.end method

.method public notify(ZLjava/lang/String;II)V
    .registers 7
    .param p1, "isOk"    # Z
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "what"    # I

    .prologue
    .line 259
    const/16 v0, 0x7e2

    if-ne v0, p4, :cond_c

    .line 260
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 262
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->callbackMsg:Ljava/lang/String;

    .line 263
    iget v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/msdk/request/WxRequestMng;->callNotifyLogin(ZLjava/lang/String;II)V

    .line 269
    :cond_33
    :goto_33
    return-void

    .line 265
    :cond_34
    iget v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 266
    invoke-direct {p0, p1}, Lcom/tencent/msdk/request/WxRequestMng;->notifyWakup(Z)V

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/msdk/request/WxRequestMng;->callNotifyLogin(ZLjava/lang/String;II)V

    goto :goto_33
.end method

.method public onFailure(Ljava/lang/String;II)V
    .registers 14
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/16 v9, 0xbb9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 471
    const/16 v2, 0x7de

    if-ne p3, v2, :cond_58

    .line 472
    new-instance v0, Lcom/tencent/stat/StatAppMonitor;

    const-string v2, "wgFirstRefreshTime"

    invoke-direct {v0, v2}, Lcom/tencent/stat/StatAppMonitor;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "refreshMonitor":Lcom/tencent/stat/StatAppMonitor;
    invoke-virtual {v0, v6}, Lcom/tencent/stat/StatAppMonitor;->setSampling(I)V

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/tencent/stat/StatAppMonitor;->setMillisecondsConsume(J)V

    .line 475
    if-ne p2, v9, :cond_54

    .line 476
    invoke-virtual {v0, v8}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V

    .line 480
    :goto_22
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/stat/StatService;->reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;)V

    .line 497
    .end local v0    # "refreshMonitor":Lcom/tencent/stat/StatAppMonitor;
    :cond_2d
    :goto_2d
    invoke-direct {p0, p3, v7, p2, v7}, Lcom/tencent/msdk/request/WxRequestMng;->reportEventToBeacon(IZIZ)V

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorContent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0, v7, p1, p2, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    .line 500
    return-void

    .line 478
    .restart local v0    # "refreshMonitor":Lcom/tencent/stat/StatAppMonitor;
    :cond_54
    invoke-virtual {v0, v6}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V

    goto :goto_22

    .line 481
    .end local v0    # "refreshMonitor":Lcom/tencent/stat/StatAppMonitor;
    :cond_58
    const/16 v2, 0x7df

    if-ne p3, v2, :cond_2d

    .line 482
    new-instance v1, Lcom/tencent/stat/StatAppMonitor;

    const-string v2, "wgSecondRefreshTime"

    invoke-direct {v1, v2}, Lcom/tencent/stat/StatAppMonitor;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "refreshRetryMonitor":Lcom/tencent/stat/StatAppMonitor;
    invoke-virtual {v1, v6}, Lcom/tencent/stat/StatAppMonitor;->setSampling(I)V

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshRetryStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/stat/StatAppMonitor;->setMillisecondsConsume(J)V

    .line 485
    if-ne p2, v9, :cond_81

    .line 487
    invoke-virtual {v1, v8}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V

    .line 494
    :goto_75
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/stat/StatService;->reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;)V

    goto :goto_2d

    .line 489
    :cond_81
    invoke-virtual {v1, v6}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V

    goto :goto_75
.end method

.method public onSuccess(Ljava/lang/String;II)V
    .registers 16
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    .line 365
    const/16 v7, 0x7de

    if-ne p3, v7, :cond_55

    .line 366
    new-instance v4, Lcom/tencent/stat/StatAppMonitor;

    const-string v7, "wgFirstRefreshTime"

    invoke-direct {v4, v7}, Lcom/tencent/stat/StatAppMonitor;-><init>(Ljava/lang/String;)V

    .line 367
    .local v4, "refreshMonitor":Lcom/tencent/stat/StatAppMonitor;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/tencent/stat/StatAppMonitor;->setSampling(I)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lcom/tencent/stat/StatAppMonitor;->setMillisecondsConsume(J)V

    .line 369
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V

    .line 370
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/tencent/stat/StatService;->reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;)V

    .line 382
    .end local v4    # "refreshMonitor":Lcom/tencent/stat/StatAppMonitor;
    :cond_28
    :goto_28
    const-string v0, ""

    .line 383
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Lcom/tencent/msdk/request/WxResponse;

    invoke-direct {v6}, Lcom/tencent/msdk/request/WxResponse;-><init>()V

    .line 385
    .local v6, "rsp":Lcom/tencent/msdk/request/WxResponse;
    if-nez p1, :cond_7e

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSuccess: statusCode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 387
    const/4 v7, 0x0

    const-string v8, "response no params"

    invoke-virtual {p0, v7, v8, p2, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    .line 388
    const/4 v7, 0x0

    const/16 v8, 0x3ea

    const/4 v9, 0x0

    invoke-direct {p0, p3, v7, v8, v9}, Lcom/tencent/msdk/request/WxRequestMng;->reportEventToBeacon(IZIZ)V

    .line 438
    :cond_54
    :goto_54
    return-void

    .line 371
    .end local v0    # "content":Ljava/lang/String;
    .end local v6    # "rsp":Lcom/tencent/msdk/request/WxResponse;
    :cond_55
    const/16 v7, 0x7df

    if-ne p3, v7, :cond_28

    .line 372
    new-instance v5, Lcom/tencent/stat/StatAppMonitor;

    const-string v7, "wgSecondRefreshTime"

    invoke-direct {v5, v7}, Lcom/tencent/stat/StatAppMonitor;-><init>(Ljava/lang/String;)V

    .line 373
    .local v5, "refreshRetryMonitor":Lcom/tencent/stat/StatAppMonitor;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/tencent/stat/StatAppMonitor;->setSampling(I)V

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshRetryStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/tencent/stat/StatAppMonitor;->setMillisecondsConsume(J)V

    .line 375
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V

    .line 379
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/tencent/stat/StatService;->reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;)V

    goto :goto_28

    .line 392
    .end local v5    # "refreshRetryMonitor":Lcom/tencent/stat/StatAppMonitor;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v6    # "rsp":Lcom/tencent/msdk/request/WxResponse;
    :cond_7e
    :try_start_7e
    new-instance v2, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v2, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v6, v2}, Lcom/tencent/msdk/request/WxResponse;->parseJson(Lorg/json/JSONObject;)V

    .line 394
    iget-object v0, v6, Lcom/tencent/msdk/request/WxResponse;->msg:Ljava/lang/String;

    .line 395
    iget v7, v6, Lcom/tencent/msdk/request/WxResponse;->ret:I

    if-nez v7, :cond_106

    .line 397
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v7

    iget-object v8, v6, Lcom/tencent/msdk/request/WxResponse;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tencent/msdk/permission/PermissionManage;->updateDataFromNet(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/tencent/msdk/control/SwitcherManager;->getInstance()Lcom/tencent/msdk/control/SwitcherManager;

    move-result-object v7

    iget-object v8, v6, Lcom/tencent/msdk/request/WxResponse;->otherFuncs:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tencent/msdk/control/SwitcherManager;->updateSwitchData(Ljava/lang/String;)V

    .line 400
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p3, v7, v8, v9}, Lcom/tencent/msdk/request/WxRequestMng;->reportEventToBeacon(IZIZ)V

    .line 403
    const/16 v7, 0x7dc

    if-ne p3, v7, :cond_fa

    sget-object v7, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v7}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v7}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->needQueryWhiteList()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 405
    sget-object v7, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v7}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v7, v6}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setTmpWXLoginInfo(Lcom/tencent/msdk/request/WxResponse;)V

    .line 407
    sget-object v7, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v7}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    sget v8, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iget-object v9, v6, Lcom/tencent/msdk/request/WxResponse;->openid:Ljava/lang/String;

    iget-object v10, v6, Lcom/tencent/msdk/request/WxResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->queryUserWhiteListAsync(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_d2} :catch_d3

    goto :goto_54

    .line 431
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_d3
    move-exception v1

    .line 432
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSONException json: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 434
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v0, p2, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    .line 436
    const/4 v7, 0x0

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    invoke-direct {p0, p3, v7, v8, v9}, Lcom/tencent/msdk/request/WxRequestMng;->reportEventToBeacon(IZIZ)V

    goto/16 :goto_54

    .line 410
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_fa
    :try_start_fa
    invoke-static {v6}, Lcom/tencent/msdk/request/WxRequestMng;->updateWxInfo(Lcom/tencent/msdk/request/WxResponse;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/tencent/msdk/request/WxRequestMng;->forceNotify:Z

    .line 411
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v0, p2, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    goto/16 :goto_54

    .line 414
    :cond_106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSuccess error ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tencent/msdk/request/WxResponse;->ret:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/tencent/msdk/request/WxResponse;->msg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 416
    const/4 v7, 0x0

    iget v8, v6, Lcom/tencent/msdk/request/WxResponse;->ret:I

    const/4 v9, 0x1

    invoke-direct {p0, p3, v7, v8, v9}, Lcom/tencent/msdk/request/WxRequestMng;->reportEventToBeacon(IZIZ)V

    .line 417
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v0, p2, p3}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    .line 419
    const/16 v7, 0x7e2

    if-ne v7, p3, :cond_54

    .line 421
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/login/LoginManager;->getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v3

    .line 422
    .local v3, "lastLM":Lcom/tencent/msdk/db/WxLoginModel;
    iget v7, v6, Lcom/tencent/msdk/request/WxResponse;->ret:I

    const/16 v8, -0x2710

    if-eq v7, v8, :cond_14d

    iget v7, v6, Lcom/tencent/msdk/request/WxResponse;->ret:I

    const/16 v8, -0x4e20

    if-ne v7, v8, :cond_54

    .line 423
    :cond_14d
    if-eqz v3, :cond_54

    .line 424
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 425
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 426
    invoke-virtual {v3}, Lcom/tencent/msdk/db/WxLoginModel;->save()Z
    :try_end_15a
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_15a} :catch_d3

    goto/16 :goto_54
.end method

.method public verifyLocalAndRefreshWxToken(Lcom/tencent/msdk/db/WxLoginModel;I)V
    .registers 7
    .param p1, "qlm"    # Lcom/tencent/msdk/db/WxLoginModel;
    .param p2, "needVarifyArg"    # I

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1}, Lcom/tencent/msdk/db/WxLoginModel;->getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;

    move-result-object v0

    .line 109
    .local v0, "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    if-nez v0, :cond_13

    .line 110
    iput v1, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    .line 115
    :goto_9
    iget v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    const/16 v3, 0x7e2

    if-ne p2, v1, :cond_19

    :goto_f
    invoke-direct {p0, v2, v3, v1}, Lcom/tencent/msdk/request/WxRequestMng;->wxExpiredLoginReq(IIZ)V

    .line 116
    return-void

    .line 112
    :cond_13
    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    .line 113
    const/4 v2, 0x2

    iput v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    goto :goto_9

    .line 115
    :cond_19
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public wxExpiredLoginReq(IZ)V
    .registers 5
    .param p1, "notifyState"    # I
    .param p2, "isTimerRefresh"    # Z

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wxExpiredLoginReq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 103
    const/16 v0, 0x7dd

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/msdk/request/WxRequestMng;->wxExpiredLoginReq(IIZ)V

    .line 104
    return-void
.end method

.method public wxFirstLoginReq(Ljava/lang/String;I)V
    .registers 16
    .param p1, "wxCode"    # Ljava/lang/String;
    .param p2, "notifyState"    # I

    .prologue
    const/16 v12, 0x7dc

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/tencent/msdk/request/WxRequestMng;->refreshStartTime:J

    .line 61
    iput p2, p0, Lcom/tencent/msdk/request/WxRequestMng;->notifyState:I

    .line 62
    if-eqz p1, :cond_14

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 63
    :cond_14
    const/4 v2, 0x0

    const-string v9, "wxFirstLoginReq wxCode is empty"

    const/16 v10, 0xc8

    invoke-virtual {p0, v2, v9, v10, v12}, Lcom/tencent/msdk/request/WxRequestMng;->notify(ZLjava/lang/String;II)V

    .line 65
    const-string v2, "wxFirstLoginReq wxCode is empty"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 85
    :goto_21
    return-void

    .line 68
    :cond_22
    new-instance v0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;

    iget-object v2, p0, Lcom/tencent/msdk/request/WxRequestMng;->req:Lcom/tencent/msdk/request/WxRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;-><init>(Lcom/tencent/msdk/request/WxRequest;)V

    .line 70
    .local v0, "loginReq":Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    .line 71
    .local v3, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v5, v2, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 73
    .local v5, "offerId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/pf/WGPfManager;->getPlatformId()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "platformId":Ljava/lang/String;
    const-string v1, ""

    .line 75
    .local v1, "grantType":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    sget v9, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-virtual {v2, v9}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    move-object v2, p1

    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 80
    .local v7, "json":Lorg/json/JSONObject;
    sget-object v2, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v2}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/msdk/stat/MsdkStat;

    const/4 v9, 0x1

    invoke-virtual {v2, v7, v9}, Lcom/tencent/msdk/stat/MsdkStat;->addLoginLog(Lorg/json/JSONObject;Z)V

    .line 82
    const-string v2, "/auth/wxfirst_login/"

    sget v9, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-static {v2, v9}, Lcom/tencent/msdk/communicator/UrlManager;->getUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "url":Ljava/lang/String;
    new-instance v2, Lcom/tencent/msdk/communicator/HttpRequestManager;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9, v12}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_21
.end method
