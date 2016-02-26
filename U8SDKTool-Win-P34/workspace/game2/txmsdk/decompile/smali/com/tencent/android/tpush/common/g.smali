.class public Lcom/tencent/android/tpush/common/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    .line 19
    sput-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/common/h;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tencent/android/tpush/common/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/common/g;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->c()V

    .line 30
    sget-object v0, Lcom/tencent/android/tpush/common/i;->a:Lcom/tencent/android/tpush/common/g;

    return-object v0
.end method

.method private static c()V
    .registers 4

    .prologue
    .line 82
    sget-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_5f

    .line 84
    :cond_1e
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tpush.working.thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    .line 85
    sget-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    sget-object v0, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_60

    .line 88
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    .line 89
    const-string v0, "CommonWorkingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Create new working thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/common/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_5f
    :goto_5f
    return-void

    .line 92
    :cond_60
    const-string v0, "CommonWorkingThread"

    const-string v1, ">>> Create new working thread false, cause thread.getLooper()==null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Z
    .registers 5

    .prologue
    .line 41
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 42
    const-string v0, "CommonWorkingThread"

    const-string v1, ">>> working thread execute "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_12

    move-result v0

    .line 48
    :goto_11
    return v0

    .line 45
    :catch_12
    move-exception v0

    .line 46
    const-string v1, "CommonWorkingThread"

    const-string v2, "execute error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .registers 8

    .prologue
    .line 62
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    .line 63
    const-string v0, "CommonWorkingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> working thread execute delayMillis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_23

    move-result v0

    .line 70
    :goto_22
    return v0

    .line 67
    :catch_23
    move-exception v0

    .line 68
    const-string v1, "CommonWorkingThread"

    const-string v2, "execute error delayMillis"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_2b
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public b()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/tencent/android/tpush/common/g;->b:Landroid/os/Handler;

    return-object v0
.end method
