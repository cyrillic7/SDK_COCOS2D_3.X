.class public final Lcom/tencent/beacon/upload/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/beacon/upload/g;


# static fields
.field private static a:Lcom/tencent/beacon/upload/h;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/beacon/upload/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/upload/UploadHandleListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/beacon/upload/e;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/beacon/upload/h;->b:Landroid/util/SparseArray;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/beacon/upload/h;->c:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    .line 38
    iput-boolean v2, p0, Lcom/tencent/beacon/upload/h;->f:Z

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/beacon/upload/h;->g:I

    .line 45
    iput-boolean v2, p0, Lcom/tencent/beacon/upload/h;->h:Z

    .line 84
    if-eqz p1, :cond_23

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    :cond_23
    if-eqz v0, :cond_32

    .line 87
    iput-object v0, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    .line 91
    :goto_27
    iput-boolean p2, p0, Lcom/tencent/beacon/upload/h;->f:Z

    .line 92
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/upload/h;->d:Lcom/tencent/beacon/upload/e;

    .line 93
    return-void

    .line 89
    :cond_32
    iput-object p1, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    goto :goto_27
.end method

.method private static a([B)Lcom/tencent/beacon/c/a/c;
    .registers 5

    .prologue
    .line 291
    if-eqz p0, :cond_29

    .line 294
    const/4 v0, 0x2

    :try_start_3
    invoke-static {v0, p0}, Lcom/tencent/beacon/applog/a;->b(I[B)[B

    move-result-object v0

    .line 295
    new-instance v1, Lcom/tencent/beacon/f/d;

    invoke-direct {v1}, Lcom/tencent/beacon/f/d;-><init>()V

    .line 296
    invoke-virtual {v1, v0}, Lcom/tencent/beacon/f/d;->a([B)V

    .line 297
    new-instance v0, Lcom/tencent/beacon/c/a/c;

    invoke-direct {v0}, Lcom/tencent/beacon/c/a/c;-><init>()V

    .line 298
    const-string v2, " covert to ResponsePackage "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/beacon/f/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/c/a/c;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_24} :catch_25

    .line 307
    :goto_24
    return-object v0

    .line 302
    :catch_25
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    :cond_29
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;
    .registers 4

    .prologue
    .line 53
    const-class v1, Lcom/tencent/beacon/upload/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    if-nez v0, :cond_17

    .line 54
    new-instance v0, Lcom/tencent/beacon/upload/h;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/tencent/beacon/upload/h;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    .line 55
    const-string v0, " create uphandler up:true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_17
    sget-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/tencent/beacon/upload/h;
    .registers 7

    .prologue
    .line 70
    const-class v1, Lcom/tencent/beacon/upload/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    if-nez v0, :cond_1d

    .line 71
    new-instance v0, Lcom/tencent/beacon/upload/h;

    invoke-direct {v0, p0, p1}, Lcom/tencent/beacon/upload/h;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    .line 72
    const-string v0, " create uphandler up: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_1d
    sget-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    invoke-virtual {v0}, Lcom/tencent/beacon/upload/h;->a()Z

    move-result v0

    if-eq v0, p1, :cond_39

    .line 75
    sget-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/upload/h;->b(Z)V

    .line 76
    const-string v0, " change uphandler up: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_39
    sget-object v0, Lcom/tencent/beacon/upload/h;->a:Lcom/tencent/beacon/upload/h;
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3d

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/tencent/beacon/upload/h;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 132
    monitor-exit p0

    return-void

    .line 131
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IIJJZLjava/lang/String;)V
    .registers 22

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/tencent/beacon/upload/h;->d()[Lcom/tencent/beacon/upload/UploadHandleListener;

    move-result-object v10

    .line 330
    if-eqz v10, :cond_1c

    .line 331
    array-length v11, v10

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v11, :cond_1c

    aget-object v1, v10, v0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 332
    invoke-interface/range {v1 .. v9}, Lcom/tencent/beacon/upload/UploadHandleListener;->onUploadEnd(IIJJZLjava/lang/String;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 337
    :cond_1c
    return-void
.end method

.method private a(Landroid/util/SparseArray;I[B)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/beacon/upload/f;",
            ">;I[B)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 503
    if-eqz p1, :cond_6

    if-nez p3, :cond_8

    :cond_6
    move v0, v1

    .line 542
    :goto_7
    return v0

    .line 508
    :cond_8
    packed-switch p2, :pswitch_data_ac

    .line 528
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/upload/f;

    .line 529
    if-nez v0, :cond_77

    .line 530
    const-string v0, " no handler key:%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 531
    goto :goto_7

    .line 511
    :pswitch_22
    :try_start_22
    const-string v0, " process CMD_RESPONSE_GEN_QIMEI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    new-instance v0, Lcom/tencent/beacon/f/a;

    invoke-direct {v0, p3}, Lcom/tencent/beacon/f/a;-><init>([B)V

    .line 513
    new-instance v2, Lcom/tencent/beacon/c/c/a;

    invoke-direct {v2}, Lcom/tencent/beacon/c/c/a;-><init>()V

    .line 514
    invoke-virtual {v2, v0}, Lcom/tencent/beacon/c/c/a;->a(Lcom/tencent/beacon/f/a;)V

    .line 515
    iget-object v0, v2, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 516
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/j;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/j;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/j;->a(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    const-string v3, "QIMEI_DENGTA"

    iget-object v4, v2, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 520
    :cond_4f
    const-string v0, " Qimei:%s  imei:%s  imsi:%s  aid:%s  mac:%s "

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v2, Lcom/tencent/beacon/c/c/a;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v2, Lcom/tencent/beacon/c/c/a;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/tencent/beacon/c/c/a;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v2, v2, Lcom/tencent/beacon/c/c/a;->c:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_70} :catch_72

    :goto_70
    move v0, v1

    .line 525
    goto :goto_7

    .line 522
    :catch_72
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_70

    .line 535
    :cond_77
    :try_start_77
    const-string v3, " key:%d  handler: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    const/4 v3, 0x1

    invoke-interface {v0, p2, p3, v3}, Lcom/tencent/beacon/upload/f;->a(I[BZ)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_95} :catch_98

    move v0, v1

    .line 538
    goto/16 :goto_7

    .line 539
    :catch_98
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 541
    const-string v0, " handle error key:%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 542
    goto/16 :goto_7

    .line 508
    :pswitch_data_ac
    .packed-switch 0x67
        :pswitch_22
    .end packed-switch
.end method

.method private declared-synchronized b(Z)V
    .registers 3

    .prologue
    .line 559
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/beacon/upload/h;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 560
    monitor-exit p0

    return-void

    .line 559
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Lcom/tencent/beacon/upload/a;)[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 260
    if-eqz p0, :cond_59

    .line 262
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/beacon/upload/a;->a()Lcom/tencent/beacon/c/a/b;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_59

    .line 264
    const-string v1, " RequestPackage info appkey:%s sdkid:%s appVersion:%s cmd: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/tencent/beacon/c/a/b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/tencent/beacon/c/a/b;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/tencent/beacon/c/a/b;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v0, Lcom/tencent/beacon/c/a/b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v1, Lcom/tencent/beacon/f/d;

    invoke-direct {v1}, Lcom/tencent/beacon/f/d;-><init>()V

    .line 267
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/f/d;->a(I)V

    .line 268
    const-string v2, "test"

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/f/d;->b(Ljava/lang/String;)V

    .line 269
    const-string v2, "test"

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/f/d;->a(Ljava/lang/String;)V

    .line 270
    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/beacon/f/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/tencent/beacon/f/d;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->a(I[B)[B
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_49} :catch_4b

    move-result-object v0

    .line 280
    :goto_4a
    return-object v0

    .line 274
    :catch_4b
    move-exception v0

    .line 275
    const-string v1, " parseSendDatas error"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    invoke-virtual {p0}, Lcom/tencent/beacon/upload/a;->b()V

    .line 280
    :cond_59
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private declared-synchronized c()I
    .registers 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/upload/h;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()[Lcom/tencent/beacon/upload/UploadHandleListener;
    .registers 3

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->c:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 342
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->c:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/beacon/upload/UploadHandleListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/upload/UploadHandleListener;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 345
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 341
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/tencent/beacon/upload/e;
    .registers 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->d:Lcom/tencent/beacon/upload/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/beacon/upload/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 465
    new-instance v0, Lcom/tencent/beacon/e/c;

    invoke-direct {v0}, Lcom/tencent/beacon/e/c;-><init>()V

    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->b:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/tencent/beacon/e/c;->a(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    move-result-object v0

    .line 468
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 464
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/beacon/upload/a;)V
    .registers 19

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/beacon/upload/h;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/beacon/upload/h;->b()Z

    move-result v2

    if-nez v2, :cond_43

    .line 138
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 140
    const-string v2, "  Not UpProc real event sync 2 DB done false"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/upload/a;->a(Z)V

    .line 143
    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/beacon/upload/a;->b:I

    if-eqz v2, :cond_3b

    .line 145
    const-string v2, "  Not UpProc not req: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_3a
    :goto_3a
    return-void

    .line 149
    :cond_3b
    const-string v2, "  NotUpProc com req start "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/e/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 154
    const-string v2, " doUpload network is disabled!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3a

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/upload/a;->a(Z)V

    goto :goto_3a

    .line 163
    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/h;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/upload/h;->a(Lcom/tencent/beacon/upload/UploadHandleListener;)Z

    .line 165
    if-nez p1, :cond_7b

    .line 166
    const-string v2, " upData == null "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3a

    .line 169
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v4

    .line 170
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 171
    const/4 v10, 0x0

    .line 172
    const/4 v5, -0x1

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_97

    const-string v3, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 177
    :cond_97
    const-string v2, " url error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ac

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/upload/a;->a(Z)V

    .line 183
    :cond_ac
    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "url error"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/tencent/beacon/upload/h;->a(IIJJZLjava/lang/String;)V

    goto :goto_3a

    .line 188
    :cond_ba
    invoke-static/range {p1 .. p1}, Lcom/tencent/beacon/upload/h;->b(Lcom/tencent/beacon/upload/a;)[B

    move-result-object v11

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->d()Ljava/lang/String;

    move-result-object v3

    .line 191
    if-eqz v3, :cond_db

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "?rid="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    :cond_db
    const-string v3, " start upload cmd: %d  url:%s  datas:%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v3, v12}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    if-nez v11, :cond_111

    .line 198
    const-string v2, " sendData is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "sData error"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/tencent/beacon/upload/h;->a(IIJJZLjava/lang/String;)V

    goto/16 :goto_3a

    .line 205
    :cond_111
    invoke-direct/range {p0 .. p0}, Lcom/tencent/beacon/upload/h;->e()Lcom/tencent/beacon/upload/e;

    move-result-object v12

    .line 206
    if-nez v12, :cond_12e

    .line 207
    const-string v2, " reqH error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "reqH error"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/tencent/beacon/upload/h;->a(IIJJZLjava/lang/String;)V

    goto/16 :goto_3a

    .line 214
    :cond_12e
    :try_start_12e
    new-instance v13, Lcom/tencent/beacon/upload/d;

    invoke-direct {v13}, Lcom/tencent/beacon/upload/d;-><init>()V

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v12, v2, v11, v13, v0}, Lcom/tencent/beacon/upload/e;->a(Ljava/lang/String;[BLcom/tencent/beacon/upload/d;Lcom/tencent/beacon/upload/a;)[B

    move-result-object v3

    .line 216
    if-nez v3, :cond_19b

    .line 218
    const/16 v14, 0x64

    if-ne v4, v14, :cond_35b

    const-string v14, "http://strategy.beacon.qq.com/analytics/upload?mType=beacon"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35b

    .line 219
    const-string v2, "http://strategy.beacon.qq.com/analytics/upload?mType=beacon"

    move-object/from16 v0, p1

    invoke-virtual {v12, v2, v11, v13, v0}, Lcom/tencent/beacon/upload/e;->a(Ljava/lang/String;[BLcom/tencent/beacon/upload/d;Lcom/tencent/beacon/upload/a;)[B

    move-result-object v3

    move-object v2, v3

    .line 221
    :goto_150
    invoke-direct/range {p0 .. p0}, Lcom/tencent/beacon/upload/h;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/beacon/upload/h;->a(I)V

    .line 226
    :goto_15b
    invoke-virtual {v13}, Lcom/tencent/beacon/upload/d;->a()J

    move-result-wide v6

    .line 227
    invoke-virtual {v13}, Lcom/tencent/beacon/upload/d;->b()J

    move-result-wide v8

    .line 230
    invoke-static {v2}, Lcom/tencent/beacon/upload/h;->a([B)Lcom/tencent/beacon/c/a/c;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_18a

    .line 232
    iget v5, v2, Lcom/tencent/beacon/c/a/c;->b:I

    .line 233
    iget-byte v3, v2, Lcom/tencent/beacon/c/a/c;->a:B

    if-nez v3, :cond_1a3

    const/4 v10, 0x1

    .line 234
    :goto_170
    const-string v3, "response.cmd:%d response.result:%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v2, Lcom/tencent/beacon/c/a/c;->b:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-byte v13, v2, Lcom/tencent/beacon/c/a/c;->a:B

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_18a
    if-eqz p1, :cond_18e

    if-nez v2, :cond_1a5

    .line 240
    :cond_18e
    :goto_18e
    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/tencent/beacon/upload/h;->a(IIJJZLjava/lang/String;)V
    :try_end_194
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_194} :catch_244
    .catchall {:try_start_12e .. :try_end_194} :catchall_289

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/tencent/beacon/upload/a;->a(Z)V

    goto/16 :goto_3a

    .line 223
    :cond_19b
    const/4 v2, 0x0

    :try_start_19c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/beacon/upload/h;->a(I)V

    move-object v2, v3

    goto :goto_15b

    .line 233
    :cond_1a3
    const/4 v10, 0x0

    goto :goto_170

    .line 239
    :cond_1a5
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v3

    if-eqz v3, :cond_1e1

    iget-object v11, v2, Lcom/tencent/beacon/c/a/c;->d:Ljava/lang/String;

    if-eqz v11, :cond_1b8

    iget-object v11, v2, Lcom/tencent/beacon/c/a/c;->d:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/tencent/beacon/a/e;->b(Ljava/lang/String;)V

    :cond_1b8
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    iget-wide v12, v2, Lcom/tencent/beacon/c/a/c;->g:J

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Lcom/tencent/beacon/a/e;->a(J)V

    const-string v11, " fix ip:%s  tmgap: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/tencent/beacon/a/e;->g()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/tencent/beacon/a/e;->h()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e1
    iget v3, v2, Lcom/tencent/beacon/c/a/c;->b:I

    const/16 v11, 0x65

    if-eq v3, v11, :cond_1f3

    iget v3, v2, Lcom/tencent/beacon/c/a/c;->b:I

    const/16 v11, 0x67

    if-eq v3, v11, :cond_1f3

    iget v3, v2, Lcom/tencent/beacon/c/a/c;->b:I

    const/16 v11, 0x69

    if-ne v3, v11, :cond_236

    :cond_1f3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;

    move-result-object v3

    if-eqz v3, :cond_236

    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v11

    iget-byte v12, v2, Lcom/tencent/beacon/c/a/c;->f:B

    if-eq v11, v12, :cond_20e

    iget-byte v11, v2, Lcom/tencent/beacon/c/a/c;->f:B

    invoke-virtual {v3, v11}, Lcom/tencent/beacon/a/b/e;->b(B)V

    :cond_20e
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v11

    iget-byte v12, v2, Lcom/tencent/beacon/c/a/c;->e:B

    if-eq v11, v12, :cond_21b

    iget-byte v11, v2, Lcom/tencent/beacon/c/a/c;->e:B

    invoke-virtual {v3, v11}, Lcom/tencent/beacon/a/b/e;->a(B)V

    :cond_21b
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_231

    iget-object v11, v2, Lcom/tencent/beacon/c/a/c;->h:Ljava/lang/String;

    if-eqz v11, :cond_236

    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/tencent/beacon/c/a/c;->h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_236

    :cond_231
    iget-object v11, v2, Lcom/tencent/beacon/c/a/c;->h:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/tencent/beacon/a/b/e;->b(Ljava/lang/String;)V

    :cond_236
    iget-object v3, v2, Lcom/tencent/beacon/c/a/c;->c:[B

    if-nez v3, :cond_269

    const-string v2, " no response! "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_242
    .catch Ljava/lang/Throwable; {:try_start_19c .. :try_end_242} :catch_244
    .catchall {:try_start_19c .. :try_end_242} :catchall_289

    goto/16 :goto_18e

    .line 241
    :catch_244
    move-exception v2

    move v12, v10

    .line 242
    :try_start_246
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/tencent/beacon/upload/h;->a(IIJJZLjava/lang/String;)V

    .line 245
    const-string v3, " req error  %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_262
    .catchall {:try_start_246 .. :try_end_262} :catchall_355

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/tencent/beacon/upload/a;->a(Z)V

    goto/16 :goto_3a

    .line 239
    :cond_269
    :try_start_269
    iget-byte v11, v2, Lcom/tencent/beacon/c/a/c;->f:B

    iget-byte v12, v2, Lcom/tencent/beacon/c/a/c;->e:B

    iget-object v13, v2, Lcom/tencent/beacon/c/a/c;->i:Ljava/lang/String;

    invoke-static {v3, v11, v12, v13}, Lcom/tencent/beacon/b/a;->b([BIILjava/lang/String;)[B

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/tencent/beacon/upload/h;->f()Landroid/util/SparseArray;

    move-result-object v11

    if-eqz v11, :cond_27f

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-gtz v12, :cond_290

    :cond_27f
    const-string v2, " no handler! "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_287
    .catch Ljava/lang/Throwable; {:try_start_269 .. :try_end_287} :catch_244
    .catchall {:try_start_269 .. :try_end_287} :catchall_289

    goto/16 :goto_18e

    .line 248
    :catchall_289
    move-exception v2

    :goto_28a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/tencent/beacon/upload/a;->a(Z)V

    throw v2

    .line 239
    :cond_290
    :try_start_290
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v12

    iget v13, v2, Lcom/tencent/beacon/c/a/c;->b:I

    iget-byte v2, v2, Lcom/tencent/beacon/c/a/c;->a:B
    :try_end_298
    .catch Ljava/lang/Throwable; {:try_start_290 .. :try_end_298} :catch_244
    .catchall {:try_start_290 .. :try_end_298} :catchall_289

    if-nez v2, :cond_2da

    if-lez v12, :cond_2da

    const/4 v2, 0x5

    if-gt v12, v2, :cond_2da

    :try_start_29f
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    const-string v15, "QIMEI_DENGTA"

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2da

    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/a/b/e;->h()Z

    move-result v2

    if-nez v2, :cond_2da

    new-instance v2, Lcom/tencent/beacon/upload/c;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-direct {v2, v14}, Lcom/tencent/beacon/upload/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/c;->b()Lcom/tencent/beacon/upload/g;

    move-result-object v14

    invoke-interface {v14, v2}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    const-string v14, "GEN_QIMEI"

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2da} :catch_359
    .catch Ljava/lang/Throwable; {:try_start_29f .. :try_end_2da} :catch_244
    .catchall {:try_start_29f .. :try_end_2da} :catchall_289

    :cond_2da
    :goto_2da
    if-nez v13, :cond_2e6

    :try_start_2dc
    const-string v2, " response no datas "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18e

    :cond_2e6
    sparse-switch v12, :sswitch_data_35e

    const-string v2, " unknown req: %d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18e

    :sswitch_2fa
    const/16 v2, 0x65

    if-eq v13, v2, :cond_34e

    const-string v2, " UNMATCH req: %d , rep: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18e

    :sswitch_316
    const/16 v2, 0x69

    if-eq v13, v2, :cond_34e

    const-string v2, " UNMATCH req: %d , rep: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18e

    :sswitch_332
    const/16 v2, 0x67

    if-eq v13, v2, :cond_34e

    const-string v2, " UNMATCH req: %d  , rep: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18e

    :cond_34e
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v3}, Lcom/tencent/beacon/upload/h;->a(Landroid/util/SparseArray;I[B)Z
    :try_end_353
    .catch Ljava/lang/Throwable; {:try_start_2dc .. :try_end_353} :catch_244
    .catchall {:try_start_2dc .. :try_end_353} :catchall_289

    goto/16 :goto_18e

    .line 248
    :catchall_355
    move-exception v2

    move v10, v12

    goto/16 :goto_28a

    :catch_359
    move-exception v2

    goto :goto_2da

    :cond_35b
    move-object v2, v3

    goto/16 :goto_150

    .line 239
    :sswitch_data_35e
    .sparse-switch
        0x4 -> :sswitch_316
        0x64 -> :sswitch_2fa
        0x66 -> :sswitch_332
    .end sparse-switch
.end method

.method public final declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 571
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/beacon/upload/h;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 572
    monitor-exit p0

    return-void

    .line 571
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .registers 2

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/upload/h;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILcom/tencent/beacon/upload/f;)Z
    .registers 4

    .prologue
    .line 98
    monitor-enter p0

    if-nez p2, :cond_6

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_4
    monitor-exit p0

    return v0

    .line 101
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 102
    const/4 v0, 0x1

    goto :goto_4

    .line 98
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/beacon/upload/UploadHandleListener;)Z
    .registers 3

    .prologue
    .line 107
    monitor-enter p0

    if-nez p1, :cond_6

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_4
    monitor-exit p0

    return v0

    .line 110
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 111
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    .line 112
    :cond_13
    const/4 v0, 0x1

    goto :goto_4

    .line 107
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .registers 2

    .prologue
    .line 564
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/upload/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/e/b;->a(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v0

    if-eqz v0, :cond_c

    .line 565
    const/4 v0, 0x1

    .line 567
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/tencent/beacon/upload/h;->h:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_f

    goto :goto_a

    .line 564
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
