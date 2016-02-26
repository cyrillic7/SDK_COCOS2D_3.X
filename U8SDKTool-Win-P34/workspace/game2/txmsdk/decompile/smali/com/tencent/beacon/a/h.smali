.class public final Lcom/tencent/beacon/a/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/beacon/upload/UploadHandleListener;


# static fields
.field private static e:Lcom/tencent/beacon/a/h;


# instance fields
.field private a:Lcom/tencent/beacon/a/a/e;

.field private b:Lcom/tencent/beacon/a/a/e;

.field private c:Lcom/tencent/beacon/a/a/e;

.field private d:Landroid/content/Context;

.field private f:Lcom/tencent/beacon/event/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/a/h;->e:Lcom/tencent/beacon/a/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/tencent/beacon/a/h;->f:Lcom/tencent/beacon/event/p;

    .line 28
    iput-object p1, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/upload/h;->a(Lcom/tencent/beacon/upload/UploadHandleListener;)Z

    .line 31
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->d()V

    .line 32
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->e()I

    move-result v0

    if-lez v0, :cond_1f

    .line 34
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->f()V

    .line 36
    :cond_1f
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/h;->f:Lcom/tencent/beacon/event/p;

    .line 37
    return-void
.end method

.method private a()Lcom/tencent/beacon/a/a/e;
    .registers 21

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 74
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v16

    .line 75
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v18

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/applog/a;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_1a

    .line 125
    :catch_2b
    move-exception v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v2, 0x0

    :goto_30
    return-object v2

    .line 80
    :cond_31
    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    if-eqz v2, :cond_fd

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v2, v2, Lcom/tencent/beacon/a/a/e;->m:J

    cmp-long v2, v16, v2

    if-nez v2, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v2, v2, Lcom/tencent/beacon/a/a/e;->l:J

    cmp-long v2, v18, v2

    if-eqz v2, :cond_12e

    .line 85
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/e/b;->a(Landroid/content/Context;)Z

    move-result v2

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/beacon/a/a/e;->b:J

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v3, Lcom/tencent/beacon/a/a/e;->m:J

    sub-long v4, v16, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d0

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v4, Lcom/tencent/beacon/a/a/e;->m:J

    sub-long v4, v16, v4

    iput-wide v4, v3, Lcom/tencent/beacon/a/a/e;->k:J

    .line 96
    :goto_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v3, Lcom/tencent/beacon/a/a/e;->l:J

    sub-long v4, v18, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d9

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v4, Lcom/tencent/beacon/a/a/e;->l:J

    sub-long v4, v18, v4

    iput-wide v4, v3, Lcom/tencent/beacon/a/a/e;->j:J

    .line 104
    :goto_95
    if-eqz v2, :cond_e2

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v3, Lcom/tencent/beacon/a/a/e;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v3, Lcom/tencent/beacon/a/a/e;->k:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v3, Lcom/tencent/beacon/a/a/e;->j:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/tencent/beacon/a/a/e;->d:J

    .line 112
    :goto_b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/tencent/beacon/a/a/e;->m:J

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/tencent/beacon/a/a/e;->l:J

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/beacon/a/h;->c(Lcom/tencent/beacon/a/a/e;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    goto/16 :goto_30

    .line 94
    :cond_d0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/tencent/beacon/a/a/e;->k:J

    goto :goto_79

    .line 101
    :cond_d9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/tencent/beacon/a/a/e;->j:J

    goto :goto_95

    .line 109
    :cond_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v3, Lcom/tencent/beacon/a/a/e;->e:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v3, Lcom/tencent/beacon/a/a/e;->k:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v3, Lcom/tencent/beacon/a/a/e;->j:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/tencent/beacon/a/a/e;->e:J

    goto :goto_b1

    .line 118
    :cond_fd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 119
    new-instance v2, Lcom/tencent/beacon/a/a/e;

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/tencent/beacon/a/a/e;->m:J

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/tencent/beacon/a/a/e;->l:J

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/beacon/a/h;->c(Lcom/tencent/beacon/a/a/e;)V

    .line 124
    :cond_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_132} :catch_2b

    goto/16 :goto_30
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;
    .registers 3

    .prologue
    .line 41
    const-class v1, Lcom/tencent/beacon/a/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/a/h;->e:Lcom/tencent/beacon/a/h;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/tencent/beacon/a/h;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/a/h;->e:Lcom/tencent/beacon/a/h;

    .line 44
    :cond_e
    sget-object v0, Lcom/tencent/beacon/a/h;->e:Lcom/tencent/beacon/a/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(JJZ)V
    .registers 33

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 258
    add-long v10, p1, p3

    .line 259
    if-eqz p5, :cond_41

    move-wide v8, v10

    .line 261
    :goto_f
    if-eqz p5, :cond_13

    const-wide/16 v10, 0x0

    .line 262
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    if-nez v2, :cond_44

    .line 266
    new-instance v2, Lcom/tencent/beacon/a/a/e;

    const/4 v3, 0x1

    const-wide/16 v6, 0x1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    invoke-direct/range {v2 .. v15}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    .line 281
    :goto_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    if-nez v2, :cond_91

    .line 282
    new-instance v2, Lcom/tencent/beacon/a/a/e;

    const/4 v3, 0x0

    const-wide/16 v6, 0x1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    invoke-direct/range {v2 .. v15}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_8e

    .line 297
    :goto_3f
    monitor-exit p0

    return-void

    .line 259
    :cond_41
    const-wide/16 v8, 0x0

    goto :goto_f

    .line 270
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v2

    .line 271
    new-instance v12, Lcom/tencent/beacon/a/a/e;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v14, v6, Lcom/tencent/beacon/a/a/e;->b:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v6, Lcom/tencent/beacon/a/a/e;->c:J

    const-wide/16 v16, 0x1

    add-long v16, v16, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v6, Lcom/tencent/beacon/a/a/e;->d:J

    add-long v18, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v6, Lcom/tencent/beacon/a/a/e;->e:J

    add-long v20, v6, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v6, Lcom/tencent/beacon/a/a/e;->j:J

    add-long v22, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v6, Lcom/tencent/beacon/a/a/e;->k:J

    add-long v24, v6, p3

    invoke-direct/range {v12 .. v25}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v6, v2, v3}, Lcom/tencent/beacon/a/a/e;->a(J)V
    :try_end_8d
    .catchall {:try_start_44 .. :try_end_8d} :catchall_8e

    goto :goto_29

    .line 257
    :catchall_8e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 286
    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v16

    .line 287
    new-instance v2, Lcom/tencent/beacon/a/a/e;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v4, Lcom/tencent/beacon/a/a/e;->b:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    iget-wide v6, v6, Lcom/tencent/beacon/a/a/e;->c:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    iget-wide v12, v12, Lcom/tencent/beacon/a/a/e;->d:J

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    iget-wide v12, v12, Lcom/tencent/beacon/a/a/e;->e:J

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    iget-wide v12, v12, Lcom/tencent/beacon/a/a/e;->j:J

    add-long v12, v12, p1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    iget-wide v14, v14, Lcom/tencent/beacon/a/a/e;->k:J

    add-long v14, v14, p3

    invoke-direct/range {v2 .. v15}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/tencent/beacon/a/a/e;->a(J)V
    :try_end_d9
    .catchall {:try_start_91 .. :try_end_d9} :catchall_8e

    goto/16 :goto_3f
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/beacon/a/a/e;)V
    .registers 4

    .prologue
    .line 65
    iget-wide v0, p1, Lcom/tencent/beacon/a/a/e;->m:J

    iput-wide v0, p1, Lcom/tencent/beacon/a/a/e;->i:J

    .line 66
    iget-wide v0, p1, Lcom/tencent/beacon/a/a/e;->l:J

    iput-wide v0, p1, Lcom/tencent/beacon/a/a/e;->h:J

    .line 67
    iget-wide v0, p1, Lcom/tencent/beacon/a/a/e;->e:J

    iput-wide v0, p1, Lcom/tencent/beacon/a/a/e;->g:J

    .line 68
    iget-wide v0, p1, Lcom/tencent/beacon/a/a/e;->d:J

    iput-wide v0, p1, Lcom/tencent/beacon/a/a/e;->f:J

    .line 69
    invoke-static {p0}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/tencent/beacon/a/h;->c(Lcom/tencent/beacon/a/a/e;)V

    .line 70
    return-void
