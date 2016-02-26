.class Lcom/baidu/bdgame/sdk/obf/bv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bv;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bv;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 177
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->b:Landroid/content/Context;

    .line 179
    iput p3, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->c:I

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bv$a;)V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv$a;->b()V

    return-void
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private b()V
    .registers 5

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv$a;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    :cond_6
    :goto_6
    return-void

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->d(Lcom/baidu/bdgame/sdk/obf/bv;)Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 217
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kd;->f()Lcom/baidu/bdgame/sdk/obf/kf;

    move-result-object v1

    .line 218
    if-nez v1, :cond_23

    .line 220
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Lcom/baidu/bdgame/sdk/obf/bv;Ljava/util/List;)Z

    goto :goto_6

    .line 224
    :cond_23
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Lcom/baidu/bdgame/sdk/obf/bv;J)J

    .line 225
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->b:Landroid/content/Context;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->c:I

    invoke-static {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 229
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bv$a;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 232
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->c:I

    .line 234
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->b:Landroid/content/Context;

    invoke-static {v2, v3, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Lcom/baidu/bdgame/sdk/obf/bv;Landroid/content/Context;ILjava/util/List;)V

    goto :goto_6
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->c(Lcom/baidu/bdgame/sdk/obf/bv;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    :goto_c
    return-void

    .line 188
    :cond_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv$a;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->c(Lcom/baidu/bdgame/sdk/obf/bv;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bv$a$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bv$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bv$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_c
.end method
