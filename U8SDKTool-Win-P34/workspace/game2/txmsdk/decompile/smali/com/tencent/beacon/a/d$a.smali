.class final Lcom/tencent/beacon/a/d$a;
.super Lcom/tencent/beacon/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/tencent/beacon/a/d;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/tencent/beacon/a/d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    iput-object v0, p0, Lcom/tencent/beacon/a/d$a;->c:Landroid/util/SparseArray;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/a/d$a;->d:Z

    .line 83
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/d$a;->c:Landroid/util/SparseArray;

    .line 85
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/Runnable;JJ)V
    .registers 14

    .prologue
    const-wide/16 v0, 0x2710

    const-wide/16 v2, 0x0

    .line 118
    monitor-enter p0

    if-nez p2, :cond_11

    .line 125
    :try_start_7
    const-string v0, "task runner should not be null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_4a

    .line 141
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 128
    :cond_11
    cmp-long v4, p3, v2

    if-lez v4, :cond_16

    move-wide v2, p3

    .line 129
    :cond_16
    :try_start_16
    sget-boolean v4, Lcom/tencent/beacon/a/d$a;->a:Z

    if-eqz v4, :cond_4f

    .line 130
    cmp-long v4, p5, v0

    if-lez v4, :cond_4d

    :goto_1e
    move-wide v4, p5

    .line 132
    :goto_1f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/beacon/a/d$a;->a(IZ)V

    .line 134
    iget-object v0, p0, Lcom/tencent/beacon/a/d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_f

    .line 137
    const-string v1, "add a new future! taskId: %d , periodTime: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/tencent/beacon/a/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_4a

    goto :goto_f

    .line 118
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4d
    move-wide p5, v0

    .line 130
    goto :goto_1e

    :cond_4f
    move-wide v4, p5

    goto :goto_1f
.end method

.method public final declared-synchronized a(IZ)V
    .registers 6

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 153
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 155
    const-string v1, "cancel a old future!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 158
    :cond_1d
    iget-object v0, p0, Lcom/tencent/beacon/a/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 159
    monitor-exit p0

    return-void

    .line 146
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 100
    monitor-enter p0

    if-nez p1, :cond_d

    .line 107
    :try_start_3
    const-string v0, "task runner should not be null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    .line 113
    :goto_b
    monitor-exit p0

    return-void

    .line 111
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/tencent/beacon/a/d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_b

    .line 100
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)V
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 182
    monitor-enter p0

    if-nez p1, :cond_f

    .line 189
    :try_start_5
    const-string v0, "task runner should not be null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    .line 195
    :goto_d
    monitor-exit p0

    return-void

    .line 193
    :cond_f
    cmp-long v2, p2, v0

    if-lez v2, :cond_1e

    .line 194
    :goto_13
    :try_start_13
    iget-object v0, p0, Lcom/tencent/beacon/a/d$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_d

    .line 182
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    move-wide p2, v0

    .line 193
    goto :goto_13
.end method
