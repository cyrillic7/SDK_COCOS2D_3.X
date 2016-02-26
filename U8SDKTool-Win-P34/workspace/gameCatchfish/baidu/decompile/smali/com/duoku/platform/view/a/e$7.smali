.class Lcom/duoku/platform/view/a/e$7;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/e;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    .line 511
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/e$7;)Lcom/duoku/platform/view/a/e;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 617
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 611
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 518
    if-nez p2, :cond_1fd

    .line 520
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 522
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_gifts_lv_item_landscape"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 529
    :goto_2b
    new-instance v2, Lcom/duoku/platform/view/a/e$b;

    invoke-direct {v2}, Lcom/duoku/platform/view/a/e$b;-><init>()V

    .line 530
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_iv"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->a:Landroid/widget/ImageView;

    .line 531
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_name"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->c:Landroid/widget/TextView;

    .line 532
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_leftcount"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->d:Landroid/widget/TextView;

    .line 533
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_aborttime"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->e:Landroid/widget/TextView;

    .line 534
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_content"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->f:Landroid/widget/TextView;

    .line 535
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_button_open"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->g:Landroid/widget/Button;

    .line 536
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_new_sign"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->i:Landroid/widget/FrameLayout;

    .line 537
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_content_layout"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->j:Landroid/widget/RelativeLayout;

    .line 538
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_arrows"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->b:Landroid/widget/ImageView;

    .line 539
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_gifts_item_button_install"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/duoku/platform/view/a/e$b;->h:Landroid/widget/Button;

    .line 540
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 547
    :goto_fd
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-virtual {v2}, Lcom/duoku/platform/view/a/e;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v2, v1, Lcom/duoku/platform/view/a/e$b;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v2, v1, Lcom/duoku/platform/view/a/e$b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v2, v1, Lcom/duoku/platform/view/a/e$b;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_206

    .line 553
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->f:Landroid/widget/TextView;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 554
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    const-string v3, "dk_gifts_lv_item_arrows_extend"

    invoke-static {v2, v3}, Lcom/duoku/platform/view/a/e;->b(Lcom/duoku/platform/view/a/e;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    :goto_16d
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->j:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/duoku/platform/view/a/e$7$1;

    invoke-direct {v2, p0, p1}, Lcom/duoku/platform/view/a/e$7$1;-><init>(Lcom/duoku/platform/view/a/e$7;I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v2, v1, Lcom/duoku/platform/view/a/e$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.duoku.game.helper"

    iget-object v3, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v3}, Lcom/duoku/platform/view/a/e;->d(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 584
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->g:Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    const-string v3, "dk_gifts_item_open"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/view/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 587
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->g:Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->n(Lcom/duoku/platform/view/a/e;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    :goto_1c2
    const-string v2, "0"

    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 599
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 605
    :goto_1df
    return-object p2

    .line 526
    :cond_1e0
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_gifts_lv_item_portrait"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2b

    .line 544
    :cond_1fd
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/e$b;

    move-object v1, v0

    goto/16 :goto_fd

    .line 558
    :cond_206
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->f:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 559
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    const-string v3, "dk_gifts_lv_item_arrows_normal"

    invoke-static {v2, v3}, Lcom/duoku/platform/view/a/e;->b(Lcom/duoku/platform/view/a/e;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16d

    .line 591
    :cond_21b
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->o(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 593
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 594
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$7;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->p(Lcom/duoku/platform/view/a/e;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c2

    .line 603
    :cond_23c
    iget-object v0, v1, Lcom/duoku/platform/view/a/e$b;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1df
.end method
