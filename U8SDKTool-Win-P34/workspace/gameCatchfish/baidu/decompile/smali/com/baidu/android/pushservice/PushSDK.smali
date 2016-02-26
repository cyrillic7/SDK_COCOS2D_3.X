.class public Lcom/baidu/android/pushservice/PushSDK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles",
        "InlinedApi"
    }
.end annotation


# static fields
.field private static ALARM_NETWORKLESS_TIMEOUT:I = 0x0

.field private static ALARM_TIMEOUT:I = 0x0

.field public static final LOCAL_SOCKET_ADDRESS:Ljava/lang/String; = "com.baidu.pushservice.singelinstance"

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsAlive_lock:Ljava/lang/Object;

.field private static mLocalSocket:Landroid/net/LocalServerSocket;

.field private static mPushConnLock:Ljava/lang/Object;

.field public static mPushConnection:Lcom/baidu/android/pushservice/h;

.field private static mPushSDK:Lcom/baidu/android/pushservice/PushSDK;


# instance fields
.field private alarmTimeout:I

.field private mConnectRunnable:Ljava/lang/Runnable;

.field private mIsAlive:Ljava/lang/Boolean;

.field private mIsInited:Ljava/lang/Boolean;

.field private mRegisterRunnable:Ljava/lang/Runnable;

.field private mRegistrationService:Lcom/baidu/android/pushservice/ac;

.field private mStartRunnable:Ljava/lang/Runnable;

