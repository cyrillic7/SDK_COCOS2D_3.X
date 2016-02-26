.class public Lcom/tencent/msdk/request/PfKeyRequestMng;
.super Ljava/lang/Object;
.source "PfKeyRequestMng.java"

# interfaces
.implements Lcom/tencent/msdk/communicator/IHttpRequestListener;


# static fields
.field public static final PT_EXPIRED_KEY:Ljava/lang/String; = "paytoken_expire_time"


# instance fields
.field private callbackMsg:Ljava/lang/String;

.field private currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

.field private forceNotify:Z

.field private notifyState:I

.field private refreshStartTime:J

.field private tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->refreshStartTime:J

    .line 45
    new-instance v0, Lcom/tencent/msdk/api/WakeupRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/WakeupRet;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->callbackMsg:Ljava/lang/String;

    .line 51
    iput-boolean v2, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->forceNotify:Z

    return-void
.end method

.method private notify(ZLjava/lang/String;II)V
    .registers 9
    .param p1, "isOk"    # Z
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "what"    # I

    .prologue
    const/16 v3, 0x7e1

    const/4 v2, 0x2

    .line 168
    if-eq v3, p4, :cond_15

    const/16 v0, 0x7e0

    if-ne v0, p4, :cond_d

    iget v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    if-eq v0, v2, :cond_15

    :cond_d
    const/16 v0, 0x7da

    if-ne v0, p4, :cond_1d

    iget v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    if-ne v0, v2, :cond_1d

    .line 171
    :cond_15
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 173
    :cond_1d
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

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->callbackMsg:Ljava/lang/String;

    .line 174
    iget v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_95

    .line 182
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginManager;->getIsGameRequest()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 183
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyLogin(ZII)V

    .line 213
    :cond_4e
    :goto_4e
    return-void

    .line 186
    :cond_4f
    if-ne v3, p4, :cond_91

    .line 187
    if-eqz p1, :cond_72

    .line 188
    iget-boolean v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->forceNotify:Z

    if-eqz v0, :cond_5b

    .line 189
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyLogin(ZII)V

    goto :goto_4e

    .line 191
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLogin PfkeyRequest finish but not notify, statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_4e

    .line 194
    :cond_72
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_7a

    .line 195
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyLogin(ZII)V

    goto :goto_4e

    .line 197
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLogin PfkeyRequest finish but not notify, statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_4e

    .line 201
    :cond_91
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyLogin(ZII)V

    goto :goto_4e

    .line 204
    :cond_95
    iget v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    if-ne v0, v2, :cond_4e

    .line 207
    invoke-direct {p0, p1}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyWakup(Z)V

    .line 208
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginManager;->getIsGameRequest()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    iget v0, v0, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    const/16 v1, 0xbba

    if-ne v0, v1, :cond_4e

    .line 210
    :cond_b2
    invoke-direct {p0, p1, p4, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyLogin(ZII)V

    goto :goto_4e
.end method

.method private notifyLogin(ZII)V
    .registers 7
    .param p1, "isOk"    # Z
    .param p2, "what"    # I
    .param p3, "statusCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/login/LoginManager;->setIsGameRequest(Z)V

    .line 217
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 218
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_6b

    .line 219
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 220
    iput v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 221
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v2, v1}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 237
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->callbackMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 238
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

    .line 239
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 240
    return-void

    .line 223
    :cond_6b
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v1

    iget v1, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 224
    const/16 v1, 0xc8

    if-eq p3, v1, :cond_84

    .line 225
    const/16 v1, 0x3eb

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 226
    const-string v1, "network error"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_22

    .line 228
    :cond_84
    const/16 v1, 0x7e1

    if-ne p2, v1, :cond_90

    .line 229
    const/4 v1, -0x2

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 230
    const-string v1, "check token failed, let user login again"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_22

    .line 232
    :cond_90
    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 233
    const-string v1, "check token failed, let user login again"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_22
.end method

.method private notifyWakup(Z)V
    .registers 4
    .param p1, "isOk"    # Z

    .prologue
    .line 244
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 245
    return-void
.end method

