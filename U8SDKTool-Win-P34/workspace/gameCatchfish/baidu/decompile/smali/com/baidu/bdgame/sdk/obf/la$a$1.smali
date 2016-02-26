.class final Lcom/baidu/bdgame/sdk/obf/la$a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/la$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/la$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/la$a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/la$a$1;->a:Lcom/baidu/bdgame/sdk/obf/la$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    :cond_9
    :goto_9
    return-void

    .line 89
    :cond_a
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2e

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/la$a$a;

    .line 94
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/la$a$1;->a:Lcom/baidu/bdgame/sdk/obf/la$a;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/la$a$1;->a:Lcom/baidu/bdgame/sdk/obf/la$a;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/la$a;->a(Lcom/baidu/bdgame/sdk/obf/la$a;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-wide v4, v0, Lcom/baidu/bdgame/sdk/obf/la$a$a;->a:J

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/la$a$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/la$a$a;->c:Ljava/lang/String;

    invoke-static {v2, v4, v5, v3, v0}, Lcom/baidu/bdgame/sdk/obf/la$a;->a(Ljava/text/SimpleDateFormat;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/la$a;->a(Lcom/baidu/bdgame/sdk/obf/la$a;Ljava/lang/String;)V

    goto :goto_9

    .line 95
    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 96
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la$a;->b()Z

    goto :goto_9
.end method
