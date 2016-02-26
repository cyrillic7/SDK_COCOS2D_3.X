.class Lcom/duoku/platform/view/a/a$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/a;

.field private b:Lcom/duoku/platform/util/i;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/a/a;)V
    .registers 3

    .prologue
    .line 651
    iput-object p1, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    .line 650
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 652
    new-instance v0, Lcom/duoku/platform/util/i;

    invoke-direct {v0}, Lcom/duoku/platform/util/i;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a$a;->b:Lcom/duoku/platform/util/i;

    .line 653
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 709
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 703
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 659
    if-nez p2, :cond_12a

    .line 661
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 663
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_activity_lv_item_landscape"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 670
    :goto_28
    new-instance v2, Lcom/duoku/platform/view/a/a$c;

    invoke-direct {v2, v3}, Lcom/duoku/platform/view/a/a$c;-><init>(Lcom/duoku/platform/view/a/a$c;)V

    .line 671
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "bd_activity_lv_image"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/a$c;->a:Landroid/widget/ImageView;

    .line 672
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "bd_activity_lv_state"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/a$c;->b:Landroid/widget/ImageView;

    .line 673
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "bd_activity_lv_title"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/a$c;->c:Landroid/widget/TextView;

    .line 674
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "bd_activity_lv_content"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/a$c;->d:Landroid/widget/TextView;

    .line 675
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 681
    :goto_82
    iget-object v2, v1, Lcom/duoku/platform/view/a/a$c;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 682
    iget-object v0, v1, Lcom/duoku/platform/view/a/a$c;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v2}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bd_activity_lv_default"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 684
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 686
    iget-object v0, v1, Lcom/duoku/platform/view/a/a$c;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    :goto_c7
    iget-object v2, p0, Lcom/duoku/platform/view/a/a$a;->b:Lcom/duoku/platform/util/i;

    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/duoku/platform/view/a/a$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, p0, v3}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/widget/BaseAdapter;Landroid/widget/ImageView;)V

    .line 694
    iget-object v2, v1, Lcom/duoku/platform/view/a/a$c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v1, v1, Lcom/duoku/platform/view/a/a$c;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    return-object p2

    .line 667
    :cond_10d
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/a$a;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_activity_lv_item_portrait"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_28

    .line 679
    :cond_12a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/a$c;

    move-object v1, v0

    goto/16 :goto_82

    .line 690
    :cond_133
    iget-object v0, v1, Lcom/duoku/platform/view/a/a$c;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c7
.end method
