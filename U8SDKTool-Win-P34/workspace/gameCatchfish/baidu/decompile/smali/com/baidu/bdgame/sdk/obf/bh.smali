.class public Lcom/baidu/bdgame/sdk/obf/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/bdgame/sdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bh;->a:Ljava/util/concurrent/Callable;

    .line 22
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bh;->b:Lcom/baidu/bdgame/sdk/obf/n;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bh;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bh;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bh;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bh;->b:Lcom/baidu/bdgame/sdk/obf/n;

    if-nez v1, :cond_b

    .line 50
    :goto_a
    return-void

    .line 42
    :cond_b
    if-nez v0, :cond_1c

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bh;->b:Lcom/baidu/bdgame/sdk/obf/n;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_a

    .line 47
    :catch_17
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 45
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bh;->b:Lcom/baidu/bdgame/sdk/obf/n;

    const/4 v2, 0x0

    const-string v3, "ok"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_17

    goto :goto_a
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 26
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bh$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bh$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 34
    return-void
.end method
