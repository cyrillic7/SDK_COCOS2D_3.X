.class public Lcom/tencent/msdk/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static volatile mInstance:Lcom/tencent/msdk/login/LoginManager;


# instance fields
.field private gameReqLock:Ljava/lang/Object;

.field private isCheckingToken:Z

.field private isGameRequest:Z

.field private lock:Ljava/lang/Object;

.field private lockLastQQModel:Ljava/lang/Object;

.field private lockLastWXModel:Ljava/lang/Object;

.field private mBackgroundPeriod:J

.field private mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

.field private mLastExecuteTime:J

.field private mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

.field private mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

.field private openid:Ljava/lang/String;

.field private platform:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->lock:Ljava/lang/Object;

    .line 34
    iput-boolean v1, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->gameReqLock:Ljava/lang/Object;

    .line 48
    iput-boolean v1, p0, Lcom/tencent/msdk/login/LoginManager;->isGameRequest:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->openid:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/tencent/msdk/login/LoginManager;->platform:I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->lockLastQQModel:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->lockLastWXModel:Ljava/lang/Object;

    .line 65
    iput-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    .line 66
    iput-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/login/LoginManager;->mLastExecuteTime:J

    .line 69
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/tencent/msdk/login/LoginManager;->mBackgroundPeriod:J

    .line 70
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/login/LoginManager;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/tencent/msdk/login/LoginManager;->mInstance:Lcom/tencent/msdk/login/LoginManager;

    if-nez v0, :cond_13

    .line 73
    const-class v1, Lcom/tencent/msdk/login/LoginManager;

    monitor-enter v1

    .line 74
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/login/LoginManager;->mInstance:Lcom/tencent/msdk/login/LoginManager;

    if-nez v0, :cond_12

    .line 75
    new-instance v0, Lcom/tencent/msdk/login/LoginManager;

    invoke-direct {v0}, Lcom/tencent/msdk/login/LoginManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/login/LoginManager;->mInstance:Lcom/tencent/msdk/login/LoginManager;

    .line 77
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 79
    :cond_13
    sget-object v0, Lcom/tencent/msdk/login/LoginManager;->mInstance:Lcom/tencent/msdk/login/LoginManager;

    return-object v0

    .line 77
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getIsCheckingToken()Z
    .registers 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    monitor-exit v1

    return v0

    .line 38
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getPfKeyReqWithWakeup(ILcom/tencent/msdk/api/WakeupRet;)V
    .registers 6
    .param p1, "notifyState"    # I
    .param p2, "wakeup"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin getPfKeyReqWithWakeup, isCheckingToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 161
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 163
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendHandlerMessage(Landroid/os/Message;)V

    .line 165
    return-void
.end method

