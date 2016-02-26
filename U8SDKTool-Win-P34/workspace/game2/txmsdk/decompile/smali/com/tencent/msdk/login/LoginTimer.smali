.class public Lcom/tencent/msdk/login/LoginTimer;
.super Ljava/lang/Object;
.source "LoginTimer.java"


# static fields
.field private static final DEFAULT_CHECKTOKEN_TIME:J = 0x1b7740L

.field private static final MSG_GETADINFO:I = 0x1

.field private static volatile instance:Lcom/tencent/msdk/login/LoginTimer;


# instance fields
.field private mFirstStart:Z

.field private mLoginHandler:Landroid/os/Handler;

.field private mPeriod:J

.field private mStartVerifyToken:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mPeriod:J

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mFirstStart:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mStartVerifyToken:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/login/LoginTimer;)J
    .registers 3
    .param p0, "x0"    # Lcom/tencent/msdk/login/LoginTimer;

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mPeriod:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/tencent/msdk/login/LoginTimer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/login/LoginTimer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/msdk/login/LoginTimer;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/msdk/login/LoginTimer;->instance:Lcom/tencent/msdk/login/LoginTimer;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/tencent/msdk/login/LoginTimer;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/login/LoginTimer;->instance:Lcom/tencent/msdk/login/LoginTimer;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/tencent/msdk/login/LoginTimer;

    invoke-direct {v0}, Lcom/tencent/msdk/login/LoginTimer;-><init>()V

    sput-object v0, Lcom/tencent/msdk/login/LoginTimer;->instance:Lcom/tencent/msdk/login/LoginTimer;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/tencent/msdk/login/LoginTimer;->instance:Lcom/tencent/msdk/login/LoginTimer;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public initTimer(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    if-eqz p1, :cond_36

    .line 38
    invoke-static {p1}, Lcom/tencent/msdk/config/ConfigManager;->needWXTokenRefresh(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/msdk/login/LoginTimer;->mStartVerifyToken:Z

    .line 39
    invoke-static {p1}, Lcom/tencent/msdk/config/ConfigManager;->getCheckTokenTime(Landroid/content/Context;)I

    move-result v0

    .line 40
    .local v0, "configTime":I
    if-lez v0, :cond_15

    .line 41
    mul-int/lit8 v1, v0, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/tencent/msdk/login/LoginTimer;->mPeriod:J

    .line 43
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin Timer period:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/msdk/login/LoginTimer;->mPeriod:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 49
    iget-boolean v1, p0, Lcom/tencent/msdk/login/LoginTimer;->mStartVerifyToken:Z

    if-nez v1, :cond_37

    .line 50
    const-string v1, "newLogin Timer verify token finished!"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 70
    .end local v0    # "configTime":I
    :cond_36
    :goto_36
    return-void

    .line 53
    .restart local v0    # "configTime":I
    :cond_37
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/tencent/msdk/login/LoginTimer$1;

    invoke-direct {v3, p0}, Lcom/tencent/msdk/login/LoginTimer$1;-><init>(Lcom/tencent/msdk/login/LoginTimer;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/msdk/login/LoginTimer;->mFirstStart:Z

    goto :goto_36
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mFirstStart:Z

    if-eqz v0, :cond_a

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mFirstStart:Z

    .line 77
    invoke-virtual {p0}, Lcom/tencent/msdk/login/LoginTimer;->startTimer()V

    .line 79
    :cond_a
    return-void
.end method

.method public startTimer()V
    .registers 3

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mStartVerifyToken:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 83
    const-string v0, "newLogin startTimer....."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    :cond_13
    return-void
.end method

.method public stopTimer()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 90
    const-string v0, "newLogin stopTimer....."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    :cond_f
    return-void
.end method
