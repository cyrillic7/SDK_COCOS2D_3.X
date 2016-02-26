.class Lcom/duoku/platform/view/user/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/c;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/user/c;)V
    .registers 2

    .prologue
    .line 356
    iput-object p1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/view/user/c$a;)V
    .registers 3

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/user/c$a;-><init>(Lcom/duoku/platform/view/user/c;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 361
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;Z)V

    .line 362
    packed-switch p3, :pswitch_data_38

    .line 381
    :goto_9
    :pswitch_9
    return-void

    .line 365
    :pswitch_a
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_16

    .line 367
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;)V

    goto :goto_9

    .line 371
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->c(Lcom/duoku/platform/view/user/c;)V

    goto :goto_9

    .line 376
    :pswitch_1c
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 377
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_9

    .line 362
    nop

    :pswitch_data_38
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_1c
    .end packed-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x14

    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 386
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;Z)V

    .line 387
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->d(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->e(Lcom/duoku/platform/view/user/c;)I

    move-result v0

    if-ne v0, v1, :cond_bf

    .line 391
    check-cast p2, Lcom/duoku/platform/h/c;

    .line 392
    invoke-virtual {p2}, Lcom/duoku/platform/h/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_51

    .line 394
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v7}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;Z)V

    .line 395
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v0, v0, Lcom/duoku/platform/view/user/c;->a:I

    if-nez v0, :cond_50

    .line 397
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    :cond_50
    :goto_50
    return-void

    .line 409
    :cond_51
    invoke-virtual {p2}, Lcom/duoku/platform/h/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_60

    .line 411
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v7}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;Z)V

    .line 413
    :cond_60
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->h(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v0, v0, Lcom/duoku/platform/view/user/c;->a:I

    if-nez v0, :cond_b5

    .line 416
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    new-instance v2, Lcom/duoku/platform/a/a;

    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->i(Lcom/duoku/platform/view/user/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->h(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v3, v0}, Lcom/duoku/platform/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/a/a;)V

    .line 419
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v1}, Lcom/duoku/platform/view/user/c;->j(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    :goto_ac
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v1, v0, Lcom/duoku/platform/view/user/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/duoku/platform/view/user/c;->a:I

    goto :goto_50

    .line 423
    :cond_b5
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->j(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/a/a;->notifyDataSetChanged()V

    goto :goto_ac

    .line 429
    :cond_bf
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->e(Lcom/duoku/platform/view/user/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_162

    .line 431
    check-cast p2, Lcom/duoku/platform/h/e;

    .line 432
    invoke-virtual {p2}, Lcom/duoku/platform/h/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f3

    .line 434
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v7}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;Z)V

    .line 435
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v0, v0, Lcom/duoku/platform/view/user/c;->a:I

    if-nez v0, :cond_50

    .line 437
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_50

    .line 460
    :cond_f3
    invoke-virtual {p2}, Lcom/duoku/platform/h/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_102

    .line 462
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v7}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;Z)V

    .line 464
    :cond_102
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->k(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v0, v0, Lcom/duoku/platform/view/user/c;->a:I

    if-nez v0, :cond_158

    .line 467
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    new-instance v2, Lcom/duoku/platform/a/b;

    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->i(Lcom/duoku/platform/view/user/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->k(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v3, v0}, Lcom/duoku/platform/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/a/b;)V

    .line 470
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v1}, Lcom/duoku/platform/view/user/c;->l(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 478
    :goto_14e
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v1, v0, Lcom/duoku/platform/view/user/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/duoku/platform/view/user/c;->a:I

    goto/16 :goto_50

    .line 475
    :cond_158
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->l(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/a/b;->notifyDataSetChanged()V

    goto :goto_14e

    .line 481
    :cond_162
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->e(Lcom/duoku/platform/view/user/c;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    .line 483
    check-cast p2, Lcom/duoku/platform/h/r;

    .line 484
    invoke-virtual {p2}, Lcom/duoku/platform/h/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_196

    .line 486
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v7}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;Z)V

    .line 487
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v0, v0, Lcom/duoku/platform/view/user/c;->a:I

    if-nez v0, :cond_50

    .line 489
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_50

    .line 512
    :cond_196
    invoke-virtual {p2}, Lcom/duoku/platform/h/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1a5

    .line 514
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0, v7}, Lcom/duoku/platform/view/user/c;->b(Lcom/duoku/platform/view/user/c;Z)V

    .line 516
    :cond_1a5
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->m(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/r;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 517
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v0, v0, Lcom/duoku/platform/view/user/c;->a:I

    if-nez v0, :cond_218

    .line 519
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v6, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    new-instance v0, Lcom/duoku/platform/a/g;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v1}, Lcom/duoku/platform/view/user/c;->i(Lcom/duoku/platform/view/user/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v2}, Lcom/duoku/platform/view/user/c;->m(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v3}, Lcom/duoku/platform/view/user/c;->n(Lcom/duoku/platform/view/user/c;)Lcom/duoku/a/a/a/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v4}, Lcom/duoku/platform/view/user/c;->o(Lcom/duoku/platform/view/user/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v5}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/view/user/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/a/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/duoku/a/a/a/a/a;Ljava/lang/String;Lcom/duoku/platform/view/user/a;)V

    invoke-static {v6, v0}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/a/g;)V

    .line 522
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v1}, Lcom/duoku/platform/view/user/c;->p(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 530
    :goto_20e
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    iget v1, v0, Lcom/duoku/platform/view/user/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/duoku/platform/view/user/c;->a:I

    goto/16 :goto_50

    .line 527
    :cond_218
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$a;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->p(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/a/g;->notifyDataSetChanged()V

    goto :goto_20e
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 542
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 548
    return-void
.end method
