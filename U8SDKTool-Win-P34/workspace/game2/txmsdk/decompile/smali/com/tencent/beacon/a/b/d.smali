.class public final Lcom/tencent/beacon/a/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:J


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/beacon/a/b/d;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private static declared-synchronized a()J
    .registers 4

    .prologue
    .line 26
    const-class v0, Lcom/tencent/beacon/a/b/d;

    monitor-enter v0

    :try_start_3
    sget-wide v2, Lcom/tencent/beacon/a/b/d;->a:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-wide v2

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(J)V
    .registers 4

    .prologue
    .line 30
    const-class v0, Lcom/tencent/beacon/a/b/d;

    monitor-enter v0

    :try_start_3
    sput-wide p0, Lcom/tencent/beacon/a/b/d;->a:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 31
    monitor-exit v0

    return-void

    .line 30
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/16 v2, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;I)Lcom/tencent/beacon/a/b/h;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/h;->b()I

    move-result v1

    if-ne v1, v2, :cond_38

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/h;->c()[B

    move-result-object v1

    if-eqz v1, :cond_38

    :try_start_1a
    iget-object v1, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/c;->e()Lcom/tencent/beacon/upload/f;

    move-result-object v1

    if-eqz v1, :cond_38

    const/16 v2, 0x65

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/h;->c()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/beacon/upload/f;->a(I[BZ)V

    const-string v0, "common strategy setted by local db"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_38} :catch_a5

    .line 145
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v8

    .line 148
    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/c;->h()I

    move-result v0

    if-nez v0, :cond_c5

    .line 149
    const-string v0, "stepCheckApp"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v8, v7}, Lcom/tencent/beacon/a/b/c;->a(I)V

    .line 152
    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    .line 154
    const-string v1, "isAppFirstRun : %b"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-eqz v0, :cond_ad

    .line 158
    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    .line 159
    const-string v1, "clear all ao: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    monitor-enter v8

    .line 165
    :try_start_7f
    const-string v0, "appfirstRun"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/c;->g()[Lcom/tencent/beacon/a/b/b;

    move-result-object v1

    .line 168
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/tencent/beacon/a/b/c;->b(Z)V

    .line 169
    monitor-exit v8
    :try_end_90
    .catchall {:try_start_7f .. :try_end_90} :catchall_aa

    .line 171
    if-eqz v1, :cond_c5

    .line 172
    const-string v0, "notify listener first run"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    array-length v2, v1

    move v0, v6

    :goto_9b
    if-ge v0, v2, :cond_c5

    aget-object v3, v1, v0

    .line 174
    invoke-interface {v3}, Lcom/tencent/beacon/a/b/b;->c()V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 143
    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_38

    .line 169
    :catchall_aa
    move-exception v0

    monitor-exit v8

    throw v0

    .line 179
    :cond_ad
    invoke-static {}, Lcom/tencent/beacon/a/b/d;->a()J

    move-result-wide v0

    .line 180
    cmp-long v2, v0, v10

    if-lez v2, :cond_c5

    .line 181
    const-string v2, "sleep: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :try_start_c2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c5} :catch_ec

    .line 189
    :cond_c5
    :goto_c5
    monitor-enter v8

    .line 190
    :try_start_c6
    const-string v0, "stepStartQuery"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/c;->g()[Lcom/tencent/beacon/a/b/b;

    move-result-object v1

    .line 193
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/tencent/beacon/a/b/c;->a(I)V

    .line 194
    monitor-exit v8
    :try_end_d7
    .catchall {:try_start_c6 .. :try_end_d7} :catchall_f1

    .line 196
    if-eqz v1, :cond_f4

    .line 197
    const-string v0, "notify listener query start"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    array-length v2, v1

    move v0, v6

    :goto_e2
    if-ge v0, v2, :cond_f4

    aget-object v3, v1, v0

    .line 199
    invoke-interface {v3}, Lcom/tencent/beacon/a/b/b;->a()V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    .line 182
    :catch_ec
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c5

    .line 194
    :catchall_f1
    move-exception v0

    monitor-exit v8

    throw v0

    .line 203
    :cond_f4
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e;->g()Z

    move-result v0

    if-nez v0, :cond_180

    .line 204
    invoke-static {}, Lcom/tencent/beacon/a/b/c;->b()Lcom/tencent/beacon/upload/g;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    :goto_104
    if-nez v1, :cond_11c

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x5

    if-ge v2, v0, :cond_11c

    const-wide/16 v0, 0xc8

    :try_start_10d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_10d .. :try_end_110} :catch_117

    :goto_110
    invoke-static {}, Lcom/tencent/beacon/a/b/c;->b()Lcom/tencent/beacon/upload/g;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    goto :goto_104

    :catch_117
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_110

    :cond_11c
    if-eqz v1, :cond_1b1

    new-instance v0, Lcom/tencent/beacon/upload/b;

    iget-object v2, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-direct {v0, v2, v6, v3}, Lcom/tencent/beacon/upload/b;-><init>(Landroid/content/Context;II)V

    invoke-interface {v1, v0}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V

    :try_start_12a
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1a6

    move v0, v7

    :goto_135
    if-eqz v0, :cond_14c

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    const-string v4, "GEN_QIMEI"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    move v0, v6

    :cond_14c
    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    const-string v4, "QIMEI_DENGTA"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15f

    move v0, v7

    :cond_15f
    if-eqz v0, :cond_180

    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e;->h()Z

    move-result v0

    if-nez v0, :cond_180

    new-instance v0, Lcom/tencent/beacon/upload/c;

    iget-object v2, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/beacon/upload/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V

    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    const-string v1, "GEN_QIMEI"

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_180} :catch_1a8

    .line 207
    :cond_180
    :goto_180
    const-string v0, "common query end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    monitor-enter v8

    .line 210
    :try_start_188
    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/c;->g()[Lcom/tencent/beacon/a/b/b;

    move-result-object v1

    .line 211
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/tencent/beacon/a/b/c;->a(I)V

    .line 212
    monitor-exit v8
    :try_end_191
    .catchall {:try_start_188 .. :try_end_191} :catchall_1b9

    .line 214
    if-eqz v1, :cond_1bc

    .line 215
    const-string v0, "notify listener query end"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    array-length v2, v1

    move v0, v6

    :goto_19c
    if-ge v0, v2, :cond_1bc

    aget-object v3, v1, v0

    .line 217
    invoke-interface {v3}, Lcom/tencent/beacon/a/b/b;->b()V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_19c

    :cond_1a6
    move v0, v6

    .line 204
    goto :goto_135

    :catch_1a8
    move-exception v0

    const-string v0, "save GEN_QIMEI flag failed! "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_180

    :cond_1b1
    const-string v0, "no uphandler ,no upload!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_180

    .line 212
    :catchall_1b9
    move-exception v0

    monitor-exit v8

    throw v0

    .line 221
    :cond_1bc
    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    if-nez v0, :cond_1d0

    const-string v0, "magic should never null ? comStrategy"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :goto_1cf
    return-void

    .line 221
    :cond_1d0
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e;->c()I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_1fc

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;J)V

    const-string v2, "next time: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/c;->a(I)V

    goto :goto_1cf

    :cond_1fc
    const-string v0, "stop loop query"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1cf
.end method
