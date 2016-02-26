.class public final Lcom/tencent/beacon/event/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/beacon/a/b/b;
.implements Lcom/tencent/beacon/a/b/f;
.implements Lcom/tencent/beacon/a/b/g;


# static fields
.field public static b:Z

.field private static f:Lcom/tencent/beacon/event/p;

.field private static k:I


# instance fields
.field public a:Lcom/tencent/beacon/event/g;

.field public final c:Landroid/content/Context;

.field public d:Lcom/tencent/beacon/event/a;

.field public e:Lcom/tencent/beacon/d/a;

.field private g:Lcom/tencent/beacon/event/j;

.field private h:Lcom/tencent/beacon/event/j;

.field private i:Z

.field private j:Z

.field private l:Lcom/tencent/beacon/upload/g;

.field private m:Z

.field private n:I

.field private o:Lcom/tencent/beacon/upload/InitHandleListener;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/p;->f:Lcom/tencent/beacon/event/p;

    .line 52
    const/16 v0, 0x64

    sput v0, Lcom/tencent/beacon/event/p;->k:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLcom/tencent/beacon/upload/g;Lcom/tencent/beacon/upload/UploadHandleListener;Lcom/tencent/beacon/upload/InitHandleListener;)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    .line 47
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->g:Lcom/tencent/beacon/event/j;

    .line 48
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->h:Lcom/tencent/beacon/event/j;

    .line 49
    iput-boolean v4, p0, Lcom/tencent/beacon/event/p;->i:Z

    .line 50
    iput-boolean v3, p0, Lcom/tencent/beacon/event/p;->j:Z

    .line 56
    iput v3, p0, Lcom/tencent/beacon/event/p;->n:I

    .line 57
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->o:Lcom/tencent/beacon/upload/InitHandleListener;

    .line 58
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    .line 60
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->d:Lcom/tencent/beacon/event/a;

    .line 61
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->e:Lcom/tencent/beacon/d/a;

    .line 635
    if-nez p1, :cond_26

    .line 636
    const-string v0, " the context is null! init UserActionRecord failed!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iput-object v2, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    .line 679
    :goto_25
    return-void

    .line 640
    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_98

    .line 642
    iput-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    .line 646
    :goto_2e
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    if-nez v0, :cond_39

    .line 648
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/e;->a(Landroid/content/Context;)V

    .line 651
    :cond_39
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    if-nez v0, :cond_49

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    .line 655
    :cond_49
    iput-object p3, p0, Lcom/tencent/beacon/event/p;->l:Lcom/tencent/beacon/upload/g;

    .line 656
    if-eqz p3, :cond_58

    .line 657
    new-instance v0, Lcom/tencent/beacon/event/q;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/event/q;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, v3, v0}, Lcom/tencent/beacon/upload/g;->a(ILcom/tencent/beacon/upload/f;)Z

    .line 658
    invoke-interface {p3, p4}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/UploadHandleListener;)Z

    .line 660
    :cond_58
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    .line 662
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/a/b/c;->a(Lcom/tencent/beacon/a/b/b;)V

    .line 663
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/a/b/c;->a(Lcom/tencent/beacon/a/b/f;)V

    .line 664
    invoke-virtual {v0, v4, p0}, Lcom/tencent/beacon/a/b/c;->a(ILcom/tencent/beacon/a/b/g;)V

    .line 666
    invoke-virtual {v0, v3, p3}, Lcom/tencent/beacon/a/b/c;->a(ILcom/tencent/beacon/upload/g;)V

    .line 667
    invoke-virtual {v0, v4, p3}, Lcom/tencent/beacon/a/b/c;->a(ILcom/tencent/beacon/upload/g;)V

    .line 668
    new-instance v0, Lcom/tencent/beacon/event/g;

    invoke-direct {v0}, Lcom/tencent/beacon/event/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    .line 669
    new-instance v0, Lcom/tencent/beacon/event/b;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/event/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/p;->g:Lcom/tencent/beacon/event/j;

    .line 670
    new-instance v0, Lcom/tencent/beacon/event/l;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/event/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/p;->h:Lcom/tencent/beacon/event/j;

    .line 671
    iput-boolean p2, p0, Lcom/tencent/beacon/event/p;->i:Z

    .line 672
    iput-object p5, p0, Lcom/tencent/beacon/event/p;->o:Lcom/tencent/beacon/upload/InitHandleListener;

    .line 673
    new-instance v0, Lcom/tencent/beacon/d/a;

    invoke-direct {v0}, Lcom/tencent/beacon/d/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/p;->e:Lcom/tencent/beacon/d/a;

    .line 676
    new-instance v0, Lcom/tencent/beacon/a/f;

    invoke-direct {v0}, Lcom/tencent/beacon/a/f;-><init>()V

    .line 677
    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/f;->a(Landroid/content/Context;)V

    goto :goto_25

    .line 644
    :cond_98
    iput-object p1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    goto :goto_2e
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZLcom/tencent/beacon/upload/g;Lcom/tencent/beacon/upload/UploadHandleListener;Lcom/tencent/beacon/upload/InitHandleListener;)Lcom/tencent/beacon/event/p;
    .registers 12

    .prologue
    .line 83
    const-class v6, Lcom/tencent/beacon/event/p;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/event/p;->f:Lcom/tencent/beacon/event/p;

    if-nez v0, :cond_27

    .line 84
    invoke-static {p0}, Lcom/tencent/beacon/event/p;->a(Landroid/content/Context;)Z

    move-result v0

    .line 85
    sput-boolean v0, Lcom/tencent/beacon/event/p;->b:Z

    if-nez v0, :cond_27

    .line 86
    const-string v0, " ua create instance "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v0, Lcom/tencent/beacon/event/p;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/beacon/event/p;-><init>(Landroid/content/Context;ZLcom/tencent/beacon/upload/g;Lcom/tencent/beacon/upload/UploadHandleListener;Lcom/tencent/beacon/upload/InitHandleListener;)V

    .line 89
    sput-object v0, Lcom/tencent/beacon/event/p;->f:Lcom/tencent/beacon/event/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/p;->a(Z)V

    .line 92
    :cond_27
    sget-object v0, Lcom/tencent/beacon/event/p;->f:Lcom/tencent/beacon/event/p;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit v6

    return-object v0

    .line 83
    :catchall_2b
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/tencent/beacon/upload/g;
    .registers 4

    .prologue
    .line 152
    const-class v0, Lcom/tencent/beacon/event/p;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;Z)Lcom/tencent/beacon/upload/h;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 1142
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/tencent/beacon/event/p;->n:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1143
    monitor-exit p0

    return-void

    .line 1142
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/beacon/event/p;)V
    .registers 15

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->c(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;

    move-result-object v9

    if-eqz v9, :cond_7c

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "A70"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v9, Lcom/tencent/beacon/a/a/e;->m:J

    iget-wide v12, v9, Lcom/tencent/beacon/a/a/e;->i:J

    sub-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A71"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v9, Lcom/tencent/beacon/a/a/e;->l:J

    iget-wide v12, v9, Lcom/tencent/beacon/a/a/e;->h:J

    sub-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A72"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v9, Lcom/tencent/beacon/a/a/e;->d:J

    iget-wide v12, v9, Lcom/tencent/beacon/a/a/e;->f:J

    sub-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A73"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v9, Lcom/tencent/beacon/a/a/e;->e:J

    iget-wide v12, v9, Lcom/tencent/beacon/a/a/e;->g:J

    sub-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rqd_app_net_consumed"

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/tencent/beacon/a/h;->a(Landroid/content/Context;Lcom/tencent/beacon/a/a/e;)V

    :cond_7c
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 105
    .line 108
    :try_start_1
    const-string v1, "key_initsdktimes"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    const-string v2, "key_initsdkdate"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 115
    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/beacon/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    .line 118
    :cond_27
    sget v2, Lcom/tencent/beacon/event/p;->k:I

    if-gt v1, v2, :cond_3e

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_49

    .line 130
    :goto_3d
    return v0

    .line 123
    :cond_3e
    const/4 v1, 0x1

    .line 124
    :try_start_3f
    const-string v2, " sdk init max times"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_54

    move v0, v1

    .line 129
    goto :goto_3d

    .line 128
    :catch_49
    move-exception v1

    move v1, v0

    :goto_4b
    const-string v2, " set init times failed! "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_3d

    :catch_54
    move-exception v2

    goto :goto_4b
.end method

.method public static a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
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
    .line 404
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z
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
    .line 427
    const-string v0, " onUA: %s,%b,%d,%d,%b,%b"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_4e

    invoke-direct {v1}, Lcom/tencent/beacon/event/p;->o()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 431
    iget-object v0, v1, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    new-instance v1, Lcom/tencent/beacon/event/f;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tencent/beacon/event/f;-><init>(Ljava/lang/String;ZJJLjava/util/Map;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v0, 0x1

    .line 453
    :goto_4d
    return v0

    .line 435
    :cond_4e
    invoke-static {}, Lcom/tencent/beacon/event/p;->k()Z

    move-result v0

    if-nez v0, :cond_56

    .line 436
    const/4 v0, 0x0

    goto :goto_4d

    .line 439
    :cond_56
    iget-object v0, v1, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 440
    const-string v0, "onUserAction return false, because eventName:[%s] is not allowed in server strategy!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    const/4 v0, 0x0

    goto :goto_4d

    .line 444
    :cond_6b
    if-eqz p1, :cond_77

    if-eqz p1, :cond_97

    iget-object v0, v1, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 445
    :cond_77
    if-eqz p7, :cond_92

    invoke-direct {v1}, Lcom/tencent/beacon/event/p;->m()Lcom/tencent/beacon/event/j;

    move-result-object v0

    .line 446
    :goto_7d
    if-eqz v0, :cond_a4

    .line 447
    iget-object v1, v1, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/tencent/beacon/event/b;->a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;Z)Lcom/tencent/beacon/event/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/beacon/event/j;->a(Lcom/tencent/beacon/event/k;)Z

    move-result v0

    goto :goto_4d

    .line 445
    :cond_92
    invoke-direct {v1}, Lcom/tencent/beacon/event/p;->l()Lcom/tencent/beacon/event/j;

    move-result-object v0

    goto :goto_7d

    .line 450
    :cond_97
    const-string v0, "onUserAction return false, because eventName:[%s] is sampled by svr rate!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    const/4 v0, 0x0

    goto :goto_4d

    .line 453
    :cond_a4
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method protected static varargs a(Ljava/lang/String;ZJJZ[Lcom/tencent/beacon/event/d;)Z
    .registers 20

    .prologue
    .line 508
    const-string v2, " onMergeUserActionCommon start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    const-string v3, " onMergeUserActionCommon:%s %b   elapase:%d  size:%d  isRealTime:%b  , items:%d"

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x5

    if-nez p7, :cond_41

    const/4 v2, 0x0

    :goto_30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-static {}, Lcom/tencent/beacon/event/p;->k()Z

    move-result v2

    if-nez v2, :cond_45

    .line 514
    const/4 v2, 0x0

    .line 529
    :goto_40
    return v2

    .line 509
    :cond_41
    move-object/from16 v0, p7

    array-length v2, v0

    goto :goto_30

    .line 517
    :cond_45
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v2

    .line 518
    iget-object v3, v2, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v3, p0}, Lcom/tencent/beacon/event/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 519
    const-string v2, "onMergeUserAction return false, because eventName:[%s] is not allowed in server strategy!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    const/4 v2, 0x0

    goto :goto_40

    .line 523
    :cond_5e
    if-eqz p6, :cond_72

    invoke-direct {v2}, Lcom/tencent/beacon/event/p;->m()Lcom/tencent/beacon/event/j;

    move-result-object v3

    .line 525
    :goto_64
    if-eqz v3, :cond_77

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    .line 526
    invoke-interface/range {v3 .. v10}, Lcom/tencent/beacon/event/j;->a(Ljava/lang/String;ZJJ[Lcom/tencent/beacon/event/d;)Z

    move-result v2

    goto :goto_40

    .line 523
    :cond_72
    invoke-direct {v2}, Lcom/tencent/beacon/event/p;->l()Lcom/tencent/beacon/event/j;

    move-result-object v3

    goto :goto_64

    .line 529
    :cond_77
    const/4 v2, 0x0

    goto :goto_40
.end method

.method public static c(Z)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v1

    .line 539
    if-nez v1, :cond_f

    .line 540
    const-string v1, " ua module not ready!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :cond_e
    :goto_e
    return v0

    .line 544
    :cond_f
    invoke-static {}, Lcom/tencent/beacon/event/p;->k()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 547
    invoke-virtual {v1, p0}, Lcom/tencent/beacon/event/p;->d(Z)Z

    move-result v0

    goto :goto_e
.end method

.method public static declared-synchronized d()Lcom/tencent/beacon/event/p;
    .registers 2

    .prologue
    .line 139
    const-class v0, Lcom/tencent/beacon/event/p;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/beacon/event/p;->f:Lcom/tencent/beacon/event/p;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 228
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v9

    .line 229
    if-eqz v9, :cond_21

    iget-object v0, v9, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    if-eqz v0, :cond_21

    .line 230
    iget-object v0, v9, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;Z)Lcom/tencent/beacon/upload/h;

    .line 232
    const-string v0, "rqd_appexited"

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-wide v4, v2

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    .line 237
    :goto_1b
    if-eqz v9, :cond_20

    .line 238
    invoke-direct {v9, v7}, Lcom/tencent/beacon/event/p;->f(Z)V

    .line 240
    :cond_20
    return-void

    .line 234
    :cond_21
    const-string v0, "onAppExited:ua is null"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method private declared-synchronized e(Z)V
    .registers 3

    .prologue
    .line 722
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/beacon/event/p;->j:Z

    .line 723
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->o:Lcom/tencent/beacon/upload/InitHandleListener;

    if-eqz v0, :cond_19

    .line 724
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->o:Lcom/tencent/beacon/upload/InitHandleListener;

    invoke-interface {v0}, Lcom/tencent/beacon/upload/InitHandleListener;->onStrategyQuerySuccess()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 726
    :cond_19
    monitor-exit p0

    return-void

    .line 722
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(Z)V
    .registers 3

    .prologue
    .line 763
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 764
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->l()Lcom/tencent/beacon/event/j;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_10

    .line 766
    invoke-interface {v0, p1}, Lcom/tencent/beacon/event/j;->a(Z)V

    .line 768
    :cond_10
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->m()Lcom/tencent/beacon/event/j;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_19

    .line 770
    invoke-interface {v0, p1}, Lcom/tencent/beacon/event/j;->a(Z)V

    .line 771
    :cond_19
    iput-boolean p1, p0, Lcom/tencent/beacon/event/p;->m:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 773
    :cond_1b
    monitor-exit p0

    return-void

    .line 763
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static k()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v2

    .line 592
    if-nez v2, :cond_f

    .line 593
    const-string v1, "isModuleAble:not init ua"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    :goto_e
    return v0

    .line 598
    :cond_f
    invoke-virtual {v2}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v1

    .line 601
    if-eqz v1, :cond_1f

    invoke-direct {v2}, Lcom/tencent/beacon/event/p;->n()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 602
    invoke-direct {v2}, Lcom/tencent/beacon/event/p;->o()Z

    move-result v1

    .line 606
    :cond_1f
    if-eqz v1, :cond_4c

    .line 607
    iget-object v3, v2, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    .line 608
    if-eqz v3, :cond_4c

    .line 609
    iget-object v2, v2, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/a/h;->f(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;

    move-result-object v2

    .line 611
    iget-wide v4, v2, Lcom/tencent/beacon/a/a/e;->k:J

    iget-wide v6, v2, Lcom/tencent/beacon/a/a/e;->j:J

    add-long/2addr v4, v6

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->g()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4c

    .line 613
    const-string v1, " reach daily consume limited! %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_4c
    move v0, v1

    goto :goto_e
.end method

.method private declared-synchronized l()Lcom/tencent/beacon/event/j;
    .registers 2

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->g:Lcom/tencent/beacon/event/j;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()Lcom/tencent/beacon/event/j;
    .registers 2

    .prologue
    .line 696
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->h:Lcom/tencent/beacon/event/j;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()Z
    .registers 2

    .prologue
    .line 709
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/p;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()Z
    .registers 2

    .prologue
    .line 714
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/p;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized p()V
    .registers 13

    .prologue
    .line 890
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3d

    .line 891
    iget-object v2, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/beacon/event/f;

    move-object v9, v0

    .line 892
    iget-object v2, v9, Lcom/tencent/beacon/event/f;->a:Ljava/lang/String;

    iget-boolean v3, v9, Lcom/tencent/beacon/event/f;->b:Z

    iget-wide v4, v9, Lcom/tencent/beacon/event/f;->c:J

    iget-wide v6, v9, Lcom/tencent/beacon/event/f;->d:J

    iget-object v8, v9, Lcom/tencent/beacon/event/f;->e:Ljava/util/Map;

    iget-boolean v9, v9, Lcom/tencent/beacon/event/f;->f:Z

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_13

    .line 890
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    .line 894
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 895
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/beacon/event/p;->p:Ljava/util/List;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_32

    .line 897
    :cond_3d
    monitor-exit p0

    return-void
.end method

.method private q()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 911
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->m()Z

    move-result v0

    if-nez v0, :cond_10

    .line 928
    :cond_f
    :goto_f
    return-void

    .line 915
    :cond_10
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_f

    .line 917
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/e;->b(I)Lcom/tencent/beacon/a/b/e$a;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_f

    .line 919
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_f

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 921
    new-instance v0, Lcom/tencent/beacon/event/i;

    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/i;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/i;->a(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_f

    .line 925
    :catch_41
    move-exception v0

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " startHeart failed! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method private r()V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 974
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    move-result-object v0

    .line 975
    if-nez v0, :cond_14

    .line 976
    const-string v0, " DeviceInfo == null?,return"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    :cond_13
    :goto_13
    return-void

    .line 980
    :cond_14
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 982
    const-string v0, "A33"

    iget-object v4, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/beacon/a/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string v0, "A63"

    const-string v4, "Y"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 986
    const-string v0, "A21"

    const-string v4, "Y"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :goto_3a
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->f()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 991
    const-string v0, "A45"

    const-string v4, "Y"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    :goto_4d
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    .line 997
    if-eqz v0, :cond_d5

    .line 998
    const-string v0, "A66"

    const-string v4, "F"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :goto_5c
    const-string v0, "A68"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/beacon/a/a;->h(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v0, "rqd_applaunched"

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    .line 1005
    :try_start_7b
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->k()I

    move-result v0

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6a

    new-instance v3, Lcom/tencent/beacon/event/h;

    iget-object v4, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/beacon/event/h;-><init>(Landroid/content/Context;I)V

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_9f} :catch_a1

    goto/16 :goto_13

    :catch_a1
    move-exception v0

    const-string v1, " startAutoLaunchEvent failed! "

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " startAutoLaunchEvent failed! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 988
    :cond_c3
    const-string v0, "A21"

    const-string v4, "N"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 993
    :cond_cc
    const-string v0, "A45"

    const-string v4, "N"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4d

    .line 1000
    :cond_d5
    const-string v0, "A66"

    const-string v4, "B"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/p;->a(I)V

    .line 1126
    return-void
.end method

.method public final a(Lcom/tencent/beacon/a/b/e;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 1111
    if-eqz p1, :cond_24

    .line 1112
    invoke-virtual {p1, v2}, Lcom/tencent/beacon/a/b/e;->b(I)Lcom/tencent/beacon/a/b/e$a;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_24

    .line 1114
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->a()Z

    move-result v0

    .line 1115
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v1

    if-eq v1, v0, :cond_24

    .line 1116
    const-string v1, "UAR onCommonStrategyChange setUsable:%b "

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/p;->f(Z)V

    .line 1121
    :cond_24
    return-void
.end method

.method public final a(Ljava/util/Map;)V
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
    .line 1147
    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    if-eqz v0, :cond_11

    .line 1148
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/event/g;->a(Ljava/util/Map;)V

    .line 1150
    :cond_11
    return-void
.end method

.method public final a(Z)V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_25

    .line 160
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/e;->b(I)Lcom/tencent/beacon/a/b/e$a;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_25

    .line 162
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->a()Z

    move-result v1

    if-eq v1, p1, :cond_25

    .line 163
    invoke-virtual {v0, p1}, Lcom/tencent/beacon/a/b/e$a;->a(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v0

    if-eq p1, v0, :cond_25

    .line 165
    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/p;->f(Z)V

    .line 170
    :cond_25
    return-void
.end method

.method public final a(Ljava/util/List;)Z
    .registers 6
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    const-string v2, " testSpeedIp start"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/tencent/beacon/event/p;->k()Z

    move-result v2

    if-nez v2, :cond_10

    .line 346
    :goto_f
    return v0

    .line 304
    :cond_10
    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_21

    .line 305
    :cond_18
    const-string v2, " ipList == null || ipList.size() <= 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 306
    goto :goto_f

    .line 310
    :cond_21
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 312
    new-instance v2, Lcom/tencent/beacon/event/p$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/beacon/event/p$1;-><init>(Lcom/tencent/beacon/event/p;[Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    move v0, v1

    .line 346
    goto :goto_f
.end method

.method public final b()V
    .registers 10

    .prologue
    .line 831
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/p;->e(Z)V

    .line 833
    :try_start_4
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_20f

    move-result-object v0

    if-nez v0, :cond_1ab

    .line 835
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->p()V

    .line 837
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1aa

    .line 839
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->o:Lcom/tencent/beacon/upload/InitHandleListener;

    if-eqz v0, :cond_23

    .line 840
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->o:Lcom/tencent/beacon/upload/InitHandleListener;

    invoke-interface {v0}, Lcom/tencent/beacon/upload/InitHandleListener;->onInitEnd()V

    .line 845
    :cond_23
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/upload/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 847
    const-string v0, "sig_1"

    .line 848
    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/i;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 851
    const-string v1, " get lock %s do singleton!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->j()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->v()Z

    move-result v0

    if-eqz v0, :cond_99

    :cond_58
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->i()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->h()I

    move-result v3

    if-lez v2, :cond_99

    if-lez v3, :cond_99

    new-instance v0, Lcom/tencent/beacon/a/c;

    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    new-instance v4, Lcom/tencent/beacon/event/o;

    iget-object v5, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/beacon/event/o;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v5}, Lcom/tencent/beacon/event/g;->j()Z

    move-result v5

    iget-object v6, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v6}, Lcom/tencent/beacon/event/g;->v()Z

    move-result v6

    iget-object v7, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v7}, Lcom/tencent/beacon/event/g;->u()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/beacon/a/c;-><init>(Landroid/content/Context;IILjava/lang/Runnable;ZZZ)V

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v3, 0x68

    mul-int/lit16 v4, v2, 0x3e8

    int-to-long v4, v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    move v2, v3

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 856
    :cond_99
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/upload/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 858
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->q()V

    .line 860
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->r()V

    .line 862
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->b(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_f7

    iget-wide v2, v0, Lcom/tencent/beacon/a/a/e;->d:J

    iget-wide v4, v0, Lcom/tencent/beacon/a/a/e;->e:J

    add-long/2addr v2, v4

    iget-wide v0, v0, Lcom/tencent/beacon/a/a/e;->e:J

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v4, "A64"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "A65"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rqd_sdk_net_consumed"

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->clearSDKTotalConsume(Landroid/content/Context;)V

    .line 864
    :cond_f7
    :try_start_f7
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    const-string v1, "rqd_model"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/applog/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_108} :catch_232

    move-result v0

    if-eqz v0, :cond_23d

    .line 866
    :goto_10b
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->z()Z

    move-result v0

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->A()Z

    move-result v0

    if-eqz v0, :cond_14e

    :cond_11b
    new-instance v0, Lcom/tencent/beacon/event/a;

    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v2}, Lcom/tencent/beacon/event/g;->z()Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v4}, Lcom/tencent/beacon/event/g;->B()Z

    move-result v4

    iget-object v5, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v5}, Lcom/tencent/beacon/event/g;->C()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/beacon/event/a;-><init>(Landroid/content/Context;ZZZI)V

    iput-object v0, p0, Lcom/tencent/beacon/event/p;->d:Lcom/tencent/beacon/event/a;

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->A()Z

    move-result v0

    if-eqz v0, :cond_14e

    new-instance v0, Lcom/tencent/beacon/a/k;

    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/beacon/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/beacon/a/k;->a()V

    .line 868
    :cond_14e
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->s()Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 871
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_267

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_267

    const/4 v0, 0x1

    :goto_16f
    if-eqz v0, :cond_19d

    .line 873
    new-instance v0, Lcom/tencent/beacon/event/p$5;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/p$5;-><init>(Lcom/tencent/beacon/event/p;)V

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;J)V

    .line 875
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->t()I

    move-result v0

    if-lez v0, :cond_19d

    new-instance v3, Lcom/tencent/beacon/a/b;

    iget-object v1, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/tencent/beacon/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6b

    const-wide/16 v4, 0x0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 880
    :cond_19d
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->D()Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 881
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->e:Lcom/tencent/beacon/d/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/beacon/d/a;->a:Z

    .line 887
    :cond_1aa
    return-void

    .line 833
    :cond_1ab
    const/4 v1, 0x1

    :try_start_1ac
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/e;->b(I)Lcom/tencent/beacon/a/b/e$a;

    move-result-object v0

    if-eqz v0, :cond_1d8

    iget-object v1, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    if-eqz v1, :cond_1d8

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->d()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1c7

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1c7

    iget-object v2, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v2, v1}, Lcom/tencent/beacon/event/g;->a(Ljava/util/Set;)V

    :cond_1c7
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->g()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1d8

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1d8

    iget-object v2, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    invoke-virtual {v2, v1}, Lcom/tencent/beacon/event/g;->b(Ljava/util/Set;)V

    :cond_1d8
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v1

    if-eqz v1, :cond_228

    if-eqz v0, :cond_228

    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v0

    if-eqz v0, :cond_224

    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->g(Landroid/content/Context;)I

    move-result v0

    :goto_1ec
    if-lez v0, :cond_226

    const/4 v0, 0x1

    :goto_1ef
    if-eqz v0, :cond_10

    const-string v0, " asyn up module %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/p$3;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/event/p$3;-><init>(Lcom/tencent/beacon/event/p;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_1ac .. :try_end_20d} :catch_20f

    goto/16 :goto_10

    :catch_20f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, " common query end error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_224
    const/4 v0, -0x1

    goto :goto_1ec

    :cond_226
    const/4 v0, 0x0

    goto :goto_1ef

    :cond_228
    :try_start_228
    const-string v0, "event module is disable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_230
    .catch Ljava/lang/Throwable; {:try_start_228 .. :try_end_230} :catch_20f

    goto/16 :goto_10

    .line 864
    :catch_232
    move-exception v0

    const-string v0, " save modelEvent upload flag failed! "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10b

    :cond_23d
    new-instance v0, Lcom/tencent/beacon/event/p$4;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/p$4;-><init>(Lcom/tencent/beacon/event/p;)V

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;J)V

    :try_start_24c
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    const-string v1, "rqd_model"

    invoke-static {}, Lcom/tencent/beacon/applog/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_257} :catch_259

    goto/16 :goto_10b

    :catch_259
    move-exception v0

    const-string v1, " save modelEvent upload flag failed! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10b

    .line 871
    :cond_267
    const/4 v0, 0x0

    goto/16 :goto_16f
