.class public Lcom/tencent/tmdownloader/internal/a/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/a/e;


# instance fields
.field protected final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/e;->a:Lcom/tencent/tmdownloader/internal/a/e;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/e;->b:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static a()Lcom/tencent/tmdownloader/internal/a/e;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/e;->a:Lcom/tencent/tmdownloader/internal/a/e;

    if-nez v0, :cond_b

    .line 11
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/e;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/a/e;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/e;->a:Lcom/tencent/tmdownloader/internal/a/e;

    .line 13
    :cond_b
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/e;->a:Lcom/tencent/tmdownloader/internal/a/e;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/tmdownloader/internal/a/l;)V
    .registers 3

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 22
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 24
    :cond_e
    monitor-exit p0

    return-void

    .line 21
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/l;

    .line 44
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tmdownloader/internal/a/l;->a(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 43
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;JJ)V
    .registers 14

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/l;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 60
    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmdownloader/internal/a/l;->a(Ljava/lang/String;JJ)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 59
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/tencent/tmdownloader/internal/a/l;)V
    .registers 3

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