.field stableHearbeat:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "PushSDK"

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    const v0, 0x2bf20

    sput v0, Lcom/baidu/android/pushservice/PushSDK;->ALARM_TIMEOUT:I

    const v0, 0x1b7740

    sput v0, Lcom/baidu/android/pushservice/PushSDK;->ALARM_NETWORKLESS_TIMEOUT:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsInited:Ljava/lang/Boolean;

    iput v1, p0, Lcom/baidu/android/pushservice/PushSDK;->stableHearbeat:I

    new-instance v0, Lcom/baidu/android/pushservice/t;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/t;-><init>(Lcom/baidu/android/pushservice/PushSDK;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mStartRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/android/pushservice/u;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/u;-><init>(Lcom/baidu/android/pushservice/PushSDK;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegisterRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/android/pushservice/v;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/v;-><init>(Lcom/baidu/android/pushservice/PushSDK;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mConnectRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;)V

    sget v0, Lcom/baidu/android/pushservice/PushSDK;->ALARM_TIMEOUT:I

    iput v0, p0, Lcom/baidu/android/pushservice/PushSDK;->alarmTimeout:I

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnLock:Ljava/lang/Object;

    return-object v0
.end method

.method private cancelAlarmRepeat()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AlarmAlert"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static destroy()V
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/PushSDK;->doDestroy()V

    :cond_9
    return-void
.end method

.method private doDestroy()V
    .registers 6

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/module/deeplink/g;->a(Landroid/content/Context;)Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/g;->d()V

    :cond_1a
    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_48
    .catchall {:try_start_1d .. :try_end_29} :catchall_66

    :cond_29
    :goto_29
    :try_start_29
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    if-eqz v0, :cond_39

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->mPushConnLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_66

    :try_start_30
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_69

    :cond_39
    :try_start_39
    invoke-static {}, Lcom/baidu/android/pushservice/util/PushDatabase;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_6c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_66

    :goto_3c
    const/4 v0, 0x0

    :try_start_3d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    monitor-exit v1

    return-void

    :catch_48
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3d .. :try_end_68} :catchall_66

    throw v0

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0

    :catch_6c
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_66

    goto :goto_3c
.end method

.method public static getInstance()Lcom/baidu/android/pushservice/PushSDK;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushSDK;
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/PushSDK;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    :cond_b
    new-instance v0, Lcom/baidu/android/pushservice/PushSDK;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushSDK;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    :cond_12
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private heartbeat()Z
    .registers 6

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/frontia/a/c/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "heartbeat networkConnected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget v2, p0, Lcom/baidu/android/pushservice/PushSDK;->stableHearbeat:I

    rem-int/lit8 v2, v2, 0x5

    if-ne v2, v0, :cond_30

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/i;->c(Landroid/content/Context;)V

    :cond_30
    iget v2, p0, Lcom/baidu/android/pushservice/PushSDK;->stableHearbeat:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/android/pushservice/PushSDK;->stableHearbeat:I

    if-nez v1, :cond_46

    iget v1, p0, Lcom/baidu/android/pushservice/PushSDK;->alarmTimeout:I

    sget v2, Lcom/baidu/android/pushservice/PushSDK;->ALARM_NETWORKLESS_TIMEOUT:I

    if-eq v1, v2, :cond_45

    sget v1, Lcom/baidu/android/pushservice/PushSDK;->ALARM_NETWORKLESS_TIMEOUT:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/PushSDK;->setAlarmTimeout(I)V

    :cond_45
    :goto_45
    return v0

    :cond_46
    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    if-eqz v1, :cond_91

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/h;->a()Z

    move-result v1

    if-nez v1, :cond_71

    invoke-static {}, Lcom/baidu/android/pushservice/ad;->a()Lcom/baidu/android/pushservice/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/ad;->e()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_69

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v2, "Channel token is not available, start NETWORK REGISTER SERVICE ."

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->scheduleRegister()V

    goto :goto_45

    :cond_6d
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->scheduleConnect()V

    goto :goto_45

    :cond_71
    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/h;->d()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    const-string v3, "com.baidu.android.pushservice.action.SEND_APPSTAT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegistrationService:Lcom/baidu/android/pushservice/ac;

    invoke-virtual {v2, v1}, Lcom/baidu/android/pushservice/ac;->a(Landroid/content/Intent;)Z

    goto :goto_45

    :cond_91
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public static isAlive()Z
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushSDK:Lcom/baidu/android/pushservice/PushSDK;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private newPushConnection()V
    .registers 3

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mPushConnLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/h;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private scheduleConnect()V
    .registers 5

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushSDK;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushSDK;->mConnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleRegister()V
    .registers 5

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegisterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAlarmRepeat()V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->cancelAlarmRepeat()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "AlarmAlert"

    const-string v3, "OK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/baidu/android/pushservice/PushSDK;->alarmTimeout:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long v4, v2, v4

    const-wide/16 v8, 0x5

    rem-long/2addr v4, v8

    long-to-int v0, v4

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x3c

    if-nez v0, :cond_55

    const/16 v0, 0xf

    if-ge v4, v0, :cond_55

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v0, p0, Lcom/baidu/android/pushservice/PushSDK;->alarmTimeout:I

    add-int/lit16 v0, v0, -0x4e20

    int-to-double v8, v0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/16 v8, 0x3a98

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    :cond_55
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget v4, p0, Lcom/baidu/android/pushservice/PushSDK;->alarmTimeout:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private shouldStopSelf(Landroid/content/Context;)Z
    .registers 7

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/f;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try use current push service, package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0

    :cond_2e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5c

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current push service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should stop!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " highest priority service is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    const/4 v0, 0x1

    goto :goto_2d
.end method

.method private tryConnect()Z
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/frontia/a/c/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryConnect networkConnected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-nez v1, :cond_28

    :cond_27
    :goto_27
    return v0

    :cond_28
    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    if-eqz v1, :cond_27

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/baidu/android/pushservice/ad;->a()Lcom/baidu/android/pushservice/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/ad;->e()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v1, "Channel token is not available, start NETWORK REGISTER SERVICE ."

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->scheduleRegister()V

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    goto :goto_27

    :cond_50
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->scheduleConnect()V

    goto :goto_4e
.end method

.method private tryUpdateGlobalPriority()V
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-string v1, "com.baidu.push.cur_prio"

    invoke-static {}, Lcom/baidu/android/pushservice/a;->a()S

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-string v1, "com.baidu.push.cur_pkg"

    sget-object v2, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRegistrationService()Lcom/baidu/android/pushservice/ac;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegistrationService:Lcom/baidu/android/pushservice/ac;

    return-object v0
.end method

.method public handleOnStart(Landroid/content/Intent;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v3, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnStart intent action = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    if-nez p1, :cond_55

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v3, "--- handleOnStart by null intent!"

    invoke-static {v0, v3}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsInited:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushSDK;->initPushSDK()Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v1

    :goto_64
    return v0

    :cond_65
    const-string v0, ""

    goto :goto_36

    :cond_68
    sget-object v3, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive_lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6b
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_76

    monitor-exit v3

    move v0, v1

    goto :goto_64

    :cond_76
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/android/pushservice/PushSDK;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- handleOnStart -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_a2

    monitor-exit v3

    move v0, v1

    goto :goto_64

    :cond_a2
    const-string v0, "AlarmAlert"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->heartbeat()Z

    move-result v0

    monitor-exit v3

    goto :goto_64

    :catchall_b0
    move-exception v0

    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_6b .. :try_end_b2} :catchall_b0

    throw v0

    :cond_b3
    :try_start_b3
    const-string v0, "com.baidu.pushservice.action.STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    monitor-exit v3

    move v0, v1

    goto :goto_64

    :cond_c2
    if-eqz p1, :cond_127

    const-string v0, "pushservice_restart_v2"

    const-string v4, "method"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10a

    const-string v0, "priority2"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->o(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_ff

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    if-eqz v0, :cond_fb

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h;->a()Z

    move-result v0

    if-nez v0, :cond_fb

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->tryConnect()Z

    :cond_fb
    monitor-exit v3

    move v0, v2

    goto/16 :goto_64

    :cond_ff
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v4, v5}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;J)V

    monitor-exit v3

    move v0, v1

    goto/16 :goto_64

    :cond_10a
    monitor-exit v3

    move v0, v1

    goto/16 :goto_64

    :cond_10e
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegistrationService:Lcom/baidu/android/pushservice/ac;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/ac;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_123

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v1, "-- handleOnStart -- intent handled  by mRegistrationService "

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_123
    monitor-exit v3

    move v0, v2

    goto/16 :goto_64

    :cond_127
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->tryConnect()Z

    monitor-exit v3
    :try_end_12b
    .catchall {:try_start_b3 .. :try_end_12b} :catchall_b0

    move v0, v2

    goto/16 :goto_64
