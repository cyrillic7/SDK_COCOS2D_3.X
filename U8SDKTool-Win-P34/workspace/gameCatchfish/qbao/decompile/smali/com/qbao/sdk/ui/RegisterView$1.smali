.class Lcom/qbao/sdk/ui/RegisterView$1;
.super Landroid/os/Handler;
.source "RegisterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/sdk/ui/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ff:Lcom/qbao/sdk/ui/RegisterView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$1;->ff:Lcom/qbao/sdk/ui/RegisterView;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 60
    :cond_5
    :goto_5
    return-void

    .line 52
    :pswitch_6
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$1;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->a(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$1;->ff:Lcom/qbao/sdk/ui/RegisterView;

    new-instance v1, Lcom/qbao/sdk/e/f;

    iget-object v2, p0, Lcom/qbao/sdk/ui/RegisterView$1;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qbao/sdk/ui/RegisterView$1;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v3}, Lcom/qbao/sdk/ui/RegisterView;->a(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qbao/sdk/e/f;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-static {v0, v1}, Lcom/qbao/sdk/ui/RegisterView;->a(Lcom/qbao/sdk/ui/RegisterView;Lcom/qbao/sdk/e/f;)V

    .line 54
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$1;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->b(Lcom/qbao/sdk/ui/RegisterView;)Lcom/qbao/sdk/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/e/f;->start()Landroid/os/CountDownTimer;

    goto :goto_5

    .line 50
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