.method private handleHallCallback(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "diffAccoutFlag"    # I

    .prologue
    .line 445
    if-nez p1, :cond_8

    .line 446
    const-string v3, "handleHallCallback Bundle EMPTY"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 460
    :goto_7
    return-void

    .line 449
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 450
    const-string v3, "channelId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "channelId":Ljava/lang/String;
    const-string v3, "OPEN_AUTH_DATA"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "openAuthData":Ljava/lang/String;
    const-string v3, "OPEN_AUTH_ST"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "openAuthSt":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From Hall, channelId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From Hall, openAuthData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From Hall, openAuthSt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v2, v4}, Lcom/tencent/msdk/handle/MsdkThreadManager;->qqA8Req(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7
.end method

.method private handleQQCallback(Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "diffAccoutFlag"    # I

    .prologue
    .line 403
    const-string v2, "handleQQCallback"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 405
    const-string v0, ""

    .line 406
    .local v0, "openID":Ljava/lang/String;
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 407
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qq SetOpenid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 413
    new-instance v1, Lcom/tencent/msdk/api/WakeupRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/WakeupRet;-><init>()V

    .line 414
    .local v1, "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    sget v2, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v2, v1, Lcom/tencent/msdk/api/WakeupRet;->platform:I

    .line 415
    iput-object v0, v1, Lcom/tencent/msdk/api/WakeupRet;->open_id:Ljava/lang/String;

    .line 416
    iput p2, v1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    .line 417
    invoke-static {p1, v1}, Lcom/tencent/msdk/login/LoginUtils;->bundleToVector(Landroid/os/Bundle;Lcom/tencent/msdk/api/WakeupRet;)V

    .line 423
    sparse-switch p2, :sswitch_data_58

    .line 434
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/tencent/msdk/login/LoginManager;->getPfKeyReqWithWakeup(ILcom/tencent/msdk/api/WakeupRet;)V

    .line 437
    :goto_46
    return-void

    .line 409
    .end local v1    # "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    :cond_47
    const-string v2, "current_uin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 427
    .restart local v1    # "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    :sswitch_4e
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/tencent/msdk/login/LoginManager;->WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V

    goto :goto_46

    .line 430
    :sswitch_53
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/tencent/msdk/login/LoginManager;->switchUser(ZLcom/tencent/msdk/api/WakeupRet;)Z

    goto :goto_46

    .line 423
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_4e
        0xbba -> :sswitch_53
        0xbbb -> :sswitch_4e
    .end sparse-switch
.end method

.method private handleWXCallback(Landroid/os/Bundle;I)V
    .registers 25
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "diffAccoutFlag"    # I

    .prologue
    .line 463
    const-string v20, "handleWXCallback"

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 464
    if-nez p1, :cond_d

    .line 465
    const-string v20, "handleWXCallback Bundle EMPTY"

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 638
    :cond_c
    :goto_c
    return-void

    .line 469
    :cond_d
    const-string v20, "wx_callback"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 470
    .local v19, "wxCallbackFlag":Ljava/lang/String;
    const-string v20, "wx_errCode"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 471
    .local v6, "errCode":I
    const-string v20, "wx_errStr"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "errStr":Ljava/lang/String;
    const-string v20, "wx_transaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 473
    .local v17, "transaction":Ljava/lang/String;
    const-string v20, "wx_openId"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 474
    .local v13, "openID":Ljava/lang/String;
    const-string v20, "wx_token"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 475
    .local v16, "token":Ljava/lang/String;
    const-string v20, "wx_mediaTagName"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 476
    .local v11, "mediaTagName":Ljava/lang/String;
    const-string v20, "messageExt"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 477
    .local v12, "messageExt":Ljava/lang/String;
    const-string v20, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "country":Ljava/lang/String;
    const-string v20, "lang"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "lang":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWXCallback errorCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 481
    const-string v20, "onReq"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17c

    .line 483
    new-instance v18, Lcom/tencent/msdk/api/WakeupRet;

    invoke-direct/range {v18 .. v18}, Lcom/tencent/msdk/api/WakeupRet;-><init>()V

    .line 484
    .local v18, "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    sget v20, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/tencent/msdk/api/WakeupRet;->platform:I

    .line 485
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/tencent/msdk/api/WakeupRet;->open_id:Ljava/lang/String;

    .line 486
    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    .line 488
    invoke-static {v11}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_14b

    .line 489
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWXCallbackmediaTagName : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/tencent/msdk/api/WakeupRet;->media_tag_name:Ljava/lang/String;

    .line 494
    :goto_ce
    invoke-static {v12}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f0

    .line 495
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWXCallbackmessageExt : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, v18

    iput-object v12, v0, Lcom/tencent/msdk/api/WakeupRet;->messageExt:Ljava/lang/String;

    .line 498
    :cond_f0
    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_112

    .line 499
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWXCallbackcountry : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/tencent/msdk/api/WakeupRet;->country:Ljava/lang/String;

    .line 502
    :cond_112
    invoke-static {v9}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_134

    .line 503
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWXCallbacklang : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/tencent/msdk/api/WakeupRet;->lang:Ljava/lang/String;

    .line 506
    :cond_134
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/tencent/msdk/login/LoginUtils;->bundleToVector(Landroid/os/Bundle;Lcom/tencent/msdk/api/WakeupRet;)V

    .line 507
    sparse-switch p2, :sswitch_data_3d6

    .line 527
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/login/LoginManager;->getPfKeyReqWithWakeup(ILcom/tencent/msdk/api/WakeupRet;)V

    goto/16 :goto_c

    .line 492
    :cond_14b
    const-string v20, "handleWXCallbackmediaTagName null or empty"

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_ce

    .line 510
    :sswitch_152
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/login/LoginManager;->getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v14

    .line 511
    .local v14, "qui":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v14, :cond_15f

    .line 513
    const-string v20, "WxLoginModel getLastWx is null"

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 516
    :cond_15f
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/tencent/msdk/db/WxLoginModel;->setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 517
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/tencent/msdk/login/LoginManager;->verifyLocalAndRefreshWxToken(Lcom/tencent/msdk/db/WxLoginModel;Z)V

    goto/16 :goto_c

    .line 522
    .end local v14    # "qui":Lcom/tencent/msdk/db/WxLoginModel;
    :sswitch_16f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/login/LoginManager;->WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V

    goto/16 :goto_c

    .line 530
    .end local v18    # "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    :cond_17c
    const-string v20, "onQrcode"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23a

    .line 531
    const-string v20, "onQrcode"

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 533
    new-instance v10, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v10}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 534
    .local v10, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    sget v20, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 535
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "WXEntryActivity errcode:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 536
    if-nez v6, :cond_204

    .line 537
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 538
    new-instance v4, Lcom/tencent/msdk/api/TokenRet;

    invoke-direct {v4}, Lcom/tencent/msdk/api/TokenRet;-><init>()V

    .line 539
    .local v4, "code":Lcom/tencent/msdk/api/TokenRet;
    const/16 v20, 0x4

    move/from16 v0, v20

    iput v0, v4, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 540
    if-nez v16, :cond_1ff

    .line 541
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 545
    :goto_1cb
    iget-object v0, v10, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 548
    iget-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/login/LoginManager;->wxFirstLoginReq(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 543
    :cond_1ff
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    goto :goto_1cb

    .line 551
    .end local v4    # "code":Lcom/tencent/msdk/api/TokenRet;
    :cond_204
    const/16 v20, 0x7d4

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 552
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "errCode:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";errStr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_c

    .line 556
    .end local v10    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_23a
    const-string v20, "appdata"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26a

    const-string v20, "img"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26a

    const-string v20, "msdkwebpage"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26a

    const-string v20, "webpage"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2dd

    .line 558
    :cond_26a
    new-instance v15, Lcom/tencent/msdk/api/ShareRet;

    invoke-direct {v15}, Lcom/tencent/msdk/api/ShareRet;-><init>()V

    .line 559
    .local v15, "shareRet":Lcom/tencent/msdk/api/ShareRet;
    iput v6, v15, Lcom/tencent/msdk/api/ShareRet;->flag:I

    .line 560
    sget v20, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    move/from16 v0, v20

    iput v0, v15, Lcom/tencent/msdk/api/ShareRet;->platform:I

    .line 561
    invoke-static {v7}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_27f

    .line 562
    iput-object v7, v15, Lcom/tencent/msdk/api/ShareRet;->desc:Ljava/lang/String;

    .line 564
    :cond_27f
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "WX Share ErrorCode :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 565
    packed-switch v6, :pswitch_data_3e4

    .line 576
    :pswitch_29a
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v15, Lcom/tencent/msdk/api/ShareRet;->flag:I

    .line 580
    :goto_2a0
    const-string v20, "msdkwebpage"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 581
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "webpage share, flag:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/tencent/msdk/api/ShareRet;->flag:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 567
    :pswitch_2c8
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Lcom/tencent/msdk/api/ShareRet;->flag:I

    goto :goto_2a0

    .line 570
    :pswitch_2cf
    const/16 v20, 0x7d2

    move/from16 v0, v20

    iput v0, v15, Lcom/tencent/msdk/api/ShareRet;->flag:I

    goto :goto_2a0

    .line 573
    :pswitch_2d6
    const/16 v20, 0x7d1

    move/from16 v0, v20

    iput v0, v15, Lcom/tencent/msdk/api/ShareRet;->flag:I

    goto :goto_2a0

    .line 585
    .end local v15    # "shareRet":Lcom/tencent/msdk/api/ShareRet;
    :cond_2dd
    const-string v20, "wechatAddCardToWXCardPackage"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_31d

    .line 587
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "wechatAddCardToWXCardPackage, transaction:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";errStr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";errCode:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 590
    :cond_31d
    new-instance v10, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v10}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 591
    .restart local v10    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    sget v20, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 592
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "WXEntryActivity errcode:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 594
    const/4 v3, 0x0

    .line 595
    .local v3, "beaconErrorCode":I
    const/4 v8, 0x0

    .line 596
    .local v8, "isLogicError":Z
    packed-switch v6, :pswitch_data_3f4

    .line 631
    :pswitch_345
    const/16 v20, 0x7d4

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 632
    const/16 v3, 0x3ed

    .line 633
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_c

    .line 598
    :pswitch_358
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 600
    if-eqz v13, :cond_362

    .line 601
    iput-object v13, v10, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 603
    :cond_362
    new-instance v4, Lcom/tencent/msdk/api/TokenRet;

    invoke-direct {v4}, Lcom/tencent/msdk/api/TokenRet;-><init>()V

    .line 604
    .restart local v4    # "code":Lcom/tencent/msdk/api/TokenRet;
    const/16 v20, 0x4

    move/from16 v0, v20

    iput v0, v4, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 605
    if-nez v16, :cond_3a9

    .line 606
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 610
    :goto_375
    iget-object v0, v10, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 614
    iget-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/login/LoginManager;->wxFirstLoginReq(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 608
    :cond_3a9
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    goto :goto_375

    .line 617
    .end local v4    # "code":Lcom/tencent/msdk/api/TokenRet;
    :pswitch_3ae
    const/16 v20, 0x7d2

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 618
    const/16 v3, 0x3e8

    .line 619
    const/4 v8, 0x1

    .line 620
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_c

    .line 623
    :pswitch_3c2
    const/16 v20, 0x7d3

    move/from16 v0, v20

    iput v0, v10, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 624
    const/16 v3, 0x3ec

    .line 625
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_c

    .line 507
    nop

    :sswitch_data_3d6
    .sparse-switch
        0x0 -> :sswitch_16f
        0xbbb -> :sswitch_16f
        0xbbc -> :sswitch_152
    .end sparse-switch

    .line 565
    :pswitch_data_3e4
    .packed-switch -0x5
        :pswitch_2d6
        :pswitch_29a
        :pswitch_29a
        :pswitch_2cf
        :pswitch_29a
        :pswitch_2c8
    .end packed-switch

    .line 596
    :pswitch_data_3f4
    .packed-switch -0x4
        :pswitch_3c2
        :pswitch_345
        :pswitch_3ae
        :pswitch_345
        :pswitch_358
    .end packed-switch
.end method

.method private verifyLocalAndRefreshWxToken(Lcom/tencent/msdk/db/WxLoginModel;Z)V
    .registers 7
    .param p1, "qui"    # Lcom/tencent/msdk/db/WxLoginModel;
    .param p2, "needVarify"    # Z

    .prologue
    const/4 v3, 0x1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin verifyLocalAndRefreshWxToken, isCheckingToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",needvarify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    if-eqz p2, :cond_3d

    .line 141
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 145
    :goto_35
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendHandlerMessage(Landroid/os/Message;)V

    .line 146
    return-void

    .line 143
    :cond_3d
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_35
.end method

.method private verifyLocalQQToken(Lcom/tencent/msdk/db/QQLoginModel;)V
    .registers 5
    .param p1, "qlm"    # Lcom/tencent/msdk/db/QQLoginModel;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin verifyLocalQQToken, isCheckingToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 123
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 124
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendHandlerMessage(Landroid/os/Message;)V

    .line 127
    return-void
.end method


# virtual methods
.method public WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I
    .registers 3
    .param p1, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 195
    const-string v0, "LoginManager WGGetLoginRecord..."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/tencent/msdk/login/LoginManager;->getIsCheckingToken()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 198
    const/16 v0, 0x1389

    iput v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 199
    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 203
    :goto_11
    return v0

    .line 201
    :cond_12
    invoke-static {p1}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 203
    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    goto :goto_11
.end method

.method public WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V
    .registers 4
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginManager WGLogin..., platform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    if-ne p1, v0, :cond_24

    .line 213
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/login/LoginManager;->WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V

    .line 217
    :goto_23
    return-void

    .line 215
    :cond_24
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendLoginMsg(I)V

    goto :goto_23
.end method

.method public WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V
    .registers 13
    .param p1, "isGameStart"    # Z
    .param p2, "wakeupRet"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newLogin gamestart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 221
    if-eqz p1, :cond_3d

    .line 222
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/login/LoginManager;->setIsGameRequest(Z)V

    .line 234
    :cond_26
    const-string v6, "newLogin"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/msdk/login/LoginManager;->mLastExecuteTime:J

    .line 237
    if-nez p2, :cond_57

    invoke-direct {p0}, Lcom/tencent/msdk/login/LoginManager;->getIsCheckingToken()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 340
    :goto_3c
    return-void

    .line 225
    :cond_3d
    if-nez p2, :cond_26

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 228
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/tencent/msdk/login/LoginManager;->mLastExecuteTime:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/tencent/msdk/login/LoginManager;->mBackgroundPeriod:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_26

    .line 229
    const-string v6, "newLogin lastverify too short, don\'t timer loginwithlocal"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_3c

    .line 240
    .end local v0    # "currentTime":J
    :cond_57
    new-instance v4, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v4}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 241
    .local v4, "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v4}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 242
    iget v6, v4, Lcom/tencent/msdk/api/LoginRet;->platform:I

    sget v7, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne v6, v7, :cond_108

    .line 243
    iget v6, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v6, :sswitch_data_1e8

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WGGetLoginRecord return flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 277
    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 278
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    const/4 v7, -0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 279
    .local v3, "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    if-eqz p2, :cond_ab

    .line 280
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 282
    :cond_ab
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_3c

    .line 245
    .end local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :sswitch_b3
    const-string v6, "local token valid"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/tencent/msdk/login/LoginManager;->getLastQQLoginModel()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v5

    .line 248
    .local v5, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    if-nez v5, :cond_df

    .line 250
    const-string v6, "QQLoginModel qui==null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 251
    const-string v2, "getLastQQLoginModel null, let users login again!"

    .line 252
    .local v2, "errMsg":Ljava/lang/String;
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7, v2}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 253
    .restart local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    if-eqz p2, :cond_d6

    .line 254
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 256
    :cond_d6
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_3c

    .line 259
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_df
    invoke-virtual {v5, p2}, Lcom/tencent/msdk/db/QQLoginModel;->setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 260
    invoke-direct {p0, v5}, Lcom/tencent/msdk/login/LoginManager;->verifyLocalQQToken(Lcom/tencent/msdk/db/QQLoginModel;)V

    goto/16 :goto_3c

    .line 264
    .end local v5    # "qui":Lcom/tencent/msdk/db/QQLoginModel;
    :sswitch_e7
    const-string v6, "TokenExpired"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 266
    const-string v2, "accessToken or payToken expired, let users login again!"

    .line 267
    .restart local v2    # "errMsg":Ljava/lang/String;
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7, v2}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 268
    .restart local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    if-eqz p2, :cond_ff

    .line 269
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 271
    :cond_ff
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_3c

    .line 286
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_108
    iget v6, v4, Lcom/tencent/msdk/api/LoginRet;->platform:I

    sget v7, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne v6, v7, :cond_1b3

    .line 287
    iget v6, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v6, :sswitch_data_1f6

    .line 320
    const-string v6, "WGGetLoginRecord return invalid flag"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 321
    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 322
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    const/4 v7, -0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid flag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 323
    .restart local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    if-eqz p2, :cond_141

    .line 324
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 326
    :cond_141
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_3c

    .line 290
    .end local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :sswitch_14a
    const-string v6, "local token valid"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/tencent/msdk/login/LoginManager;->getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v5

    .line 292
    .local v5, "qui":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v5, :cond_184

    .line 294
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    const/4 v7, -0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid flag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 295
    .restart local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    if-eqz p2, :cond_17b

    .line 296
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 298
    :cond_17b
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_3c

    .line 301
    .end local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_184
    invoke-virtual {v5, p2}, Lcom/tencent/msdk/db/WxLoginModel;->setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 303
    iget v6, v4, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v6, :cond_191

    .line 304
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/tencent/msdk/login/LoginManager;->verifyLocalAndRefreshWxToken(Lcom/tencent/msdk/db/WxLoginModel;Z)V

    goto/16 :goto_3c

    .line 306
    :cond_191
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/tencent/msdk/login/LoginManager;->verifyLocalAndRefreshWxToken(Lcom/tencent/msdk/db/WxLoginModel;Z)V

    goto/16 :goto_3c

    .line 311
    .end local v5    # "qui":Lcom/tencent/msdk/db/WxLoginModel;
    :sswitch_197
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    const/4 v7, -0x2

    const-string v8, "refresh token expired"

    invoke-direct {v3, v6, v7, v8}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 312
    .restart local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    if-eqz p2, :cond_1aa

    .line 313
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 315
    :cond_1aa
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_3c

    .line 331
    .end local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_1b3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WGGetLoginRecord return invalid platform "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 332
    if-eqz p2, :cond_1d4

    .line 333
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 336
    :cond_1d4
    new-instance v3, Lcom/tencent/msdk/api/LoginRet;

    sget v6, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    const/4 v7, -0x2

    const-string v8, "invalid platform"

    invoke-direct {v3, v6, v7, v8}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 338
    .restart local v3    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto/16 :goto_3c

    .line 243
    nop

    :sswitch_data_1e8
    .sparse-switch
        0x0 -> :sswitch_b3
        0x3ee -> :sswitch_e7
        0x3ef -> :sswitch_e7
    .end sparse-switch

    .line 287
    :sswitch_data_1f6
    .sparse-switch
        0x0 -> :sswitch_14a
        0x7d7 -> :sswitch_14a
        0x7d8 -> :sswitch_197
    .end sparse-switch
