.class Lcom/duoku/platform/view/StartView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/StartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/StartView;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/StartView;)V
    .registers 2

    .prologue
    .line 396
    iput-object p1, p0, Lcom/duoku/platform/view/StartView$a;->a:Lcom/duoku/platform/view/StartView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/StartView;Lcom/duoku/platform/view/StartView$a;)V
    .registers 3

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StartView$a;-><init>(Lcom/duoku/platform/view/StartView;)V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v1, -0x2

    .line 430
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 431
    iget-object v1, p0, Lcom/duoku/platform/view/StartView$a;->a:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v1}, Lcom/duoku/platform/view/StartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 432
    iget-object v1, p0, Lcom/duoku/platform/view/StartView$a;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->a(Lcom/duoku/platform/view/StartView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/StartView$a;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v2}, Lcom/duoku/platform/view/StartView;->b(Lcom/duoku/platform/view/StartView;)Lcom/duoku/platform/view/LoadingBar;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 405
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 422
    :goto_5
    return-void

    .line 409
    :pswitch_6
    invoke-direct {p0}, Lcom/duoku/platform/view/StartView$a;->a()V

    goto :goto_5

    .line 415
    :pswitch_a
    iget-object v0, p0, Lcom/duoku/platform/view/StartView$a;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v0}, Lcom/duoku/platform/view/StartView;->a(Lcom/duoku/platform/view/StartView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/StartView$a;->a:Lcom/duoku/platform/view/StartView;

    invoke-static {v1}, Lcom/duoku/platform/view/StartView;->b(Lcom/duoku/platform/view/StartView;)Lcom/duoku/platform/view/LoadingBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 405
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