.method private reportEventToBeacon(IZIZ)V
    .registers 16
    .param p1, "what"    # I
    .param p2, "success"    # Z
    .param p3, "errCode"    # I
    .param p4, "isLogicError"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x7e0

    const/16 v0, 0x7da

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 358
    if-eqz p2, :cond_1f

    .line 359
    if-ne v1, p1, :cond_14

    .line 360
    const-string v1, "qqFirstLoginPfKeyReq"

    iget-wide v2, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->refreshStartTime:J

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    .line 377
    :cond_13
    :goto_13
    return-void

    .line 361
    :cond_14
    if-ne v0, p1, :cond_13

    .line 362
    const-string v1, "getPfKeyReqWithWakeup"

    iget-wide v2, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->refreshStartTime:J

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_13

    .line 365
    :cond_1f
    if-ne v1, p1, :cond_64

    .line 366
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 367
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

    .line 368
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_62

    move v0, v4

    :goto_4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v5, "qqFirstLoginPfKeyReq"

    iget-wide v6, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->refreshStartTime:J

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_13

    :cond_62
    move v0, v8

    .line 368
    goto :goto_4e

    .line 370
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_64
    if-ne v0, p1, :cond_13

    .line 371
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 372
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

    .line 373
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_a8

    move v0, v4

    :goto_93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v5, "getPfKeyReqWithWakeup"

    iget-wide v6, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->refreshStartTime:J

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto/16 :goto_13

    :cond_a8
    move v0, v8

    .line 373
    goto :goto_93
.end method

