.class public Lcom/tencent/beacon/event/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:J

.field private h:Z

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/beacon/event/k;->a:J

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/k;->f:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/event/k;->a:J
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
    .line 62
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/event/k;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/event/k;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/event/k;->e:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/beacon/event/k;->f:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/k;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .registers 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/event/k;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/event/k;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .registers 3

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/beacon/event/k;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .registers 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/event/k;->c:J
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
    .line 156
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/event/k;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Z)V
    .registers 2

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/tencent/beacon/event/k;->j:Z

    .line 191
    return-void
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/k;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(J)V
    .registers 4

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/event/k;->i:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/k;->e:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .registers 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/k;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()J
    .registers 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/event/k;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .registers 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/k;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()J
    .registers 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/event/k;->i:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/tencent/beacon/event/k;->j:Z

    return v0
.end method