.end method

.method public final b(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 177
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/upload/h;->b()Z

    move-result v0

    if-eq p1, v0, :cond_27

    .line 179
    if-eqz p1, :cond_28

    .line 180
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/beacon/upload/h;->a(Z)V

    .line 181
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->q()V

    .line 183
    invoke-direct {p0}, Lcom/tencent/beacon/event/p;->r()V

    .line 191
    :cond_27
    :goto_27
    return-void

    .line 185
    :cond_28
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/upload/h;->a(Z)V

    .line 187
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, v4}, Lcom/tencent/beacon/a/d;->a(IZ)V

    const-string v1, "HEART_DENGTA"

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "heartbeat uploaded sucess!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27
.end method

.method public final b(Ljava/util/List;)Z
    .registers 6
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-static {}, Lcom/tencent/beacon/event/p;->k()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 398
    :goto_9
    return v0

    .line 354
    :cond_a
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1b

    .line 355
    :cond_12
    const-string v0, " dnsList == null || dnsList.size() <= 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 356
    goto :goto_9

    .line 359
    :cond_1b
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 361
    new-instance v3, Lcom/tencent/beacon/event/p$2;

    invoke-direct {v3, p0, v0}, Lcom/tencent/beacon/event/p$2;-><init>(Lcom/tencent/beacon/event/p;[Ljava/lang/String;)V

    .line 396
    const-string v0, " post the test task"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    move v0, v2

    .line 398
    goto :goto_9
.end method

.method public final c()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 753
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    const-string v1, " RecordDAO.deleteRecords() start"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_40

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    .line 754
    const-string v1, " ua first clean :%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 758
    const-string v1, " ua remove strategy :%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    return-void

    .line 753
    nop

    :array_40
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public final d(Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/applog/a;->g(Landroid/content/Context;)I

    move-result v2

    :goto_e
    if-lez v2, :cond_37

    .line 731
    :try_start_10
    iget-object v2, p0, Lcom/tencent/beacon/event/p;->l:Lcom/tencent/beacon/upload/g;

    if-eqz v2, :cond_23

    .line 732
    new-instance v2, Lcom/tencent/beacon/event/c;

    iget-object v3, p0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/beacon/event/c;-><init>(Landroid/content/Context;)V

    .line 733
    invoke-virtual {v2, p1}, Lcom/tencent/beacon/event/c;->b(Z)V

    .line 734
    iget-object v3, p0, Lcom/tencent/beacon/event/p;->l:Lcom/tencent/beacon/upload/g;

    invoke-interface {v3, v2}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_23} :catch_26

    .line 742
    :cond_23
    :goto_23
    return v0

    .line 729
    :cond_24
    const/4 v2, -0x1

    goto :goto_e

    .line 737
    :catch_26
    move-exception v2

    .line 738
    const-string v3, " up common error: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    move v0, v1

    .line 742
    goto :goto_23
.end method

.method public final f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 246
    const-string v0, " closeUseInfoEvent start"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :try_start_8
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/g;->a(Z)V

    .line 249
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/d;->a(IZ)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    .line 254
    :goto_18
    return-void

    .line 251
    :catch_19
    move-exception v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " closeUseInfoEvent function error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public final declared-synchronized g()Z
    .registers 2

    .prologue
    .line 624
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/p;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Lcom/tencent/beacon/upload/g;
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->l:Lcom/tencent/beacon/upload/g;

    return-object v0
.end method

.method public final i()Lcom/tencent/beacon/event/g;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    return-object v0
.end method

.method public final declared-synchronized j()I
    .registers 2

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/p;->n:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
