.class Lcom/tencent/tmgp/GameCatchFish$1;
.super Landroid/os/Handler;
.source "GameCatchFish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmgp/GameCatchFish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/GameCatchFish;


# direct methods
.method constructor <init>(Lcom/tencent/tmgp/GameCatchFish;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmgp/GameCatchFish$1;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/tencent/tmgp/PayResult;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/tencent/tmgp/PayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tmgp/PayResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmgp/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "9000"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$1;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    const-string v4, "\u05a7\ufffd\ufffd\ufffd\u0279\ufffd"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v3, "8000"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$1;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    const-string v4, "\u05a7\ufffd\ufffd\ufffd\ufffd\ufffd\u0237\ufffd\ufffd\ufffd\ufffd"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$1;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    const-string v4, "\u05a7\ufffd\ufffd\u02a7\ufffd\ufffd"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$1;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\ufffd\ufffd\ufffd\ufffd\ufffd\u03aa\ufffd\ufffd"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
