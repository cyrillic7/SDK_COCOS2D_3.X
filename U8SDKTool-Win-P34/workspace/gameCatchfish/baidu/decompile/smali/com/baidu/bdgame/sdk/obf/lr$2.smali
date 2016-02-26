.class final Lcom/baidu/bdgame/sdk/obf/lr$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/lr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/lr;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lr$2;->a:Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_a

    .line 337
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lr$2;->a:Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lr;->a(Lcom/baidu/bdgame/sdk/obf/lr;)V

    .line 341
    :goto_9
    return-void

    .line 339
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lr$2;->a:Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lr;->b(Lcom/baidu/bdgame/sdk/obf/lr;)V

    goto :goto_9
.end method
