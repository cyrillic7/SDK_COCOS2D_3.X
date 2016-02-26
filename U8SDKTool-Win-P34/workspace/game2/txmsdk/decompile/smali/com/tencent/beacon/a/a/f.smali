.class public Lcom/tencent/beacon/a/a/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/tencent/beacon/a/a/f;->b:J

    .line 14
    iput-wide v0, p0, Lcom/tencent/beacon/a/a/f;->c:J

    .line 15
    iput-wide v0, p0, Lcom/tencent/beacon/a/a/f;->d:J

    .line 16
    iput-wide v0, p0, Lcom/tencent/beacon/a/a/f;->e:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    .prologue
    .line 22
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/f;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .registers 4

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/f;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()J
    .registers 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/f;->e:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .registers 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/f;->e:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .registers 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/f;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)V
    .registers 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/f;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()J
    .registers 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/f;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(J)V
    .registers 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/f;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .registers 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/f;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(J)V
    .registers 4

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/f;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
