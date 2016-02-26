.class final Lcom/baidu/bdgame/sdk/obf/ed$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ed;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ed;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ed$1;->a:Lcom/baidu/bdgame/sdk/obf/ed;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/ed$1;, "Lcom/baidu/bdgame/sdk/obf/ed.1;"
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 46
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    :goto_8
    return-void

    .line 35
    :pswitch_9
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ed$1;->a:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ed;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_5

    .line 47
    :catch_13
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 39
    :pswitch_18
    :try_start_18
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ed$1;->a:Lcom/baidu/bdgame/sdk/obf/ed;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ed;->a()V

    goto :goto_5

    .line 43
    :pswitch_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ed$1;->a:Lcom/baidu/bdgame/sdk/obf/ed;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->a(ILjava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_13

    goto :goto_5

    .line 33
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_9
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method
