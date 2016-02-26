.class Lcom/duoku/platform/view/a/f$5;
.super Landroid/widget/BaseAdapter;
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
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    .line 1022
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 1072
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1029
    if-nez p2, :cond_127

    .line 1031
    new-instance v2, Lcom/duoku/platform/view/a/f$f;

    invoke-direct {v2}, Lcom/duoku/platform/view/a/f$f;-><init>()V

    .line 1032
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1034
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "dk_message_lv_item_landscape"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 1040
    :goto_2e
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_message_item_title"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/f$f;->a:Landroid/widget/TextView;

    .line 1041
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_message_item_time"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/f$f;->b:Landroid/widget/TextView;

    .line 1042
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_message_item_overview"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/f$f;->c:Landroid/widget/TextView;

    .line 1043
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "dk_message_item_iv"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/view/a/f$f;->d:Landroid/widget/ImageView;

    .line 1044
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 1051
    :goto_83
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->g(Lcom/duoku/platform/view/a/f;)Z

    move-result v0

    if-eqz v0, :cond_13d

    const-string v2, "1"

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 1053
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->c()I

    move-result v0

    if-ne v4, v0, :cond_130

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_message_operation_hint"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1055
    :goto_c1
    iget-object v2, v1, Lcom/duoku/platform/view/a/f$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1063
    :goto_c6
    iget-object v2, v1, Lcom/duoku/platform/view/a/f$f;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v2, v1, Lcom/duoku/platform/view/a/f$f;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v1, v1, Lcom/duoku/platform/view/a/f$f;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    return-object p2

    .line 1038
    :cond_10a
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "dk_message_lv_item_port"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2e

    .line 1048
    :cond_127
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/f$f;

    move-object v1, v0

    goto/16 :goto_83

    .line 1054
    :cond_130
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_message_system_hint"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_c1

    .line 1059
    :cond_13d
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->c()I

    move-result v0

    if-ne v4, v0, :cond_162

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_message_operation"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1061
    :goto_15b
    iget-object v2, v1, Lcom/duoku/platform/view/a/f$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_c6

    .line 1060
    :cond_162
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$5;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_message_system"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_15b
.end method
