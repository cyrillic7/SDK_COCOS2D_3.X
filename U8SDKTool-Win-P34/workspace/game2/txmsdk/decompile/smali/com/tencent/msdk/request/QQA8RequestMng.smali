.class public Lcom/tencent/msdk/request/QQA8RequestMng;
.super Ljava/lang/Object;
.source "QQA8RequestMng.java"

# interfaces
.implements Lcom/tencent/msdk/communicator/IHttpRequestListener;


# static fields
.field private static volatile instance:Lcom/tencent/msdk/request/QQA8RequestMng;


# instance fields
.field private callbackMsg:Ljava/lang/String;

.field private notifyState:I

.field private refreshStartTime:J

.field rspFromA8:Lcom/tencent/msdk/request/QQA8Response;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/request/QQA8RequestMng;->instance:Lcom/tencent/msdk/request/QQA8RequestMng;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->notifyState:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->refreshStartTime:J

    .line 37
    new-instance v0, Lcom/tencent/msdk/request/QQA8Response;

    invoke-direct {v0}, Lcom/tencent/msdk/request/QQA8Response;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->callbackMsg:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/request/QQA8RequestMng;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/msdk/request/QQA8RequestMng;->instance:Lcom/tencent/msdk/request/QQA8RequestMng;

    if-nez v0, :cond_13

    .line 41
    const-class v1, Lcom/tencent/msdk/request/QQA8RequestMng;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/request/QQA8RequestMng;->instance:Lcom/tencent/msdk/request/QQA8RequestMng;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/tencent/msdk/request/QQA8RequestMng;

    invoke-direct {v0}, Lcom/tencent/msdk/request/QQA8RequestMng;-><init>()V

    sput-object v0, Lcom/tencent/msdk/request/QQA8RequestMng;->instance:Lcom/tencent/msdk/request/QQA8RequestMng;

    .line 45
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 47
    :cond_13
    sget-object v0, Lcom/tencent/msdk/request/QQA8RequestMng;->instance:Lcom/tencent/msdk/request/QQA8RequestMng;

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private notify(ZLjava/lang/String;I)V
    .registers 6
    .param p1, "isOk"    # Z
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 86
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

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->callbackMsg:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/tencent/msdk/request/QQA8RequestMng;->notifyWakup(Z)V

    .line 88
    invoke-direct {p0, p1}, Lcom/tencent/msdk/request/QQA8RequestMng;->notifyLogin(Z)V

    .line 89
    return-void
.end method

.method private notifyLogin(Z)V
    .registers 5
    .param p1, "isOk"    # Z

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 93
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 94
    const-string v1, ":-( , MSDK \u6570\u636e\u5931\u8d25"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 95
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1d

    .line 96
    iput v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 97
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v2, v1}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 99
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->callbackMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 100
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

    .line 101
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 102
    return-void
.end method

