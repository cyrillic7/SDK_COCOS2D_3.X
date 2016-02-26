.class Lcom/duoku/platform/view/user/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/d;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/user/d;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/user/d;Lcom/duoku/platform/view/user/d$a;)V
    .registers 3

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/user/d$a;-><init>(Lcom/duoku/platform/view/user/d;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 357
    packed-switch p3, :pswitch_data_32

    .line 374
    :goto_3
    :pswitch_3
    return-void

    .line 360
    :pswitch_4
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_10

    .line 362
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->b(Lcom/duoku/platform/view/user/d;)V

    goto :goto_3

    .line 366
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->c(Lcom/duoku/platform/view/user/d;)V

    goto :goto_3

    .line 370
    :pswitch_16
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 371
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_3

    .line 357
    nop

    :pswitch_data_32
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_16
    .end packed-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 381
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->d(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->e(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->f(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->g(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    check-cast p2, Lcom/duoku/platform/h/u;

    .line 386
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->h(Lcom/duoku/platform/view/user/d;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u91cf\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->i(Lcom/duoku/platform/view/user/d;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u91cf\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->j(Lcom/duoku/platform/view/user/d;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u91cf\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 392
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->k(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    :cond_a4
    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 396
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->l(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 398
    :cond_b9
    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 400
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->m(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    :cond_ce
    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-virtual {p2}, Lcom/duoku/platform/h/u;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 404
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->k(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->l(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->m(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$a;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->n(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    :cond_116
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 425
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 432
    return-void
.end method
