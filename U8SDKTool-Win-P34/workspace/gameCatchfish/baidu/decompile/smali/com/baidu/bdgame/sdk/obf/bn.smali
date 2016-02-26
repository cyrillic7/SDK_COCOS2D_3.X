.class public abstract Lcom/baidu/bdgame/sdk/obf/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bk;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Landroid/os/Handler;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->b:Landroid/content/Context;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method final a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bn$3;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected abstract a(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method final b()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method

.method final c()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$2;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method protected abstract c(Landroid/content/Context;)V
.end method

.method final d()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$4;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
