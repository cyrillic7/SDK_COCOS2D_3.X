.class public abstract Lcom/baidu/bdgame/sdk/obf/ed;
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


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x4


# instance fields
.field private final a:I

.field private final f:I

.field private final g:I

.field private h:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ed;->a:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ed;->f:I

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ed;->g:I

    .line 27
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ed$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ed$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ed;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ed;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method protected abstract a(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 82
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ed;->a()V

    .line 89
    :goto_d
    return-void

    .line 84
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 85
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 86
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ed;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public b(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ed;->a(ILjava/lang/Object;)V

    .line 101
    :goto_d
    return-void

    .line 95
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 96
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 97
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 98
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ed;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 70
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ed;->a(Ljava/lang/String;)V

    .line 77
    :goto_d
    return-void

    .line 72
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 74
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ed;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method