.method private updateLoginInfo(Lcom/tencent/msdk/request/PfKeyResponse;)V
    .registers 12
    .param p1, "rspFromLogin"    # Lcom/tencent/msdk/request/PfKeyResponse;

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 249
    .local v0, "curTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLoginInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/WeGame;->getPlatId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    if-nez v4, :cond_30

    .line 251
    const-string v4, "updateLoginInfo error null == qqloginRecord !!!"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 277
    :goto_2f
    return-void

    .line 255
    :cond_30
    iget-object v4, p1, Lcom/tencent/msdk/request/PfKeyResponse;->pf:Ljava/lang/String;

    if-nez v4, :cond_c7

    const-string v2, ""

    .line 256
    .local v2, "tmpPf":Ljava/lang/String;
    :goto_36
    iget-object v4, p1, Lcom/tencent/msdk/request/PfKeyResponse;->pfKey:Ljava/lang/String;

    if-nez v4, :cond_cb

    const-string v3, ""

    .line 257
    .local v3, "tmpPfKey":Ljava/lang/String;
    :goto_3c
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v4, v4, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v4, v4, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 258
    :cond_50
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->forceNotify:Z

    .line 260
    :cond_53
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iput-object v2, v4, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iput-object v3, v4, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rspFromLogin.paytokenExpire: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/tencent/msdk/request/PfKeyResponse;->paytokenExpire:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 263
    iget-wide v4, p1, Lcom/tencent/msdk/request/PfKeyResponse;->paytokenExpire:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_92

    .line 265
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-wide v6, p1, Lcom/tencent/msdk/request/PfKeyResponse;->paytokenExpire:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 266
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "paytoken_expire_time"

    iget-wide v6, p1, Lcom/tencent/msdk/request/PfKeyResponse;->paytokenExpire:J

    long-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 269
    :cond_92
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/QQLoginModel;->save()Z

    .line 270
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v5, v5, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v6, v6, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-wide v8, v7, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/tencent/msdk/WeGame;->setOpenSdkLoginInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 272
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/msdk/request/PfKeyResponse;->regChannel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/pf/WGPfManager;->setRegChannelId(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/msdk/request/PfKeyResponse;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/permission/PermissionManage;->updateDataFromNet(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/tencent/msdk/control/SwitcherManager;->getInstance()Lcom/tencent/msdk/control/SwitcherManager;

    move-result-object v4

    iget-object v5, p1, Lcom/tencent/msdk/request/PfKeyResponse;->otherFuncs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/control/SwitcherManager;->updateSwitchData(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 255
    .end local v2    # "tmpPf":Ljava/lang/String;
    .end local v3    # "tmpPfKey":Ljava/lang/String;
    :cond_c7
    iget-object v2, p1, Lcom/tencent/msdk/request/PfKeyResponse;->pf:Ljava/lang/String;

    goto/16 :goto_36

    .line 256
    .restart local v2    # "tmpPf":Ljava/lang/String;
    :cond_cb
    iget-object v3, p1, Lcom/tencent/msdk/request/PfKeyResponse;->pfKey:Ljava/lang/String;

    goto/16 :goto_3c
.end method


# virtual methods
.method protected getInterfaceName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "name":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "nameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 114
    .local v0, "interfaceName":Ljava/lang/String;
    if-eqz v2, :cond_19

    array-length v3, v2

    if-lez v3, :cond_19

    .line 115
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 117
    :cond_19
    return-object v0
.end method

.method public getLocalTokenByType(ILjava/util/Vector;)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/api/TokenRet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "token":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/api/TokenRet;>;"
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/api/TokenRet;

    .line 54
    .local v1, "tr":Lcom/tencent/msdk/api/TokenRet;
    iget v2, v1, Lcom/tencent/msdk/api/TokenRet;->type:I

    if-ne v2, p1, :cond_4

    .line 55
    iget-object v2, v1, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 58
    .end local v1    # "tr":Lcom/tencent/msdk/api/TokenRet;
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getPfKeyWithWakeup(ILcom/tencent/msdk/api/WakeupRet;)V
    .registers 7
    .param p1, "notifywakeup"    # I
    .param p2, "wakeup"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 63
    iput-object p2, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    .line 65
    const/4 v0, 0x0

    const-string v1, "getPfKeyReq no record in db"

    const/16 v2, 0xc8

    const/16 v3, 0x7da

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    .line 66
    return-void
.end method

.method public getQQFirstLoginPfKeyReq(Lcom/tencent/msdk/db/QQLoginModel;)V
    .registers 19
    .param p1, "qlm"    # Lcom/tencent/msdk/db/QQLoginModel;

    .prologue
    .line 70
    if-nez p1, :cond_11

    .line 71
    const/4 v13, 0x0

    const-string v14, "QQ Client Login Return NULL"

    const/16 v15, 0xc8

    const/16 v16, 0x7e0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    .line 108
    :goto_10
    return-void

    .line 75
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/msdk/db/QQLoginModel;->getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;

    move-result-object v12

    .line 78
    .local v12, "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    if-nez v12, :cond_a5

    .line 79
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    .line 85
    :goto_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/tencent/msdk/request/PfKeyRequestMng;->refreshStartTime:J

    .line 87
    new-instance v2, Lcom/tencent/msdk/request/PfKeyRequest;

    invoke-direct {v2}, Lcom/tencent/msdk/request/PfKeyRequest;-><init>()V

    .line 88
    .local v2, "loginReq":Lcom/tencent/msdk/request/PfKeyRequest;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v13

    iget-object v5, v13, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 89
    .local v5, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "channel":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 92
    .local v3, "openId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 93
    .local v4, "openKey":Ljava/lang/String;
    sget v9, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    .line 94
    .local v9, "loginPlatform":I
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 95
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateLoginInfo1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/msdk/WeGame;->getPlatId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/msdk/pf/WGPfManager;->getPlatformId()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "platformId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v13

    iget-object v7, v13, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 99
    .local v7, "offerId":Ljava/lang/String;
    invoke-virtual/range {v2 .. v9}, Lcom/tencent/msdk/request/PfKeyRequest;->getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 102
    .local v10, "json":Lorg/json/JSONObject;
    sget-object v13, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v13}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/msdk/stat/MsdkStat;

    const/4 v14, 0x1

    invoke-virtual {v13, v10, v14}, Lcom/tencent/msdk/stat/MsdkStat;->addLoginLog(Lorg/json/JSONObject;Z)V

    .line 104
    const-string v13, "/auth/getlogin_info/"

    invoke-static {v13, v9, v3}, Lcom/tencent/msdk/communicator/UrlManager;->getUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 107
    new-instance v13, Lcom/tencent/msdk/communicator/HttpRequestManager;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x7e0

    invoke-virtual {v13, v11, v14, v15}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 81
    .end local v2    # "loginReq":Lcom/tencent/msdk/request/PfKeyRequest;
    .end local v3    # "openId":Ljava/lang/String;
    .end local v4    # "openKey":Ljava/lang/String;
    .end local v5    # "appId":Ljava/lang/String;
    .end local v6    # "channel":Ljava/lang/String;
    .end local v7    # "offerId":Ljava/lang/String;
    .end local v8    # "platformId":Ljava/lang/String;
    .end local v9    # "loginPlatform":I
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "url":Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    .line 82
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    goto/16 :goto_22
.end method

.method public onFailure(Ljava/lang/String;II)V
    .registers 7
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0, p3, v2, p2, v2}, Lcom/tencent/msdk/request/PfKeyRequestMng;->reportEventToBeacon(IZIZ)V

    .line 282
    if-eqz p1, :cond_26

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorContent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 285
    :cond_26
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    .line 286
    return-void
.end method

.method public onSuccess(Ljava/lang/String;II)V
    .registers 14
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/16 v9, 0x7e1

    const/16 v7, 0x7e0

    const/4 v8, 0x0

    .line 290
    const-string v0, ""

    .line 291
    .local v0, "content":Ljava/lang/String;
    const/16 v4, 0x7da

    if-eq p3, v4, :cond_f

    if-eq v7, p3, :cond_f

    if-ne v9, p3, :cond_40

    .line 293
    :cond_f
    new-instance v3, Lcom/tencent/msdk/request/PfKeyResponse;

    invoke-direct {v3}, Lcom/tencent/msdk/request/PfKeyResponse;-><init>()V

    .line 294
    .local v3, "rspFromLogin":Lcom/tencent/msdk/request/PfKeyResponse;
    if-nez p1, :cond_41

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PfKeyRequestMng what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", http onSuccess but response no params, statusCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 297
    const-string v4, "response no params"

    invoke-direct {p0, v8, v4, p2, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    .line 298
    const/16 v4, 0x3ea

    invoke-direct {p0, p3, v8, v4, v8}, Lcom/tencent/msdk/request/PfKeyRequestMng;->reportEventToBeacon(IZIZ)V

    .line 355
    .end local v3    # "rspFromLogin":Lcom/tencent/msdk/request/PfKeyResponse;
    :cond_40
    :goto_40
    return-void

    .line 302
    .restart local v3    # "rspFromLogin":Lcom/tencent/msdk/request/PfKeyResponse;
    :cond_41
    :try_start_41
    new-instance v2, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v2, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v3, v2}, Lcom/tencent/msdk/request/PfKeyResponse;->parseJson(Lorg/json/JSONObject;)V

    .line 304
    iget-object v0, v3, Lcom/tencent/msdk/request/PfKeyResponse;->msg:Ljava/lang/String;

    .line 305
    iget v4, v3, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    if-nez v4, :cond_d3

    .line 306
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p3, v4, v5, v6}, Lcom/tencent/msdk/request/PfKeyRequestMng;->reportEventToBeacon(IZIZ)V

    .line 308
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/permission/PermissionManage;->updateDataFromNet(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/tencent/msdk/control/SwitcherManager;->getInstance()Lcom/tencent/msdk/control/SwitcherManager;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->otherFuncs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/control/SwitcherManager;->updateSwitchData(Ljava/lang/String;)V

    .line 312
    if-ne v7, p3, :cond_ca

    sget-object v4, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v4}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v4}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->needQueryWhiteList()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 314
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    if-nez v4, :cond_8d

    .line 315
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, p2, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_7f} :catch_80

    goto :goto_40

    .line 349
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_80
    move-exception v1

    .line 350
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 351
    invoke-direct {p0, v8, v0, p2, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    .line 352
    const/16 v4, 0x3e9

    invoke-direct {p0, p3, v8, v4, v8}, Lcom/tencent/msdk/request/PfKeyRequestMng;->reportEventToBeacon(IZIZ)V

    goto :goto_40

    .line 319
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_8d
    :try_start_8d
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->pf:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->pfKey:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 321
    sget-object v4, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v4}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    iget-object v5, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setTmpQQLoginInfo(Lcom/tencent/msdk/db/QQLoginModel;)V

    .line 322
    sget-object v4, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v4}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    sget v5, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iget-object v6, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v6, v6, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v7, v7, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->queryUserWhiteListAsync(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    iget v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    .line 325
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    goto/16 :goto_40

    .line 330
    :cond_ca
    invoke-direct {p0, v3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->updateLoginInfo(Lcom/tencent/msdk/request/PfKeyResponse;)V

    .line 331
    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, p2, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    goto/16 :goto_40

    .line 334
    :cond_d3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 336
    const/4 v4, 0x0

    iget v5, v3, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    const/4 v6, 0x1

    invoke-direct {p0, p3, v4, v5, v6}, Lcom/tencent/msdk/request/PfKeyRequestMng;->reportEventToBeacon(IZIZ)V

    .line 338
    if-ne v9, p3, :cond_121

    .line 339
    iget v4, v3, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_10c

    iget v4, v3, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    const/16 v5, -0x4e20

    if-ne v4, v5, :cond_121

    .line 340
    :cond_10c
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    if-eqz v4, :cond_121

    .line 341
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 342
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 343
    iget-object v4, p0, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/QQLoginModel;->save()Z

    .line 347
    :cond_121
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, p2, p3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V
    :try_end_125
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_125} :catch_80

    goto/16 :goto_40
.end method

.method public verifyLocalQQToken(Lcom/tencent/msdk/db/QQLoginModel;)V
    .registers 23
    .param p1, "qlm"    # Lcom/tencent/msdk/db/QQLoginModel;

    .prologue
    .line 121
    if-nez p1, :cond_21

    .line 123
    const/16 v17, 0x0

    const-string v18, "QQ Client Login Return NULL"

    const/16 v19, 0xc8

    const/16 v20, 0x7e1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/msdk/request/PfKeyRequestMng;->notify(ZLjava/lang/String;II)V

    .line 124
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 164
    :goto_20
    return-void

    .line 128
    :cond_21
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/request/PfKeyRequestMng;->tmpQLM:Lcom/tencent/msdk/db/QQLoginModel;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/msdk/db/QQLoginModel;->getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;

    move-result-object v16

    .line 131
    .local v16, "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    if-nez v16, :cond_119

    .line 132
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    .line 138
    :goto_35
    new-instance v5, Lcom/tencent/msdk/request/PfKeyRequest;

    invoke-direct {v5}, Lcom/tencent/msdk/request/PfKeyRequest;-><init>()V

    .line 139
    .local v5, "loginWithLocalReq":Lcom/tencent/msdk/request/PfKeyRequest;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 140
    .local v8, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "channel":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 143
    .local v6, "openId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 144
    .local v7, "openKey":Ljava/lang/String;
    sget v12, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    .line 145
    .local v12, "loginPlatform":I
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 146
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateLoginInfo1:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/msdk/WeGame;->getPlatId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/msdk/pf/WGPfManager;->getPlatformId()Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, "platformId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 150
    .local v10, "offerId":Ljava/lang/String;
    invoke-virtual/range {v5 .. v12}, Lcom/tencent/msdk/request/PfKeyRequest;->getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    .line 153
    .local v14, "json":Lorg/json/JSONObject;
    :try_start_8f
    const-string v17, "isCheckQQToken"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v17, "isCheckPayToken"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v17, "qqAccessToken"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    sget-object v17, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tencent/msdk/stat/MsdkStat;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/tencent/msdk/stat/MsdkStat;->addLoginLog(Lorg/json/JSONObject;Z)V
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_c5} :catch_129

    .line 160
    :goto_c5
    const-string v17, "/auth/getlogin_info/"

    move-object/from16 v0, v17

    invoke-static {v0, v12, v6}, Lcom/tencent/msdk/communicator/UrlManager;->getUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, "url":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "url: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 162
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "req: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 163
    new-instance v17, Lcom/tencent/msdk/communicator/HttpRequestManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x7e1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_20

    .line 134
    .end local v5    # "loginWithLocalReq":Lcom/tencent/msdk/request/PfKeyRequest;
    .end local v6    # "openId":Ljava/lang/String;
    .end local v7    # "openKey":Ljava/lang/String;
    .end local v8    # "appId":Ljava/lang/String;
    .end local v9    # "channel":Ljava/lang/String;
    .end local v10    # "offerId":Ljava/lang/String;
    .end local v11    # "platformId":Ljava/lang/String;
    .end local v12    # "loginPlatform":I
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v15    # "url":Ljava/lang/String;
    :cond_119
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/request/PfKeyRequestMng;->currentWakeUp:Lcom/tencent/msdk/api/WakeupRet;

    .line 135
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/request/PfKeyRequestMng;->notifyState:I

    goto/16 :goto_35

    .line 157
    .restart local v5    # "loginWithLocalReq":Lcom/tencent/msdk/request/PfKeyRequest;
    .restart local v6    # "openId":Ljava/lang/String;
    .restart local v7    # "openKey":Ljava/lang/String;
    .restart local v8    # "appId":Ljava/lang/String;
    .restart local v9    # "channel":Ljava/lang/String;
    .restart local v10    # "offerId":Ljava/lang/String;
    .restart local v11    # "platformId":Ljava/lang/String;
    .restart local v12    # "loginPlatform":I
    .restart local v14    # "json":Lorg/json/JSONObject;
    :catch_129
    move-exception v13

    .line 158
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c5
.end method