.end method

.method public WGRefreshWxToken()V
    .registers 3

    .prologue
    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/login/LoginManager;->wxExpiredLoginReq(IZ)V

    .line 208
    return-void
.end method

.method public getCurrentOpenid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlatform()I
    .registers 2

    .prologue
    .line 706
    iget v0, p0, Lcom/tencent/msdk/login/LoginManager;->platform:I

    return v0
.end method

.method public getIsGameRequest()Z
    .registers 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->gameReqLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/msdk/login/LoginManager;->isGameRequest:Z

    monitor-exit v1

    return v0

    .line 52
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getLastQQLoginModel()Lcom/tencent/msdk/db/QQLoginModel;
    .registers 7

    .prologue
    .line 641
    iget-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->lockLastQQModel:Ljava/lang/Object;

    monitor-enter v2

    .line 642
    :try_start_3
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    if-nez v1, :cond_19

    .line 643
    new-instance v1, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/db/QQLoginModel;->getLastQQLoginUserinfo()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    .line 644
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    if-nez v1, :cond_19

    .line 645
    const/4 v0, 0x0

    monitor-exit v2

    .line 658
    :goto_18
    return-object v0

    .line 649
    :cond_19
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 650
    .local v0, "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 651
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 652
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-wide v4, v1, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    iput-wide v4, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 653
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 654
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-wide v4, v1, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    iput-wide v4, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 655
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 656
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    iget-wide v4, v1, Lcom/tencent/msdk/db/QQLoginModel;->create_at:J

    iput-wide v4, v0, Lcom/tencent/msdk/db/QQLoginModel;->create_at:J

    .line 658
    monitor-exit v2

    goto :goto_18

    .line 659
    .end local v0    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public declared-synchronized getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;
    .registers 7

    .prologue
    .line 675
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->lockLastWXModel:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_55

    .line 676
    :try_start_4
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    if-nez v1, :cond_1b

    .line 677
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->getLastWxLoginUserinfo()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    .line 678
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    if-nez v1, :cond_1b

    .line 679
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_52

    .line 691
    :goto_19
    monitor-exit p0

    return-object v0

    .line 682
    :cond_1b
    :try_start_1b
    new-instance v0, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    .line 683
    .local v0, "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    .line 684
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 685
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-wide v4, v1, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    iput-wide v4, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 686
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 687
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-wide v4, v1, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    iput-wide v4, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 688
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-object v1, v1, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    iget-wide v4, v1, Lcom/tencent/msdk/db/WxLoginModel;->create_at:J

    iput-wide v4, v0, Lcom/tencent/msdk/db/WxLoginModel;->create_at:J

    .line 691
    monitor-exit v2

    goto :goto_19

    .line 692
    .end local v0    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :catchall_52
    move-exception v1

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_52

    :try_start_54
    throw v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 675
    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getQQFirstLoginPfKeyReq(Lcom/tencent/msdk/db/QQLoginModel;)V
    .registers 5
    .param p1, "qlm"    # Lcom/tencent/msdk/db/QQLoginModel;

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin getQQFirstLoginPfKeyReq, isCheckingToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/tencent/msdk/db/QQLoginModel;->getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 114
    :cond_22
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 115
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendHandlerMessage(Landroid/os/Message;)V

    .line 118
    return-void
