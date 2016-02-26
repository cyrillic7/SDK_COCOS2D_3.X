.class public Lcom/baidu/bdgame/sdk/obf/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/bv$a;,
        Lcom/baidu/bdgame/sdk/obf/bv$b;
    }
.end annotation


# static fields
.field private static final e:J = 0x61a8L

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bs;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private volatile f:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/bv;->g:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bv;->g:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-wide/16 v4, 0x2328

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->a:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->b:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->d:Landroid/os/Handler;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->f:J

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/bv$1;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bv;J)J
    .registers 4

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/bv;->f:J

    return-wide p1
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 133
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bv;->b()Lcom/baidu/bdgame/sdk/obf/bv;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->e()V

    .line 134
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bv;->b()Lcom/baidu/bdgame/sdk/obf/bv;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->c()V

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V
    .registers 4

    .prologue
    .line 118
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bv;->b()Lcom/baidu/bdgame/sdk/obf/bv;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/bv;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bv;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;->d()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bv;Landroid/content/Context;ILjava/util/List;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/bv;->c(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;ILjava/util/List;)Z
    .registers 4

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bv;->b(Landroid/content/Context;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/bs;)Z
    .registers 5

    .prologue
    .line 156
    .line 157
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 159
    :goto_c
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v1

    .line 161
    return v0

    .line 158
    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .line 160
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bv;Ljava/util/List;)Z
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bs;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .line 148
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 150
    :goto_c
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    monitor-exit v1

    .line 152
    return v0

    .line 149
    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .line 151
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private static b()Lcom/baidu/bdgame/sdk/obf/bv;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bv$b;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 127
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V
    .registers 5

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    if-eqz p2, :cond_c

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->c(Landroid/content/Context;ILjava/util/List;)V

    .line 144
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/bv;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;->f()V

    return-void
.end method

.method private static b(Landroid/content/Context;ILjava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bs;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v0

    .line 240
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bu;->a(Landroid/content/Context;ILjava/util/List;)Lcom/baidu/bdgame/sdk/obf/bu;

    move-result-object v1

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 243
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bu;->g()I

    move-result v0

    .line 244
    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/bv;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bv$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bv$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :goto_14
    return-void

    .line 74
    :cond_15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;->d()V

    goto :goto_14
.end method

.method private c(Landroid/content/Context;ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bs;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 248
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/bv;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_a

    .line 274
    :cond_9
    :goto_9
    return-void

    .line 252
    :cond_a
    if-eqz p3, :cond_27

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 253
    if-nez p2, :cond_40

    .line 255
    invoke-direct {p0, p3}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Ljava/util/List;)Z

    move-result v1

    .line 256
    if-nez v1, :cond_44

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/bv;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_44

    .line 270
    :cond_27
    :goto_27
    if-eqz v0, :cond_9

    .line 273
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv;->d:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/bv$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bv$a;-><init>(Lcom/baidu/bdgame/sdk/obf/bv;Landroid/content/Context;I)V

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bv;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 264
    :cond_40
    invoke-direct {p0, p3}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Ljava/util/List;)Z

    goto :goto_27

    :cond_44
    move v0, v1

    goto :goto_27
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/bv;)Ljava/util/List;
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 80
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->a:Ljava/util/concurrent/ExecutorService;

    .line 83
    :cond_e
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bv;->b()Lcom/baidu/bdgame/sdk/obf/bv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Lcom/baidu/bdgame/sdk/obf/bs;)Z

    .line 84
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bv$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bv$2;-><init>(Lcom/baidu/bdgame/sdk/obf/bv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :goto_14
    return-void

    .line 96
    :cond_15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;->f()V

    goto :goto_14
.end method

.method private f()V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv;->g()Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 103
    return-void
.end method

.method private g()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .line 166
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bv;->c:Ljava/util/List;

    .line 169
    monitor-exit v1

    .line 170
    return-object v0

    .line 169
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