.method private notifyWakup(Z)V
    .registers 6
    .param p1, "isOk"    # Z

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v1, Lcom/tencent/msdk/api/WakeupRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/WakeupRet;-><init>()V

    .line 107
    .local v1, "wakeupRet":Lcom/tencent/msdk/api/WakeupRet;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_6c

    .line 108
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 109
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    sget v2, Lcom/tencent/msdk/WeGame;->QQHALL:I

    iput v2, v1, Lcom/tencent/msdk/api/WakeupRet;->platform:I

    .line 110
    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/msdk/api/WakeupRet;->open_id:Ljava/lang/String;

    .line 111
    iput v3, v1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    .line 112
    sget v2, Lcom/tencent/msdk/WeGame;->QQHALL:I

    invoke-static {v3, v2}, Lcom/tencent/msdk/WeGame;->setDescribe(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/msdk/api/WakeupRet;->desc:Ljava/lang/String;

    .line 117
    .end local v0    # "lr":Lcom/tencent/msdk/api/LoginRet;
    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWakup flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/msdk/api/WakeupRet;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/tencent/msdk/api/WakeupRet;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->callbackMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/msdk/api/WakeupRet;->desc:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 120
    return-void

    .line 114
    :cond_6c
    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    .line 115
    const-string v2, "\u5927\u5385\u62c9\u8d77\u5931\u8d25"

    iput-object v2, v1, Lcom/tencent/msdk/api/WakeupRet;->desc:Ljava/lang/String;

    goto :goto_23
.end method

.method private reportEventToBeacon(ZIZ)V
    .registers 15
    .param p1, "success"    # Z
    .param p2, "statusCode"    # I
    .param p3, "isLogicError"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 151
    if-eqz p1, :cond_e

    .line 152
    const-string v1, "qqA8Req"

    iget-wide v2, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->refreshStartTime:J

    const/4 v5, 0x0

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    .line 159
    :goto_d
    return-void

    .line 154
    :cond_e
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "param_FailCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_4f

    move v0, v4

    :goto_3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v5, "qqA8Req"

    iget-wide v6, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->refreshStartTime:J

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_d

    :cond_4f
    move v0, v8

    .line 156
    goto :goto_3b
.end method

.method private updateA8Info(Lcom/tencent/msdk/request/QQA8Response;)V
    .registers 10
    .param p1, "rspFromA8"    # Lcom/tencent/msdk/request/QQA8Response;

    .prologue
    .line 123
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 126
    .local v0, "curTime":J
    new-instance v2, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 127
    .local v2, "qqloginRecord":Lcom/tencent/msdk/db/QQLoginModel;
    iget-object v3, p1, Lcom/tencent/msdk/request/QQA8Response;->openid:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 128
    iget-object v3, p1, Lcom/tencent/msdk/request/QQA8Response;->accessToken:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 129
    iget v3, p1, Lcom/tencent/msdk/request/QQA8Response;->expired:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 130
    iget-object v3, p1, Lcom/tencent/msdk/request/QQA8Response;->payToken:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 131
    const-wide/32 v4, 0x2a300

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 132
    iget-object v3, p1, Lcom/tencent/msdk/request/QQA8Response;->pf:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 133
    iget-object v3, p1, Lcom/tencent/msdk/request/QQA8Response;->pfKey:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 134
    invoke-virtual {v2}, Lcom/tencent/msdk/db/QQLoginModel;->save()Z

    .line 136
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/msdk/request/QQA8Response;->openid:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/msdk/request/QQA8Response;->accessToken:Ljava/lang/String;

    iget v6, p1, Lcom/tencent/msdk/request/QQA8Response;->expired:I

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/msdk/WeGame;->setOpenSdkLoginInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 139
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/msdk/request/QQA8Response;->regChannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/pf/WGPfManager;->setRegChannelId(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/msdk/request/QQA8Response;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/permission/PermissionManage;->updateDataFromNet(Ljava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected getInterfaceName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "name":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "nameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 78
    .local v0, "interfaceName":Ljava/lang/String;
    if-eqz v2, :cond_19

    array-length v3, v2

    if-lez v3, :cond_19

    .line 79
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 81
    :cond_19
    return-object v0
.end method

.method public onFailure(Ljava/lang/String;II)V
    .registers 7
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 145
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

    .line 146
    invoke-direct {p0, v2, p2, v2}, Lcom/tencent/msdk/request/QQA8RequestMng;->reportEventToBeacon(ZIZ)V

    .line 147
    invoke-direct {p0, v2, p1, p3}, Lcom/tencent/msdk/request/QQA8RequestMng;->notify(ZLjava/lang/String;I)V

    .line 148
    return-void
.end method

.method public onSuccess(Ljava/lang/String;II)V
    .registers 11
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v6, 0x0

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "isOk":Z
    const-string v0, ""

    .line 166
    .local v0, "content":Ljava/lang/String;
    const/16 v4, 0x7db

    if-ne p3, v4, :cond_2a

    .line 167
    if-nez p1, :cond_2b

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server response data is NULL; statusCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 169
    const-string v4, "server response data is NULL"

    invoke-direct {p0, v6, v4, p2}, Lcom/tencent/msdk/request/QQA8RequestMng;->notify(ZLjava/lang/String;I)V

    .line 170
    const/16 v4, 0x3ea

    invoke-direct {p0, v6, v4, v6}, Lcom/tencent/msdk/request/QQA8RequestMng;->reportEventToBeacon(ZIZ)V

    .line 196
    :cond_2a
    :goto_2a
    return-void

    .line 174
    :cond_2b
    :try_start_2b
    new-instance v3, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v3, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    invoke-virtual {v4}, Lcom/tencent/msdk/request/QQA8Response;->reset()V

    .line 176
    iget-object v4, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    invoke-virtual {v4, v3}, Lcom/tencent/msdk/request/QQA8Response;->parseJson(Lorg/json/JSONObject;)V

    .line 177
    iget-object v4, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    iget-object v0, v4, Lcom/tencent/msdk/request/QQA8Response;->msg:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    iget v4, v4, Lcom/tencent/msdk/request/QQA8Response;->ret:I

    if-nez v4, :cond_54

    .line 179
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/tencent/msdk/request/QQA8RequestMng;->reportEventToBeacon(ZIZ)V

    .line 180
    const/4 v2, 0x1

    .line 181
    iget-object v4, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    invoke-direct {p0, v4}, Lcom/tencent/msdk/request/QQA8RequestMng;->updateA8Info(Lcom/tencent/msdk/request/QQA8Response;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_50} :catch_87
    .catchall {:try_start_2b .. :try_end_50} :catchall_97

    .line 193
    :goto_50
    invoke-direct {p0, v2, v0, p2}, Lcom/tencent/msdk/request/QQA8RequestMng;->notify(ZLjava/lang/String;I)V

    goto :goto_2a

    .line 184
    :cond_54
    const/4 v4, 0x0

    :try_start_55
    iget-object v5, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    iget v5, v5, Lcom/tencent/msdk/request/QQA8Response;->ret:I

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/tencent/msdk/request/QQA8RequestMng;->reportEventToBeacon(ZIZ)V

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    iget v5, v5, Lcom/tencent/msdk/request/QQA8Response;->ret:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->rspFromA8:Lcom/tencent/msdk/request/QQA8Response;

    iget-object v5, v5, Lcom/tencent/msdk/request/QQA8Response;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_85} :catch_87
    .catchall {:try_start_55 .. :try_end_85} :catchall_97

    .line 186
    const/4 v2, 0x0

    goto :goto_50

    .line 188
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_87
    move-exception v1

    .line 189
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    .line 190
    :try_start_89
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 191
    const/4 v4, 0x0

    const/16 v5, 0x3e9

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/tencent/msdk/request/QQA8RequestMng;->reportEventToBeacon(ZIZ)V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_97

    .line 193
    invoke-direct {p0, v2, v0, p2}, Lcom/tencent/msdk/request/QQA8RequestMng;->notify(ZLjava/lang/String;I)V

    goto :goto_2a

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_97
    move-exception v4

    invoke-direct {p0, v2, v0, p2}, Lcom/tencent/msdk/request/QQA8RequestMng;->notify(ZLjava/lang/String;I)V

    throw v4
.end method

.method public qqA8Req(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "openAuthData"    # Ljava/lang/String;
    .param p2, "openAuthSt"    # Ljava/lang/String;
    .param p3, "notifyState"    # I

    .prologue
    const/4 v9, 0x0

    .line 51
    iput p3, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->notifyState:I

    .line 53
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 54
    :cond_f
    const-string v1, "qqA8Req params error !!!"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    .line 56
    const-string v1, "qqA8Req params error !!!"

    const/4 v2, -0x1

    invoke-direct {p0, v9, v1, v2}, Lcom/tencent/msdk/request/QQA8RequestMng;->notify(ZLjava/lang/String;I)V

    .line 72
    :goto_21
    return-void

    .line 59
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/tencent/msdk/request/QQA8RequestMng;->refreshStartTime:J

    .line 60
    new-instance v0, Lcom/tencent/msdk/request/QQA8Request;

    invoke-direct {v0}, Lcom/tencent/msdk/request/QQA8Request;-><init>()V

    .line 62
    .local v0, "loginReq":Lcom/tencent/msdk/request/QQA8Request;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v3, v1, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 63
    .local v3, "appid":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/pf/WGPfManager;->getPlatformId()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "platformId":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v5, v1, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .local v5, "offerId":Ljava/lang/String;
    move-object v1, p1

    move-object v2, p2

    .line 67
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/msdk/request/QQA8Request;->getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 69
    .local v7, "json":Lorg/json/JSONObject;
    sget-object v1, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v1}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/stat/MsdkStat;

    invoke-virtual {v1, v7, v9}, Lcom/tencent/msdk/stat/MsdkStat;->addLoginLog(Lorg/json/JSONObject;Z)V

    .line 70
    const-string v1, "/auth/qqa8_login/"

    sget v2, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    invoke-static {v1, v2}, Lcom/tencent/msdk/communicator/UrlManager;->getUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "url":Ljava/lang/String;
    new-instance v1, Lcom/tencent/msdk/communicator/HttpRequestManager;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x7db

    invoke-virtual {v1, v8, v2, v9}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_21
.end method
