.class public Lcom/tencent/beacon/a/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field private n:J


# direct methods
.method public constructor <init>(IJJJJJJ)V
    .registers 16

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/beacon/a/a/e;->n:J

    .line 56
    iput p1, p0, Lcom/tencent/beacon/a/a/e;->a:I

    .line 57
    iput-wide p2, p0, Lcom/tencent/beacon/a/a/e;->b:J

    .line 58
    iput-wide p4, p0, Lcom/tencent/beacon/a/a/e;->c:J

    .line 59
    iput-wide p6, p0, Lcom/tencent/beacon/a/a/e;->d:J

    .line 60
    iput-wide p8, p0, Lcom/tencent/beacon/a/a/e;->e:J

    .line 61
    iput-wide p10, p0, Lcom/tencent/beacon/a/a/e;->j:J

    .line 62
    iput-wide p12, p0, Lcom/tencent/beacon/a/a/e;->k:J

    .line 63
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/e;->n:J
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
    .line 89
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/e;->n:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 68
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[tp:%d , st:%d ,counts:%d, wifi:%d , notWifi:%d , up:%d , dn:%d]"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/beacon/a/a/e;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/tencent/beacon/a/a/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/tencent/beacon/a/a/e;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/tencent/beacon/a/a/e;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/tencent/beacon/a/a/e;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/tencent/beacon/a/a/e;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/tencent/beacon/a/a/e;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_49} :catch_4b

    move-result-object v0

    .line 76
    :goto_4a
    return-object v0

    .line 73
    :catch_4b
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    const/4 v0, 0x0

    goto :goto_4a
.end method
