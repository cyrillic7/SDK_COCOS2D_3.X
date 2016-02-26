.class public Lcom/tencent/msdk/WeGameNotifyGame;
.super Ljava/lang/Object;
.source "WeGameNotifyGame.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/WeGameNotifyGame;


# instance fields
.field public mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/WeGameNotifyGame;->instance:Lcom/tencent/msdk/WeGameNotifyGame;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    return-void
.end method

.method private NotifyGameLogin(Lcom/tencent/msdk/api/LoginRet;Z)V
    .registers 6
    .param p1, "loginRet"    # Lcom/tencent/msdk/api/LoginRet;
    .param p2, "isTimerRefresh"    # Z

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyGameLogin, isTimerRefresh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 79
    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-eqz v0, :cond_20

    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_2b

    .line 80
    :cond_20
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/login/LoginManager;->reportLogin(Ljava/lang/String;I)V

    .line 83
    :cond_2b
    iget-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    if-nez v0, :cond_38

    .line 84
    const-string v0, "WeGame OnLoginNotify C++ OnLoginNotify"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatformObserverForSO;->OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 90
    :goto_37
    return-void

    .line 87
    :cond_38
    const-string v0, "WeGame OnLoginNotify Java OnLoginNotify"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    invoke-interface {v0, p1}, Lcom/tencent/msdk/api/WGPlatformObserver;->OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_37
.end method

.method private callbackGameRelation(Lcom/tencent/msdk/remote/api/RelationRet;)V
    .registers 3
    .param p1, "rr"    # Lcom/tencent/msdk/remote/api/RelationRet;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    if-nez v0, :cond_d

    .line 68
    const-string v0, "WeGame callbackGameRelation C++ callbackGameRelation"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatformObserverForSO;->OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V

    .line 74
    :goto_c
    return-void

    .line 71
    :cond_d
    const-string v0, "WeGame callbackGameRelation Java callbackGameRelation"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    invoke-interface {v0, p1}, Lcom/tencent/msdk/api/WGPlatformObserver;->OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V

    goto :goto_c
.end method

.method public static getInstance()Lcom/tencent/msdk/WeGameNotifyGame;
    .registers 2

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/msdk/WeGameNotifyGame;->instance:Lcom/tencent/msdk/WeGameNotifyGame;

    if-nez v0, :cond_13

    .line 19
    const-class v1, Lcom/tencent/msdk/WeGameNotifyGame;

    monitor-enter v1

    .line 20
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/WeGameNotifyGame;->instance:Lcom/tencent/msdk/WeGameNotifyGame;

    if-nez v0, :cond_12

    .line 21
    new-instance v0, Lcom/tencent/msdk/WeGameNotifyGame;

    invoke-direct {v0}, Lcom/tencent/msdk/WeGameNotifyGame;-><init>()V

    sput-object v0, Lcom/tencent/msdk/WeGameNotifyGame;->instance:Lcom/tencent/msdk/WeGameNotifyGame;

    .line 23
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 25
    :cond_13
    sget-object v0, Lcom/tencent/msdk/WeGameNotifyGame;->instance:Lcom/tencent/msdk/WeGameNotifyGame;

    return-object v0

    .line 23
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public NotifyGameWakeUp(Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 3
    .param p1, "wakeupRet"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 92
    const-string v0, "NotifyGameWakeUp"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    if-nez v0, :cond_d

    .line 94
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatformObserverForSO;->OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 98
    :goto_c
    return-void

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    invoke-interface {v0, p1}, Lcom/tencent/msdk/api/WGPlatformObserver;->OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V

    goto :goto_c
.end method

.method public OnBackendRelationCallback(Lcom/tencent/msdk/remote/api/RelationRet;)V
    .registers 2
    .param p1, "rr"    # Lcom/tencent/msdk/remote/api/RelationRet;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/msdk/WeGameNotifyGame;->callbackGameRelation(Lcom/tencent/msdk/remote/api/RelationRet;)V

    .line 50
    return-void
.end method

.method public OnCrashExtMessageNotify(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "flag"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v1, "OnCrashExtMessageNotify"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    if-nez v1, :cond_29

    .line 55
    const-string v1, "OnCrashExtMessageNotify to cpp"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatformObserverForSO;->OnCrashExtMessageNotify()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCrashExtMessageNotify to cpp, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 61
    .end local v0    # "msg":Ljava/lang/String;
    :goto_28
    return-object v0

    .line 60
    :cond_29
    const-string v1, "OnCrashExtMessageNotify to java"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    invoke-interface {v1}, Lcom/tencent/msdk/api/WGPlatformObserver;->OnCrashExtMessageNotify()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V
    .registers 4
    .param p1, "loginRet"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLogin OnLoginNotify,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/msdk/api/LoginRet;->toLogStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    iget v1, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGame;->setFlag(I)V

    .line 37
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    iget v1, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->NotifyGameLogin(Lcom/tencent/msdk/api/LoginRet;Z)V

    .line 39
    return-void
.end method

.method public OnPlatformWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 4
    .param p1, "wakeupRet"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLogin OnWakeupNotify,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/msdk/api/WakeupRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/WeGameNotifyGame;->NotifyGameWakeUp(Lcom/tencent/msdk/api/WakeupRet;)V

    .line 45
    return-void
.end method

.method public setObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/tencent/msdk/api/WGPlatformObserver;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/msdk/WeGameNotifyGame;->mObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    .line 30
    return-void
.end method
