.class public final Lcom/tencent/beacon/event/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/beacon/event/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/l$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/l;->a:Z

    .line 33
    new-instance v0, Lcom/tencent/beacon/event/l$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/l$1;-><init>(Lcom/tencent/beacon/event/l;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/l;->d:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    .line 50
    return-void
.end method

.method private declared-synchronized c()Z
    .registers 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/l;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-direct {p0}, Lcom/tencent/beacon/event/l;->c()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3f

    move-result v0

    if-nez v0, :cond_16

    .line 116
    :cond_13
    const/4 v0, 0x0

    .line 122
    :goto_14
    monitor-exit p0

    return-object v0

    .line 118
    :cond_16
    :try_start_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v1, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " get realEventCnt in Mem:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_3f

    goto :goto_14

    .line 115
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .registers 10

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/l;->a:Z

    if-eq v0, p1, :cond_25

    .line 136
    if-eqz p1, :cond_27

    .line 137
    iput-boolean p1, p0, Lcom/tencent/beacon/event/l;->a:Z

    .line 139
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    .line 141
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/tencent/beacon/event/l;->d:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_47

    .line 154
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    .line 147
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/d;->a(IZ)V

    .line 148
    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 149
    iget-object v0, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->c(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Long;

    .line 151
    :cond_44
    iput-boolean p1, p0, Lcom/tencent/beacon/event/l;->a:Z
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_47

    goto :goto_25

    .line 135
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/beacon/event/k;)Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 62
    monitor-enter p0

    :try_start_3
    const-string v2, " BF eN:%s   isRT:%b  isCR:%b"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_31

    const-string v1, "null"

    :goto_d
    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    if-nez p1, :cond_36

    const-string v1, "null"

    :goto_1c
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    if-eqz v1, :cond_27

    if-nez p1, :cond_3f

    .line 67
    :cond_27
    const-string v1, "processUA return false, context is null or bean is null !"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_4e

    .line 106
    :goto_2f
    monitor-exit p0

    return v0

    .line 62
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_36
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1c

    .line 71
    :cond_3f
    invoke-direct {p0}, Lcom/tencent/beacon/event/l;->c()Z

    move-result v1

    if-nez v1, :cond_51

    .line 72
    const-string v1, "processUA return false, isEnable is false !"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4e

    goto :goto_2f

    .line 62
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_51
    :try_start_51
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->a()I

    move-result v9

    .line 80
    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    .line 82
    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    if-ge v0, v9, :cond_72

    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->j()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 86
    :cond_72
    const-string v0, " BF mN!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/l;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 90
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/tencent/beacon/event/l;->d:Ljava/lang/Runnable;

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 95
    :cond_8f
    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_b7

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " err BF 3R! num:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_b7
    const-string v0, "rqd_applaunched"

    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 102
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/l;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 105
    :cond_cc
    const-string v0, "processUA:true!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_51 .. :try_end_d4} :catchall_4e

    move v0, v8

    .line 106
    goto/16 :goto_2f
.end method

.method public final varargs declared-synchronized a(Ljava/lang/String;ZJJ[Lcom/tencent/beacon/event/d;)Z
    .registers 19

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    const-string v2, " onUAC  %s RT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const/4 v3, 0x0

    .line 280
    if-eqz p1, :cond_13

    iget-object v2, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    if-nez v2, :cond_34

    .line 281
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " err 1R "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, "context"

    :goto_28
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_121

    .line 282
    const/4 v2, 0x0

    .line 391
    :goto_2f
    monitor-exit p0

    return v2

    .line 281
    :cond_31
    :try_start_31
    const-string v2, "en"

    goto :goto_28

    .line 285
    :cond_34
    iget-object v2, p0, Lcom/tencent/beacon/event/l;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/event/k;

    .line 286
    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->f()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object v3, v2

    .line 292
    :cond_57
    if-nez v3, :cond_124

    .line 293
    const-string v2, " onUAC add new"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 297
    if-eqz p7, :cond_83

    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_83

    .line 298
    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_71
    if-ge v2, v3, :cond_83

    aget-object v4, p7, v2

    .line 299
    iget-object v5, v4, Lcom/tencent/beacon/event/d;->a:Ljava/lang/String;

    iget-wide v6, v4, Lcom/tencent/beacon/event/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 304
    :cond_83
    iget-object v3, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v10}, Lcom/tencent/beacon/event/b;->a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/beacon/event/k;

    move-result-object v2

    .line 306
    if-nez v2, :cond_92

    .line 307
    const/4 v2, 0x0

    goto :goto_2f

    .line 309
    :cond_92
    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v3

    .line 311
    const-string v4, "C1"

    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v4, "C2"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    if-eqz p2, :cond_ed

    .line 317
    const-string v4, "C4"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v4, "C5"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v4, "C6"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v4, "C7"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v4, "C8"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_e3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/event/k;->a(Z)V

    .line 338
    invoke-virtual {p0, v2}, Lcom/tencent/beacon/event/l;->a(Lcom/tencent/beacon/event/k;)Z

    move-result v2

    goto/16 :goto_2f

    .line 327
    :cond_ed
    const-string v4, "C4"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v4, "C5"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v4, "C6"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v4, "C7"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v4, "C8"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_120
    .catchall {:try_start_31 .. :try_end_120} :catchall_121

    goto :goto_e3

    .line 277
    :catchall_121
    move-exception v2

    monitor-exit p0

    throw v2

    .line 340
    :cond_124
    :try_start_124
    const-string v2, " onUAC up O"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/beacon/event/k;->c(J)V

    .line 342
    const-wide/32 v4, 0x124f80

    cmp-long v2, p3, v4

    if-ltz v2, :cond_14b

    .line 343
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/k;->b(Z)V

    .line 344
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/beacon/event/k;->d(J)V

    .line 346
    :cond_14b
    const-wide/32 v4, 0x2faf080

    cmp-long v2, p5, v4

    if-ltz v2, :cond_160

    .line 347
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/k;->b(Z)V

    .line 348
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/beacon/event/k;->d(J)V

    .line 351
    :cond_160
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v2

    .line 352
    if-nez v2, :cond_1e1

    .line 354
    const-string v2, " err ? ep==null} %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 356
    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/k;->a(Ljava/util/Map;)V

    move-object v3, v2

    .line 360
    :goto_17e
    const-string v2, "C1"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "A26"

    invoke-static {v3, v2, p3, p4}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 364
    const-string v2, "A27"

    move-wide/from16 v0, p5

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 365
    const-string v2, "C2"

    const-wide/16 v4, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 368
    if-eqz p2, :cond_1ca

    .line 370
    const-string v2, "C4"

    invoke-static {v3, v2, p3, p4}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 372
    const-string v2, "C5"

    move-wide/from16 v0, p5

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 384
    :goto_1b1
    if-eqz p7, :cond_1de

    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_1de

    .line 386
    move-object/from16 v0, p7

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1bc
    if-ge v2, v4, :cond_1de

    aget-object v5, p7, v2

    .line 387
    iget-object v6, v5, Lcom/tencent/beacon/event/d;->a:Ljava/lang/String;

    iget-wide v8, v5, Lcom/tencent/beacon/event/d;->b:J

    invoke-static {v3, v6, v8, v9}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bc

    .line 376
    :cond_1ca
    const-string v2, "C6"

    const-wide/16 v4, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 378
    const-string v2, "C7"

    invoke-static {v3, v2, p3, p4}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 380
    const-string v2, "C8"

    move-wide/from16 v0, p5

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V
    :try_end_1dd
    .catchall {:try_start_124 .. :try_end_1dd} :catchall_121

    goto :goto_1b1

    .line 391
    :cond_1de
    const/4 v2, 0x1

    goto/16 :goto_2f

    :cond_1e1
    move-object v3, v2

    goto :goto_17e
.end method

.method protected final b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-direct {p0}, Lcom/tencent/beacon/event/l;->c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 159
    const-string v0, " err su 1R"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_e
    :goto_e
    return-void

    .line 164
    :cond_f
    invoke-virtual {p0}, Lcom/tencent/beacon/event/l;->a()Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 166
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/event/p;->h()Lcom/tencent/beacon/upload/g;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/e/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-nez v1, :cond_4b

    .line 169
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dsu real events 2 db"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/beacon/applog/a;->c(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Long;

    goto :goto_e

    .line 172
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " dsu real events 2 up "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    new-instance v2, Lcom/tencent/beacon/event/l$a;

    iget-object v3, p0, Lcom/tencent/beacon/event/l;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/tencent/beacon/event/l$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V

    goto :goto_e
.end method
