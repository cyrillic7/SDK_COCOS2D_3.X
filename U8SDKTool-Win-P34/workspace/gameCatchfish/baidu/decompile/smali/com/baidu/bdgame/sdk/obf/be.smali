.class public abstract Lcom/baidu/bdgame/sdk/obf/be;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 19
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->c:J

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->e:I

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->a:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 33
    if-nez v0, :cond_9

    .line 40
    :goto_8
    return-void

    .line 34
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/be;->d:Z

    .line 35
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/be;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 36
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 37
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/be;->e:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 38
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/be;->c:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/be;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/be;->a(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 43
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/be;->e:I

    .line 44
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/be;->c:J

    .line 75
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->d:Z

    .line 63
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/be;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_f

    .line 67
    :goto_e
    return-void

    .line 66
    :cond_f
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/be;->b(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->d:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/be;, "Lcom/baidu/bdgame/sdk/obf/be<TT;>;"
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/be;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 49
    if-nez v0, :cond_9

    .line 56
    :cond_8
    :goto_8
    return-void

    .line 50
    :cond_9
    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/be;->d:Z

    if-eqz v1, :cond_8

    .line 51
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/be;->a(Ljava/lang/Object;I)V

    .line 52
    iget v0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 53
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/be;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 55
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/be;->c:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/be;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method
