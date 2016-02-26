.class public Lcom/tencent/beacon/event/UserAction;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Ljava/util/Map;
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

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->c:Ljava/lang/String;

    .line 32
    const-string v0, "10000"

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->d:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/tencent/beacon/event/UserAction;->a:Ljava/util/Map;

    .line 324
    new-instance v0, Lcom/tencent/beacon/event/UserAction$1;

    invoke-direct {v0}, Lcom/tencent/beacon/event/UserAction$1;-><init>()V

    sput-object v0, Lcom/tencent/beacon/event/UserAction;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/beacon/upload/UploadHandleListener;ZJLcom/tencent/beacon/upload/InitHandleListener;)V
    .registers 11

    .prologue
    const-wide/16 v0, 0x2710

    .line 116
    if-nez p0, :cond_d

    .line 117
    const-string v0, " the context is null! init beacon sdk failed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :goto_c
    return-void

    .line 120
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_35

    .line 122
    sput-object v2, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    .line 126
    :goto_15
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_23

    .line 127
    cmp-long v2, p3, v0

    if-lez v2, :cond_20

    move-wide p3, v0

    .line 128
    :cond_20
    invoke-static {p3, p4}, Lcom/tencent/beacon/a/b/d;->a(J)V

    .line 130
    :cond_23
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tencent/beacon/event/p;->a(Landroid/content/Context;Z)Lcom/tencent/beacon/upload/g;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, p1, p5}, Lcom/tencent/beacon/event/p;->a(Landroid/content/Context;ZLcom/tencent/beacon/upload/g;Lcom/tencent/beacon/upload/UploadHandleListener;Lcom/tencent/beacon/upload/InitHandleListener;)Lcom/tencent/beacon/event/p;

    .line 132
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/beacon/b/d;->a(Landroid/content/Context;Lcom/tencent/beacon/upload/g;)Lcom/tencent/beacon/b/d;

    goto :goto_c

    .line 124
    :cond_35
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    goto :goto_15
.end method

