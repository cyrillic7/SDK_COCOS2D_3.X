.class public final Lcom/tencent/beacon/event/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/beacon/event/k;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/beacon/event/i;->c:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/event/i;->d:I

    .line 31
    new-instance v0, Lcom/tencent/beacon/event/i$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/i$1;-><init>(Lcom/tencent/beacon/event/i;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/i;->e:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    .line 45
    new-instance v8, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    iget-object v0, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    .line 47
    if-eqz v0, :cond_4f

    .line 48
    const-string v0, "A66"

    const-string v1, "F"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_2a
    const-string v0, "A68"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/a/a;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    const-string v2, "rqd_heartbeat"

    const/4 v3, 0x1

    move-wide v6, v4

    invoke-static/range {v1 .. v8}, Lcom/tencent/beacon/event/b;->a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/beacon/event/k;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/i;->a:Lcom/tencent/beacon/event/k;

    .line 54
    return-void

    .line 50
    :cond_4f
    const-string v0, "A66"

    const-string v1, "B"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 12

    .prologue
    const-wide/16 v4, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/beacon/event/i;->c:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/event/i;->d:I

    .line 31
    new-instance v0, Lcom/tencent/beacon/event/i$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/i$1;-><init>(Lcom/tencent/beacon/event/i;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/i;->e:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    .line 58
    new-instance v8, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 59
    if-eqz p2, :cond_49

    .line 60
    const-string v0, "A66"

    const-string v1, "F"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_24
    const-string v0, "A68"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/a/a;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    const-string v2, "rqd_heartbeat"

    const/4 v3, 0x1

    move-wide v6, v4

    invoke-static/range {v1 .. v8}, Lcom/tencent/beacon/event/b;->a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/beacon/event/k;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/i;->a:Lcom/tencent/beacon/event/k;

    .line 66
    return-void

    .line 62
    :cond_49
    const-string v0, "A66"

    const-string v1, "B"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method private declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/tencent/beacon/event/i;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()I
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/i;->d:I
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
.method protected final a()V
    .registers 9

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/e/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 85
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->h()Lcom/tencent/beacon/upload/g;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_28

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    iget-object v2, p0, Lcom/tencent/beacon/event/i;->a:Lcom/tencent/beacon/event/k;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/tencent/beacon/event/l$a;

    iget-object v3, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/tencent/beacon/event/l$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V

    .line 79
    :cond_28
    invoke-direct {p0}, Lcom/tencent/beacon/event/i;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/i;->a(I)V

    .line 81
    invoke-direct {p0}, Lcom/tencent/beacon/event/i;->b()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_8

    .line 82
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6c

    iget-object v3, p0, Lcom/tencent/beacon/event/i;->e:Ljava/lang/Runnable;

    const-wide/32 v4, 0x927c0

    iget v0, p0, Lcom/tencent/beacon/event/i;->c:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/i;->a(I)V

    goto :goto_8
.end method

.method public final a(Z)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/tencent/beacon/event/i;->b:Landroid/content/Context;

    const-string v2, "HEART_DENGTA"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 95
    const-string v1, "heartbeat has been uploaded today!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_1c
    return-void

    .line 99
    :cond_1d
    if-eqz p1, :cond_29

    .line 101
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 102
    mul-int/lit16 v0, v0, 0x3e8

    .line 104
    :cond_29
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6c

    iget-object v3, p0, Lcom/tencent/beacon/event/i;->e:Ljava/lang/Runnable;

    int-to-long v4, v0

    iget v0, p0, Lcom/tencent/beacon/event/i;->c:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    goto :goto_1c
.end method
