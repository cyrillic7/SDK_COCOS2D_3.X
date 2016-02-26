.class Lcom/duoku/platform/view/a/f$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/f;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$2;->a:Lcom/duoku/platform/view/a/f;

    .line 435
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 452
    :goto_5
    return-void

    .line 442
    :pswitch_6
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$2;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;)V

    goto :goto_5

    .line 446
    :pswitch_c
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$2;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$2;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$2;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_5

    .line 439
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