.method public static clearAppTotalConsume(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->e(Landroid/content/Context;)V

    .line 548
    return-void
.end method

.method public static clearSDKTotalConsume(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->d(Landroid/content/Context;)V

    .line 543
    return-void
.end method

.method public static closeUseInfoEvent()V
    .registers 1

    .prologue
    .line 491
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_9

    .line 493
    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->f()V

    .line 495
    :cond_9
    return-void
.end method

.method public static doUploadRecords()V
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/event/UserAction;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public static getAPN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 631
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 632
    const-string v0, "please initUserAction first!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    const-string v0, "unknown"

    .line 635
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static getAppTotalConsume(Landroid/content/Context;Z)J
    .registers 6

    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->c(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_15

    .line 534
    if-eqz p1, :cond_f

    iget-wide v0, v0, Lcom/tencent/beacon/a/a/e;->e:J

    .line 537
    :goto_e
    return-wide v0

    .line 534
    :cond_f
    iget-wide v2, v0, Lcom/tencent/beacon/a/a/e;->d:J

    iget-wide v0, v0, Lcom/tencent/beacon/a/a/e;->e:J

    add-long/2addr v0, v2

    goto :goto_e

    .line 537
    :cond_15
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public static getCloudParas(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/e;->d()Ljava/util/Map;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_11

    .line 350
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    :cond_11
    return-object v0
.end method

.method public static getGatewayIP()Ljava/lang/String;
    .registers 1

    .prologue
    .line 613
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_b

    .line 615
    invoke-virtual {v0}, Lcom/tencent/beacon/a/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 617
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "unknown"

    goto :goto_a
.end method

.method public static getNetWorkType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 622
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 623
    const-string v0, "please initUserAction first!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    const-string v0, "unknown"

    .line 627
    :goto_e
    return-object v0

    .line 626
    :cond_f
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    .line 627
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static getQIMEI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 583
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    if-nez v0, :cond_24

    .line 584
    :cond_a
    const-string v0, "please initUserAction first!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    const-string v0, ""

    .line 586
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    if-eqz v1, :cond_23

    .line 588
    :try_start_18
    sget-object v1, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    sget-object v1, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/g;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_2f

    move-result-object v0

    .line 595
    :cond_23
    :goto_23
    return-object v0

    :cond_24
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/j;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/j;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :catch_2f
    move-exception v1

    goto :goto_23
.end method

.method public static getQQ()Ljava/lang/String;
    .registers 1

    .prologue
    .line 229
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKTotalConsume(Landroid/content/Context;Z)J
    .registers 6

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->b(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_15

    .line 518
    if-eqz p1, :cond_f

    iget-wide v0, v0, Lcom/tencent/beacon/a/a/e;->e:J

    .line 521
    :goto_e
    return-wide v0

    .line 518
    :cond_f
    iget-wide v2, v0, Lcom/tencent/beacon/a/a/e;->d:J

    iget-wide v0, v0, Lcom/tencent/beacon/a/a/e;->e:J

    add-long/2addr v0, v2

    goto :goto_e

    .line 521
    :cond_15
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 605
    const-string v0, "1.9.4"

    return-object v0
.end method

.method public static getUserActionRuntimeStrategy()Lcom/tencent/beacon/event/g;
    .registers 1

    .prologue
    .line 570
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 574
    :goto_8
    return-object v0

    .line 571
    :catch_9
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 574
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 202
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static heartbeatEvent()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    const-string v0, " heartbeatEvent is Deprecated !"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public static initUserAction(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v6, v2

    invoke-static/range {v1 .. v6}, Lcom/tencent/beacon/event/UserAction;->a(Landroid/content/Context;Lcom/tencent/beacon/upload/UploadHandleListener;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 42
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;Z)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 52
    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-object v6, v2

    invoke-static/range {v1 .. v6}, Lcom/tencent/beacon/event/UserAction;->a(Landroid/content/Context;Lcom/tencent/beacon/upload/UploadHandleListener;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 53
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;ZJ)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 65
    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, v2

    invoke-static/range {v1 .. v6}, Lcom/tencent/beacon/event/UserAction;->a(Landroid/content/Context;Lcom/tencent/beacon/upload/UploadHandleListener;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 66
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;)V
    .registers 13

    .prologue
    .line 80
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/tencent/beacon/event/UserAction;->a(Landroid/content/Context;Lcom/tencent/beacon/upload/UploadHandleListener;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 81
    return-void
.end method

.method public static initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/UploadHandleListener;)V
    .registers 13

    .prologue
    .line 94
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/tencent/beacon/event/UserAction;->a(Landroid/content/Context;Lcom/tencent/beacon/upload/UploadHandleListener;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 95
    return-void
.end method

.method public static loginEvent(ZJLjava/util/Map;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "rqd_wgLogin"

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    return v0
.end method

.method public static onAppExited()V
    .registers 0

    .prologue
    .line 338
    invoke-static {}, Lcom/tencent/beacon/event/p;->e()V

    .line 339
    return-void
.end method

.method public static varargs onMergeUserAction(Ljava/lang/String;ZJJZ[Lcom/tencent/beacon/event/d;)Z
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 436
    if-eqz p0, :cond_f

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 437
    :cond_f
    const-string v1, "param eventName is null or \"\", please check it, return false! "

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_16
    :goto_16
    return v0

    .line 440
    :cond_17
    invoke-static {p0}, Lcom/tencent/beacon/applog/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_16

    .line 444
    invoke-static/range {p0 .. p7}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJZ[Lcom/tencent/beacon/event/d;)Z

    move-result v0

    goto :goto_16
.end method

.method public static onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 377
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v0

    return v0
.end method

.method public static onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 402
    if-eqz p0, :cond_e

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 403
    :cond_e
    const-string v0, "param eventName is null or \"\", please check it, return false! "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    const/4 v0, 0x0

    .line 410
    :goto_17
    return v0

    .line 406
    :cond_18
    invoke-static {p0}, Lcom/tencent/beacon/applog/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez v0, :cond_20

    .line 408
    const/4 v0, 0x0

    goto :goto_17

    :cond_20
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 410
    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v0

    goto :goto_17
.end method

.method public static setAPPVersion(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 179
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 180
    invoke-static {p0}, Lcom/tencent/beacon/a/a;->a(Ljava/lang/String;)V

    .line 182
    :cond_11
    return-void
.end method

.method public static setAdditionalInfo(Ljava/util/Map;)V
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
    .line 237
    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_c

    .line 238
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->a:Ljava/util/Map;

    .line 240
    :cond_c
    return-void
.end method

.method public static setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " setAppKey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    if-nez p0, :cond_1f

    .line 264
    const-string v0, " the context is null! setAppKey failed!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_1e
    :goto_1e
    return-void

    .line 267
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_54

    .line 269
    sput-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    .line 273
    :goto_27
    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_5b

    .line 275
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 276
    if-nez v0, :cond_57

    .line 277
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/e;->a(Landroid/content/Context;)V

    .line 278
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 282
    :goto_4e
    if-eqz v0, :cond_1e

    .line 283
    invoke-virtual {v0, p1}, Lcom/tencent/beacon/a/e;->e(Ljava/lang/String;)V

    goto :goto_1e

    .line 271
    :cond_54
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    goto :goto_27

    .line 280
    :cond_57
    invoke-virtual {v0, p1}, Lcom/tencent/beacon/a/e;->e(Ljava/lang/String;)V

    goto :goto_4e

    .line 286
    :cond_5b
    const-string v0, " setAppKey: appkey is null or not available!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appkey is null or not available! please check it!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAutoLaunchEventUsable(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    return-void
.end method

.method public static setChannelID(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 296
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 298
    if-nez v0, :cond_f

    .line 299
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/e;->a(Landroid/content/Context;)V

    .line 300
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 302
    :cond_f
    if-nez v0, :cond_1a

    .line 303
    const-string v0, "please set the channelID after call initUserAction!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :goto_19
    return-void

    .line 305
    :cond_1a
    invoke-static {p0}, Lcom/tencent/beacon/applog/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/e;->d(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static setInitChannelPath(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/tencent/beacon/event/UserAction;->b:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_c
    const-string v0, "please set the channel path before call initUserAction!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please set the channel path before call initUserAction!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLogAble(ZZ)V
    .registers 2

    .prologue
    .line 559
    sput-boolean p0, Lcom/tencent/beacon/e/a;->a:Z

    .line 560
    sput-boolean p1, Lcom/tencent/beacon/e/a;->b:Z

    .line 561
    return-void
.end method

.method public static setNetSpeedMonitorUsable(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    const-string v0, " SpeedMonitorModule is Deprecated !"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static setQQ(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 210
    if-eqz p0, :cond_19

    .line 212
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 213
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 214
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->c:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 222
    :cond_f
    :goto_f
    return-void

    .line 217
    :catch_10
    move-exception v0

    const-string v0, " setQQ: set qq is not available !"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 220
    :cond_19
    const-string v0, " setQQ: set qq is null !"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static setUploadMode(Z)V
    .registers 3

    .prologue
    .line 166
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/p;->b(Z)V

    .line 172
    :goto_9
    return-void

    .line 170
    :cond_a
    const-string v0, " UserActionRecord.getInstance is null, please initUserAction first!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static setUserActionUsable(Z)V
    .registers 3

    .prologue
    .line 153
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_a

    .line 155
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/p;->a(Z)V

    .line 159
    :goto_9
    return-void

    .line 157
    :cond_a
    const-string v0, " UserActionRecord.getInstance is null, please initUserAction first!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static setUserID(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " setUserID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37

    const-string v0, "10000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 191
    invoke-static {p0}, Lcom/tencent/beacon/applog/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "10000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 193
    sput-object p0, Lcom/tencent/beacon/event/UserAction;->d:Ljava/lang/String;

    .line 195
    :cond_37
    return-void
.end method

.method public static testSpeedDomain(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_b

    .line 471
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/p;->b(Ljava/util/List;)Z

    move-result v0

    .line 473
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static testSpeedIp(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_b

    .line 456
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/p;->a(Ljava/util/List;)Z

    move-result v0

    .line 458
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
