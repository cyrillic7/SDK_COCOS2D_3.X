.class final Lcom/baidu/bdgame/sdk/obf/du$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/du;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/du;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/du;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/du$1;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du$1;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/du;->a(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 71
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du$1;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/du;->b(Lcom/baidu/bdgame/sdk/obf/du;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 74
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 75
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$1;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->c(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 81
    :goto_28
    return-void

    .line 77
    :catch_29
    move-exception v0

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$1;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->c(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method
