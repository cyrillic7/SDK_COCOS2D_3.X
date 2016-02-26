.class public final Lcom/tencent/bugly/proguard/t;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/t;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 15
    const/4 v0, 0x3

    new-instance v1, Lcom/tencent/bugly/proguard/t$1;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/t$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/t;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 33
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScheduledExecutorService is not valiable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_16
    iput-object p1, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/t;
    .registers 2

    .prologue
    .line 46
    const-class v1, Lcom/tencent/bugly/proguard/t;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/proguard/t;->a:Lcom/tencent/bugly/proguard/t;

    if-nez v0, :cond_e

    .line 48
    new-instance v0, Lcom/tencent/bugly/proguard/t;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/t;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/t;->a:Lcom/tencent/bugly/proguard/t;

    .line 50
    :cond_e
    sget-object v0, Lcom/tencent/bugly/proguard/t;->a:Lcom/tencent/bugly/proguard/t;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b()Z
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;->b()Z

    move-result v2

    if-nez v2, :cond_13

    .line 73
    const-string v1, "async handler was closed , should not post task!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 85
    :goto_11
    monitor-exit p0

    return v0

    .line 77
    :cond_13
    if-nez p1, :cond_21

    .line 79
    :try_start_15
    const-string v1, "async task == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 71
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_21
    const/4 v0, 0x1

    :try_start_22
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 84
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1e

    move v0, v1

    .line 85
    goto :goto_11
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    monitor-enter p0

    :try_start_5
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;->b()Z

    move-result v4

    if-nez v4, :cond_15

    .line 100
    const-string v1, "async handler was closed , should not post task!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_20

    .line 114
    :goto_13
    monitor-exit p0

    return v0

    .line 104
    :cond_15
    if-nez p1, :cond_23

    .line 106
    :try_start_17
    const-string v1, "async task == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 98
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_23
    cmp-long v0, p2, v2

    if-lez v0, :cond_48

    .line 112
    :goto_27
    const/4 v0, 0x2

    :try_start_28
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 113
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_20

    move v0, v1

    .line 114
    goto :goto_13

    :cond_48
    move-wide p2, v2

    .line 110
    goto :goto_27
.end method