.end method

.method public handleCallback(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/tencent/msdk/login/LoginUtils;->getPlatformFromCallbackInfo(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "platformId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTokenFlag platformId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/msdk/pf/WGPfManager;->setPlatformId(Ljava/lang/String;)V

    .line 174
    new-instance v2, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v2}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    iput-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    .line 175
    iget-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    invoke-static {v1, p1, v2}, Lcom/tencent/msdk/login/LoginUtils;->setmCallbackRet(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/msdk/api/LoginRet;)V

    .line 176
    iget-object v2, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    invoke-static {v2}, Lcom/tencent/msdk/login/LoginUtils;->checkDiffLogin(Lcom/tencent/msdk/api/LoginRet;)I

    move-result v0

    .line 178
    .local v0, "diffAccountFlag":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diffAccountFlag flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 179
    sget v2, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iget-object v3, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v3, v3, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v2, v3, :cond_81

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQQCallback,diffAccountFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/login/LoginManager;->handleQQCallback(Landroid/os/Bundle;I)V

    .line 191
    :goto_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###platformId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 192
    return-void

    .line 182
    :cond_81
    sget v2, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iget-object v3, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v3, v3, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v2, v3, :cond_a3

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWXCallback,diffAccountFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/login/LoginManager;->handleWXCallback(Landroid/os/Bundle;I)V

    goto :goto_6a

    .line 185
    :cond_a3
    sget v2, Lcom/tencent/msdk/WeGame;->QQHALL:I

    iget-object v3, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v3, v3, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v2, v3, :cond_c5

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHallCallback,diffAccountFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/login/LoginManager;->handleHallCallback(Landroid/os/Bundle;I)V

    goto :goto_6a

    .line 189
    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handdle unknow platformID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_6a
.end method

.method public init(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 84
    iput-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    .line 85
    iput-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->openid:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/tencent/msdk/login/LoginManager;->platform:I

    .line 88
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/msdk/login/LoginManager;->mLastExecuteTime:J

    .line 89
    invoke-static {p1}, Lcom/tencent/msdk/config/ConfigManager;->getCheckBackgroundTime(Landroid/content/Context;)I

    move-result v0

    .line 90
    .local v0, "configTime":I
    if-lez v0, :cond_1e

    .line 91
    mul-int/lit8 v1, v0, 0x3c

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/tencent/msdk/login/LoginManager;->mBackgroundPeriod:J

    .line 93
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin backgroundPeriod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/msdk/login/LoginManager;->mBackgroundPeriod:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public reportLogin(Ljava/lang/String;I)V
    .registers 4
    .param p1, "open_id"    # Ljava/lang/String;
    .param p2, "plat"    # I

    .prologue
    .line 696
    iput-object p1, p0, Lcom/tencent/msdk/login/LoginManager;->openid:Ljava/lang/String;

    .line 697
    iput p2, p0, Lcom/tencent/msdk/login/LoginManager;->platform:I

    .line 698
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendReportLogin(Ljava/lang/String;I)V

    .line 699
    return-void
.end method

.method public resetLastQQLoginModel()V
    .registers 3

    .prologue
    .line 663
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->lockLastQQModel:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->mLastQQModel:Lcom/tencent/msdk/db/QQLoginModel;

    .line 665
    monitor-exit v1

    .line 666
    return-void

    .line 665
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public resetLastWxLoginModel()V
    .registers 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->lockLastWXModel:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/tencent/msdk/login/LoginManager;->mLastWXModel:Lcom/tencent/msdk/db/WxLoginModel;

    .line 671
    monitor-exit v1

    .line 672
    return-void

    .line 671
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setIsCheckingToken(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_3
    iput-boolean p1, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setIsGameRequest(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 55
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginManager;->gameReqLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_3
    iput-boolean p1, p0, Lcom/tencent/msdk/login/LoginManager;->isGameRequest:Z

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public switchUser(ZLcom/tencent/msdk/api/WakeupRet;)Z
    .registers 12
    .param p1, "switchToLaunchUser"    # Z
    .param p2, "wakeupRet"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchUser:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 351
    if-eqz p1, :cond_cc

    .line 352
    const-string v5, "login with callback"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 353
    sget v5, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iget-object v6, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v6, v6, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v5, v6, :cond_77

    .line 354
    const-string v4, "loginWithUrlInfo: qq"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 355
    new-instance v2, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 356
    .local v2, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget-object v4, v4, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 358
    .local v0, "curTime":J
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    invoke-virtual {v4}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 359
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    invoke-virtual {v4, v3}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 362
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    invoke-virtual {v4, v8}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 364
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    invoke-virtual {v4, v8}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 367
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget-object v4, v4, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 368
    iget-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget-object v4, v4, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 369
    if-eqz p2, :cond_73

    .line 370
    invoke-virtual {v2, p2}, Lcom/tencent/msdk/db/QQLoginModel;->setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 372
    :cond_73
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/login/LoginManager;->getQQFirstLoginPfKeyReq(Lcom/tencent/msdk/db/QQLoginModel;)V

    .line 398
    .end local v0    # "curTime":J
    .end local v2    # "qui":Lcom/tencent/msdk/db/QQLoginModel;
    :goto_76
    return v3

    .line 374
    :cond_77
    sget v3, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iget-object v5, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v5, v5, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v3, v5, :cond_8f

    .line 375
    const-string v3, "loginWithUrlInfo: wechat"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 376
    if-eqz p2, :cond_8d

    .line 377
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    :cond_8d
    move v3, v4

    .line 379
    goto :goto_76

    .line 380
    :cond_8f
    sget v3, Lcom/tencent/msdk/WeGame;->QQHALL:I

    iget-object v5, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v5, v5, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v3, v5, :cond_a7

    .line 381
    const-string v3, "loginWithUrlInfo: hall"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 382
    if-eqz p2, :cond_a5

    .line 383
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    :cond_a5
    move v3, v4

    .line 385
    goto :goto_76

    .line 387
    :cond_a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loginWithUrlInfo: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    iget v5, v5, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 388
    if-eqz p2, :cond_ca

    .line 389
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    :cond_ca
    move v3, v4

    .line 391
    goto :goto_76

    .line 394
    :cond_cc
    const-string v4, "login with local"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 396
    new-instance v4, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v4}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    iput-object v4, p0, Lcom/tencent/msdk/login/LoginManager;->mCallbackRet:Lcom/tencent/msdk/api/LoginRet;

    .line 397
    invoke-virtual {p0, v3, p2}, Lcom/tencent/msdk/login/LoginManager;->WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V

    goto :goto_76
.end method

.method public wxExpiredLoginReq(IZ)V
    .registers 5
    .param p1, "notifyState"    # I
    .param p2, "isTimerRefresh"    # Z

    .prologue
    .line 149
    const-string v1, "wxExpiredLoginReq"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 151
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 153
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendHandlerMessage(Landroid/os/Message;)V

    .line 155
    return-void
.end method

.method public wxFirstLoginReq(Ljava/lang/String;I)V
    .registers 7
    .param p1, "wxCode"    # Ljava/lang/String;
    .param p2, "notifyState"    # I

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newLogin wxFirstLoginReq, isCheckingToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tencent/msdk/login/LoginManager;->isCheckingToken:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 100
    new-instance v0, Lcom/tencent/msdk/login/WxFirstLoginInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/login/WxFirstLoginInfo;-><init>()V

    .line 101
    .local v0, "info":Lcom/tencent/msdk/login/WxFirstLoginInfo;
    iput-object p1, v0, Lcom/tencent/msdk/login/WxFirstLoginInfo;->wxCode:Ljava/lang/String;

    .line 102
    iput p2, v0, Lcom/tencent/msdk/login/WxFirstLoginInfo;->notifyState:I

    .line 103
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendHandlerMessage(Landroid/os/Message;)V

    .line 105
    return-void
.end method