.end method

.method private declared-synchronized a(Lcom/tencent/beacon/a/a/e;)V
    .registers 3

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Lcom/tencent/beacon/a/a/e;
    .registers 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;
    .registers 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/tencent/beacon/a/h;->b()Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(Lcom/tencent/beacon/a/a/e;)V
    .registers 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 200
    monitor-exit p0

    return-void

    .line 199
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Lcom/tencent/beacon/a/a/e;
    .registers 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->e()I

    .line 191
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;
    .registers 2

    .prologue
    .line 59
    invoke-static {p0}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/tencent/beacon/a/h;->a()Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/tencent/beacon/a/a/e;)V
    .registers 5

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    if-eqz p1, :cond_a

    .line 321
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 324
    iget-object v1, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/a/a/e;

    invoke-static {v1, v0}, Lcom/tencent/beacon/applog/a;->c(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I

    .line 328
    :cond_21
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_29

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/e;

    .line 207
    iget v2, v0, Lcom/tencent/beacon/a/a/e;->a:I

    if-nez v2, :cond_20

    .line 208
    invoke-direct {p0, v0}, Lcom/tencent/beacon/a/h;->a(Lcom/tencent/beacon/a/a/e;)V

    goto :goto_c

    .line 209
    :cond_20
    iget v2, v0, Lcom/tencent/beacon/a/a/e;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 210
    invoke-direct {p0, v0}, Lcom/tencent/beacon/a/h;->b(Lcom/tencent/beacon/a/a/e;)V

    goto :goto_c

    .line 214
    :cond_29
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 135
    invoke-static {p0}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v14

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v14}, Lcom/tencent/beacon/a/h;->b()Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_28

    iget-object v6, v14, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/tencent/beacon/a/a/e;

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I

    :cond_28
    new-instance v0, Lcom/tencent/beacon/a/a/e;

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    move-wide v12, v4

    invoke-direct/range {v0 .. v13}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    invoke-direct {v14, v0}, Lcom/tencent/beacon/a/h;->a(Lcom/tencent/beacon/a/a/e;)V

    .line 136
    return-void
