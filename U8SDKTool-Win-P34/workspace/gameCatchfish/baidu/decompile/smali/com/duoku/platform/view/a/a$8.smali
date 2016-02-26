.class Lcom/duoku/platform/view/a/a$8;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    .line 614
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 618
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 643
    :cond_8
    :goto_8
    return-void

    .line 621
    :pswitch_9
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "present"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->a(Lcom/duoku/platform/view/a/a;I)V

    .line 623
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->e(Lcom/duoku/platform/view/a/a;)I

    move-result v0

    if-lez v0, :cond_41

    .line 625
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->i(Lcom/duoku/platform/view/a/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->i(Lcom/duoku/platform/view/a/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/a;->e(Lcom/duoku/platform/view/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 627
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->j(Lcom/duoku/platform/view/a/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 629
    :cond_41
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/a;->e(Lcom/duoku/platform/view/a/a;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 631
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->a(Lcom/duoku/platform/view/a/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 633
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->j(Lcom/duoku/platform/view/a/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$8;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->i(Lcom/duoku/platform/view/a/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8

    .line 618
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
