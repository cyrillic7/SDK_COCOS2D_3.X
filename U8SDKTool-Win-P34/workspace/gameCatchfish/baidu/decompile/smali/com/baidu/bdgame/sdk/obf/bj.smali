.class public Lcom/baidu/bdgame/sdk/obf/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bk;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/bdgame/sdk/obf/bn;

.field private c:Lcom/baidu/bdgame/sdk/obf/jq;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->d:Z

    .line 25
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bj;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    .line 27
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bn;->a(ILjava/lang/String;)V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bj;)Z
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/bj;)Z
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/bj;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->f()V

    return-void
.end method

.method private declared-synchronized c()Z
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/baidu/bdgame/sdk/obf/jq;
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->c:Lcom/baidu/bdgame/sdk/obf/jq;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/bj;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->h()V

    return-void
.end method

.method private e()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    move v2, v0

    move v3, v1

    .line 88
    :cond_4
    if-eqz v3, :cond_21

    .line 89
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/bj;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jx;

    move-result-object v4

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 94
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->c()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 120
    :goto_1a
    return v0

    .line 99
    :cond_1b
    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/jx;->g()I

    move-result v5

    .line 100
    if-nez v5, :cond_23

    :cond_21
    move v0, v1

    .line 120
    goto :goto_1a

    .line 105
    :cond_23
    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/jx;->c()Z

    move-result v3

    .line 106
    if-nez v3, :cond_31

    .line 107
    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/jx;->h()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-direct {p0, v5, v1}, Lcom/baidu/bdgame/sdk/obf/bj;->a(ILjava/lang/String;)V

    goto :goto_1a

    .line 111
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 112
    const/4 v6, 0x3

    if-le v2, v6, :cond_4

    .line 113
    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/jx;->h()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-direct {p0, v5, v1}, Lcom/baidu/bdgame/sdk/obf/bj;->a(ILjava/lang/String;)V

    goto :goto_1a
.end method

.method private f()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->d()V

    .line 129
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->c()V

    .line 133
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->b()V

    .line 137
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 31
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->d:Z

    .line 33
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    if-eqz v0, :cond_d

    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->a()V

    .line 37
    :cond_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj;->b:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->a()V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_18

    .line 40
    :cond_16
    monitor-exit p0

    return-void

    .line 31
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 47
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kd;->g()Z

    move-result v0

    .line 48
    if-eqz v0, :cond_17

    .line 49
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bj$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bj$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 75
    :goto_16
    return-void

    .line 72
    :cond_17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->g()V

    .line 73
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bj;->h()V

    goto :goto_16
.end method