.end method

.method public initPushSDK()Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create PushSDK from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsInited:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->cancelAlarmRepeat()V

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/PushSDK;->shouldStopSelf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_43
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v2, "onCreate shouldStopSelf"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    move v0, v1

    :goto_51
    return v0

    :cond_52
    sget-object v3, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive_lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_55
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_108

    if-nez v0, :cond_66

    :try_start_59
    new-instance v0, Landroid/net/LocalServerSocket;

    sget-object v4, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/f;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_66} :catch_6d
    .catchall {:try_start_59 .. :try_end_66} :catchall_108

    :cond_66
    :goto_66
    :try_start_66
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mLocalSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_127

    monitor-exit v3

    move v0, v1

    goto :goto_51

    :catch_6d
    move-exception v0

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    const-string v4, "com.baidu.push.cur_pkg"

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_b4

    sget-object v4, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- Socket Adress ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/android/pushservice/util/f;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in use --- @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --- cur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    sget-object v4, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/util/f;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    sget-object v6, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_66

    sget-object v6, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/android/pushservice/util/f;->o(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_66

    if-eqz v0, :cond_10b

    sget-object v4, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10b

    sget-object v4, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/f;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "method"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "priority2"

    sget-object v6, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/android/pushservice/util/f;->o(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "method"

    const-string v6, "pushservice_restart_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pkg_name"

    sget-object v5, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_66

    :catchall_108
    move-exception v0

    monitor-exit v3
    :try_end_10a
    .catchall {:try_start_66 .. :try_end_10a} :catchall_108

    throw v0

    :cond_10b
    :try_start_10b
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->x(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_115
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/baidu/android/pushservice/util/f;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_115

    :cond_127
    sget-boolean v0, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z

    if-nez v0, :cond_12f

    monitor-exit v3

    move v0, v1

    goto/16 :goto_51

    :cond_12f
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->tryUpdateGlobalPriority()V

    new-instance v0, Lcom/baidu/android/pushservice/b;

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->newPushConnection()V

    new-instance v0, Lcom/baidu/android/pushservice/ac;

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mRegistrationService:Lcom/baidu/android/pushservice/ac;

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/module/deeplink/g;->a(Landroid/content/Context;)Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/g;->c()Z

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushSDK;->mStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushSDK;->mIsAlive:Ljava/lang/Boolean;

    monitor-exit v3
    :try_end_16b
    .catchall {:try_start_10b .. :try_end_16b} :catchall_108

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->tryConnect()Z

    move v0, v2

    goto/16 :goto_51
.end method

.method sendRequestTokenIntent()V
    .registers 3

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    const-string v1, ">> sendRequestTokenIntent"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.pushservice.action.TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/PushSDK;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public setAlarmTimeout(I)V
    .registers 5

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heartbeat set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-lez p1, :cond_2a

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/android/pushservice/PushSDK;->alarmTimeout:I

    :cond_2a
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushSDK;->setAlarmRepeat()V

    return-void
.end method
