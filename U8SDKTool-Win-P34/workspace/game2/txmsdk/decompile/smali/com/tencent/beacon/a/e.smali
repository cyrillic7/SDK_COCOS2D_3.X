.class public final Lcom/tencent/beacon/a/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static n:Lcom/tencent/beacon/a/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->a:Landroid/content/Context;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->b:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->c:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/tencent/beacon/a/e;->d:B

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->e:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->f:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->g:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->h:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->i:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/a/e;->j:J

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->k:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->l:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->m:Ljava/lang/String;

    .line 218
    return-void
.end method

.method private declared-synchronized a(B)V
    .registers 3

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-byte v0, p0, Lcom/tencent/beacon/a/e;->d:B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 239
    const-class v1, Lcom/tencent/beacon/a/e;

    monitor-enter v1

    if-eqz p0, :cond_97

    .line 240
    :try_start_5
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    if-nez v0, :cond_10

    .line 241
    new-instance v0, Lcom/tencent/beacon/a/e;

    invoke-direct {v0}, Lcom/tencent/beacon/a/e;-><init>()V

    sput-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    .line 244
    :cond_10
    sget-object v2, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_a8

    .line 245
    :try_start_13
    const-string v0, "init cominfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    iput-object p0, v0, Lcom/tencent/beacon/a/e;->a:Landroid/content/Context;

    .line 247
    invoke-static {p0}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    .line 249
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    invoke-static {}, Lcom/tencent/beacon/a/g;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/beacon/a/e;->b:Ljava/lang/String;

    .line 251
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/beacon/a/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ",level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/beacon/a/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/beacon/a/e;->c:Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/tencent/beacon/a/e;->a(B)V

    .line 255
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    invoke-static {p0}, Lcom/tencent/beacon/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tencent/beacon/a/e;->f(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    invoke-static {p0}, Lcom/tencent/beacon/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/e;->a(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    const-string v3, "beacon"

    invoke-direct {v0, v3}, Lcom/tencent/beacon/a/e;->g(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    const-string v3, "1.9.4"

    invoke-direct {v0, v3}, Lcom/tencent/beacon/a/e;->h(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/e;->b(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    invoke-static {p0}, Lcom/tencent/beacon/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/e;->c(Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 269
    sget-object v3, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    invoke-virtual {v3, v0}, Lcom/tencent/beacon/a/e;->e(Ljava/lang/String;)V

    .line 273
    :goto_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_13 .. :try_end_97} :catchall_a5

    .line 275
    :cond_97
    monitor-exit v1

    return-void

    .line 271
    :cond_99
    :try_start_99
    sget-object v0, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    sget-object v3, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;

    invoke-direct {v3}, Lcom/tencent/beacon/a/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/e;->e(Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_99 .. :try_end_a4} :catchall_a5

    goto :goto_96

    .line 273
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v2

    throw v0
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_a8

    .line 239
    :catchall_a8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->e:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->g:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->h:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized m()Lcom/tencent/beacon/a/e;
    .registers 2

    .prologue
    .line 279
    const-class v0, Lcom/tencent/beacon/a/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/beacon/a/e;->n:Lcom/tencent/beacon/a/e;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized a(J)V
    .registers 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/beacon/a/e;->j:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->f:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->i:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()B
    .registers 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/tencent/beacon/a/e;->d:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    move-result v0

    if-nez v0, :cond_10

    .line 183
    :try_start_9
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->a:Landroid/content/Context;

    const-string v1, "IMEI_DENGTA"

    invoke-static {v0, v1, p1}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_17
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 187
    :cond_10
    :goto_10
    :try_start_10
    iput-object p1, p0, Lcom/tencent/beacon/a/e;->k:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    .line 188
    monitor-exit p0

    return-void

    .line 181
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_17
    move-exception v0

    goto :goto_10
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/a/e;->m:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/a/e;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()J
    .registers 3

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/beacon/a/e;->j:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/beacon/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1b

    move-result v0

    if-eqz v0, :cond_17

    .line 167
    :try_start_b
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->a:Landroid/content/Context;

    const-string v1, "IMEI_DENGTA"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/e;->k:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1e
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 171
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->k:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 165
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1e
    move-exception v0

    goto :goto_17
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->m:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Landroid/content/Context;
    .registers 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/e;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
