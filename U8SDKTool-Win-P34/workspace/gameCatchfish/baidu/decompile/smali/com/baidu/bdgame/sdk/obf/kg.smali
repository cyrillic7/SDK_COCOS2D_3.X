.class public Lcom/baidu/bdgame/sdk/obf/kg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/bdgame/sdk/obf/kg;->c:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized a()J
    .registers 6

    .prologue
    .line 23
    const-class v2, Lcom/baidu/bdgame/sdk/obf/kg;

    monitor-enter v2

    :try_start_3
    sget-wide v0, Lcom/baidu/bdgame/sdk/obf/kg;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_11

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    move-result-wide v0

    .line 26
    :goto_f
    monitor-exit v2

    return-wide v0

    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v4, Lcom/baidu/bdgame/sdk/obf/kg;->a:J

    sub-long/2addr v0, v4

    sget-wide v4, Lcom/baidu/bdgame/sdk/obf/kg;->c:J
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    add-long/2addr v0, v4

    goto :goto_f

    .line 23
    :catchall_1c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 16
    const-class v1, Lcom/baidu/bdgame/sdk/obf/kg;

    monitor-enter v1

    :try_start_3
    sput-wide p0, Lcom/baidu/bdgame/sdk/obf/kg;->c:J

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/bdgame/sdk/obf/kg;->a:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/bdgame/sdk/obf/kg;->b:J
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 19
    monitor-exit v1

    return-void

    .line 16
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(J)J
    .registers 8

    .prologue
    .line 30
    const-class v2, Lcom/baidu/bdgame/sdk/obf/kg;

    monitor-enter v2

    :try_start_3
    sget-wide v0, Lcom/baidu/bdgame/sdk/obf/kg;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_11

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    move-result-wide v0

    .line 33
    :goto_f
    monitor-exit v2

    return-wide v0

    :cond_11
    :try_start_11
    sget-wide v0, Lcom/baidu/bdgame/sdk/obf/kg;->a:J

    sub-long v0, p0, v0

    sget-wide v4, Lcom/baidu/bdgame/sdk/obf/kg;->c:J
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    add-long/2addr v0, v4

    goto :goto_f

    .line 30
    :catchall_19
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized c(J)J
    .registers 8

    .prologue
    .line 37
    const-class v2, Lcom/baidu/bdgame/sdk/obf/kg;

    monitor-enter v2

    :try_start_3
    sget-wide v0, Lcom/baidu/bdgame/sdk/obf/kg;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_11

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    move-result-wide v0

    .line 40
    :goto_f
    monitor-exit v2

    return-wide v0

    :cond_11
    :try_start_11
    sget-wide v0, Lcom/baidu/bdgame/sdk/obf/kg;->b:J

    sub-long v0, p0, v0

    sget-wide v4, Lcom/baidu/bdgame/sdk/obf/kg;->c:J
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    add-long/2addr v0, v4

    goto :goto_f

    .line 37
    :catchall_19
    move-exception v0

    monitor-exit v2

    throw v0
.end method
