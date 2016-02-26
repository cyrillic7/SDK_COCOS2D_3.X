.class Lcom/duoku/platform/view/user/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/e;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/user/e;)V
    .registers 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/user/e;Lcom/duoku/platform/view/user/e$a;)V
    .registers 3

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/user/e$a;-><init>(Lcom/duoku/platform/view/user/e;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 264
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/e;->a(Lcom/duoku/platform/view/user/e;Z)V

    .line 265
    packed-switch p3, :pswitch_data_38

    .line 292
    :goto_9
    :pswitch_9
    return-void

    .line 268
    :pswitch_a
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_16

    .line 270
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->a(Lcom/duoku/platform/view/user/e;)V

    goto :goto_9

    .line 274
    :cond_16
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->b(Lcom/duoku/platform/view/user/e;)V

    goto :goto_9

    .line 287
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

    .line 288
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_9

    .line 265
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

    .line 297
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/e;->a(Lcom/duoku/platform/view/user/e;Z)V

    .line 299
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->c(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->d(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->e(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->f(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    check-cast p2, Lcom/duoku/platform/h/n;

    .line 304
    invoke-virtual {p2}, Lcom/duoku/platform/h/n;->a()Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v1}, Lcom/duoku/platform/view/user/e;->g(Lcom/duoku/platform/view/user/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p2}, Lcom/duoku/platform/h/n;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_66

    .line 310
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/user/e;->b(Lcom/duoku/platform/view/user/e;Z)V

    .line 311
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->h(Lcom/duoku/platform/view/user/e;)I

    move-result v0

    if-nez v0, :cond_65

    .line 313
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->i(Lcom/duoku/platform/view/user/e;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->j(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    :cond_65
    :goto_65
    return-void

    .line 335
    :cond_66
    invoke-virtual {p2}, Lcom/duoku/platform/h/n;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_77

    .line 337
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/user/e;->b(Lcom/duoku/platform/view/user/e;Z)V

    .line 339
    :cond_77
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->i(Lcom/duoku/platform/view/user/e;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->j(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->h(Lcom/duoku/platform/view/user/e;)I

    move-result v0

    if-nez v0, :cond_cf

    .line 343
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->k(Lcom/duoku/platform/view/user/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/n;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    new-instance v1, Lcom/duoku/platform/a/f;

    iget-object v2, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v2}, Lcom/duoku/platform/view/user/e;->l(Lcom/duoku/platform/view/user/e;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v3}, Lcom/duoku/platform/view/user/e;->k(Lcom/duoku/platform/view/user/e;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/duoku/platform/a/f;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/e;->a(Lcom/duoku/platform/view/user/e;Lcom/duoku/platform/a/f;)V

    .line 345
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->i(Lcom/duoku/platform/view/user/e;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v1}, Lcom/duoku/platform/view/user/e;->m(Lcom/duoku/platform/view/user/e;)Lcom/duoku/platform/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    :goto_c3
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->h(Lcom/duoku/platform/view/user/e;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/e;->a(Lcom/duoku/platform/view/user/e;I)V

    goto :goto_65

    .line 349
    :cond_cf
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->k(Lcom/duoku/platform/view/user/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/n;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 350
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$a;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->m(Lcom/duoku/platform/view/user/e;)Lcom/duoku/platform/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/a/f;->notifyDataSetChanged()V

    goto :goto_c3
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 381
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 388
    return-void
.end method
