.class Lcom/duoku/platform/view/user/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/b;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/user/b;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/user/b;Lcom/duoku/platform/view/user/b$a;)V
    .registers 3

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/user/b$a;-><init>(Lcom/duoku/platform/view/user/b;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 324
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;Z)V

    .line 325
    packed-switch p3, :pswitch_data_38

    .line 346
    :goto_9
    :pswitch_9
    return-void

    .line 328
    :pswitch_a
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_16

    .line 330
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;)V

    goto :goto_9

    .line 335
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->b(Lcom/duoku/platform/view/user/b;)V

    goto :goto_9

    .line 341
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

    .line 342
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_9

    .line 325
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
    .registers 8

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;Z)V

    .line 353
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->c(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->d(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->e(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->f(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    check-cast p2, Lcom/duoku/platform/h/l;

    .line 360
    invoke-virtual {p2}, Lcom/duoku/platform/h/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_59

    .line 362
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/user/b;->b(Lcom/duoku/platform/view/user/b;Z)V

    .line 363
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->g(Lcom/duoku/platform/view/user/b;)I

    move-result v0

    if-nez v0, :cond_58

    .line 365
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->h(Lcom/duoku/platform/view/user/b;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->i(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    :cond_58
    :goto_58
    return-void

    .line 377
    :cond_59
    invoke-virtual {p2}, Lcom/duoku/platform/h/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_6a

    .line 379
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/user/b;->b(Lcom/duoku/platform/view/user/b;Z)V

    .line 381
    :cond_6a
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->h(Lcom/duoku/platform/view/user/b;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->i(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->g(Lcom/duoku/platform/view/user/b;)I

    move-result v0

    if-nez v0, :cond_c2

    .line 385
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->j(Lcom/duoku/platform/view/user/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 386
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    new-instance v1, Lcom/duoku/platform/a/j;

    iget-object v2, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v2}, Lcom/duoku/platform/view/user/b;->k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v3}, Lcom/duoku/platform/view/user/b;->j(Lcom/duoku/platform/view/user/b;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/duoku/platform/a/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;Lcom/duoku/platform/a/j;)V

    .line 387
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->h(Lcom/duoku/platform/view/user/b;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v1}, Lcom/duoku/platform/view/user/b;->l(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    :goto_b6
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->g(Lcom/duoku/platform/view/user/b;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;I)V

    goto :goto_58

    .line 392
    :cond_c2
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->j(Lcom/duoku/platform/view/user/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/l;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$a;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->l(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/a/j;->notifyDataSetChanged()V

    goto :goto_b6
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 406
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 412
    return-void
.end method