.end method

.method private declared-synchronized e()I
    .registers 16

    .prologue
    .line 234
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/beacon/b/a;->j()J

    move-result-wide v0

    .line 236
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 237
    const/4 v14, 0x0

    .line 238
    iget-object v4, p0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    iget-wide v4, v4, Lcom/tencent/beacon/a/a/e;->b:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_2e

    .line 239
    :cond_1b
    new-instance v0, Lcom/tencent/beacon/a/a/e;

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    iput-object v0, p0, Lcom/tencent/beacon/a/h;->b:Lcom/tencent/beacon/a/a/e;

    .line 241
    const/4 v14, 0x1

    .line 244
    :cond_2e
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;

    if-nez v0, :cond_4b

    .line 246
    new-instance v0, Lcom/tencent/beacon/a/a/e;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    iput-object v0, p0, Lcom/tencent/beacon/a/h;->a:Lcom/tencent/beacon/a/a/e;
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_48

    .line 248
    add-int/lit8 v0, v14, 0x1

    .line 251
    :goto_46
    monitor-exit p0

    return v0

    .line 234
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4b
    move v0, v14

    goto :goto_46
.end method

.method public static e(Landroid/content/Context;)V
    .registers 16

    .prologue
    const-wide/16 v4, 0x0

    .line 141
    invoke-static {p0}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v14

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, v14, Lcom/tencent/beacon/a/h;->c:Lcom/tencent/beacon/a/a/e;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-ltz v1, :cond_26

    iget-object v1, v14, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/tencent/beacon/a/a/e;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I

    :cond_26
    new-instance v0, Lcom/tencent/beacon/a/a/e;

    const/4 v1, 0x2

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    move-wide v12, v4

    invoke-direct/range {v0 .. v13}, Lcom/tencent/beacon/a/a/e;-><init>(IJJJJJJ)V

    invoke-direct {v14, v0}, Lcom/tencent/beacon/a/h;->a(Lcom/tencent/beacon/a/a/e;)V

    .line 142
    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;
    .registers 2

    .prologue
    .line 147
    invoke-static {p0}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/tencent/beacon/a/h;->c()Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->b()Lcom/tencent/beacon/a/a/e;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_e

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_e
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->c()Lcom/tencent/beacon/a/a/e;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_17

    .line 308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 311
    iget-object v1, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/a/a/e;

    invoke-static {v1, v0}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I

    .line 315
    :cond_2e
    return-void
.end method


# virtual methods
.method public final onUploadEnd(IIJJZLjava/lang/String;)V
    .registers 16

    .prologue
    .line 157
    const-string v0, " req:%d  res:%d  send:%d  recv:%d  result: %b  msg:%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p8, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    if-eqz p1, :cond_47

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_47

    .line 161
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->f:Lcom/tencent/beacon/event/p;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/tencent/beacon/a/h;->f:Lcom/tencent/beacon/event/p;

    iget-object v0, v0, Lcom/tencent/beacon/event/p;->e:Lcom/tencent/beacon/d/a;

    if-eqz v0, :cond_47

    .line 162
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->f:Lcom/tencent/beacon/event/p;

    iget-object v0, v0, Lcom/tencent/beacon/event/p;->e:Lcom/tencent/beacon/d/a;

    invoke-virtual {v0, p1, p7}, Lcom/tencent/beacon/d/a;->a(IZ)V

    .line 166
    :cond_47
    const/4 v0, 0x5

    if-eq p1, v0, :cond_75

    .line 167
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->d()V

    .line 168
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->e()I

    .line 169
    iget-object v0, p0, Lcom/tencent/beacon/a/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/e/b;->a(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/a/h;->a(JJZ)V

    .line 170
    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->f()V

    .line 171
    const-string v0, " [total:%s] \n[today:%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->b()Lcom/tencent/beacon/a/a/e;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/beacon/a/h;->c()Lcom/tencent/beacon/a/a/e;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_75
    return-void
.end method
