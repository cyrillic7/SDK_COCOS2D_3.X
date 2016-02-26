.class Lcom/duoku/platform/floatview/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/a$1;->a:Lcom/duoku/platform/floatview/a;

    .line 370
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 390
    :cond_8
    :goto_8
    return-void

    .line 380
    :pswitch_9
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$1;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 381
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$1;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 384
    :pswitch_1c
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$1;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 385
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$1;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 377
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1c
    .end packed-switch
.end method
