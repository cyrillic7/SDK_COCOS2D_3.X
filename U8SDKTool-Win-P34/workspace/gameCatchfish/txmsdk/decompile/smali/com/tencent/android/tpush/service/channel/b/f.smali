.class public Lcom/tencent/android/tpush/service/channel/b/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/b/c;


# instance fields
.field private a:J

.field private b:Z

.field protected j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->b:Z

    return-void
.end method


# virtual methods
.method public a()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 28
    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    sget v4, Lcom/tencent/android/tpush/service/a/a;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 29
    cmp-long v4, v2, v0

    if-gez v4, :cond_12

    .line 31
    :goto_11
    return-wide v0

    :cond_12
    move-wide v0, v2

    goto :goto_11
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b/f;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    .line 16
    return-void
.end method

.method public declared-synchronized b()Z
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 5

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    .line 24
    :cond_11
    return-void
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 38
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
