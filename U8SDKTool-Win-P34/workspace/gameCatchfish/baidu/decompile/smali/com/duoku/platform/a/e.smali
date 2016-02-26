.class public Lcom/duoku/platform/a/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/duoku/platform/a/e;->c:Ljava/util/ArrayList;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/e;->b:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method


# virtual methods
.method public a(I)Lcom/duoku/platform/ui/a/i;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoku/platform/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/i;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duoku/platform/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    .line 71
    if-nez p2, :cond_ea

    .line 72
    iget-object v0, p0, Lcom/duoku/platform/a/e;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    const-string v2, "dk_fragment_private_item_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Lcom/duoku/platform/a/e$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/a/e$a;-><init>(Lcom/duoku/platform/a/e;Lcom/duoku/platform/a/e$a;)V

    .line 74
    iget-object v0, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    const-string v2, "dk_tv_my_question_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/e$a;->a:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    const-string v2, "dk_tv_my_question_time"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/e$a;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    const-string v2, "dk_tv_question_status"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/e$a;->c:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    const-string v2, "dk_tv_my_question_reply"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/e$a;->d:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    const-string v2, "dk_layout_my_question_reply"

    .line 78
    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/duoku/platform/a/e$a;->e:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 86
    :goto_6e
    iget-object v1, p0, Lcom/duoku/platform/a/e;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/duoku/platform/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_e9

    .line 87
    iget-object v1, v0, Lcom/duoku/platform/a/e$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/ui/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, v0, Lcom/duoku/platform/a/e$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    .line 89
    const-string v4, "dk_customer_question_time"

    .line 88
    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/ui/a/i;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 88
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, v0, Lcom/duoku/platform/a/e$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/a/e;->a:Landroid/content/Context;

    .line 91
    const-string v4, "dk_customer_question_status"

    .line 90
    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/ui/a/i;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 90
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, v0, Lcom/duoku/platform/a/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/ui/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/i;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f2

    .line 95
    iget-object v0, v0, Lcom/duoku/platform/a/e$a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :cond_e9
    :goto_e9
    return-object p2

    .line 83
    :cond_ea
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/e$a;

    goto/16 :goto_6e

    .line 96
    :cond_f2
    const-string v1, ""

    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/e;->a(I)Lcom/duoku/platform/ui/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/ui/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 97
    iget-object v0, v0, Lcom/duoku/platform/a/e$a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e9

    .line 99
    :cond_108
    iget-object v0, v0, Lcom/duoku/platform/a/e$a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e9
.end method
