.class public Lcom/duoku/platform/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/a$a;
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
            "Lcom/duoku/platform/h/b;",
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
            "Lcom/duoku/platform/h/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/duoku/platform/a/a;->b:Landroid/view/LayoutInflater;

    .line 20
    iput-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/a;->b:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 54
    if-nez p2, :cond_120

    .line 56
    iget-object v0, p0, Lcom/duoku/platform/a/a;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_tool_lv_cashcard_port"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/duoku/platform/a/a$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/a/a$a;-><init>(Lcom/duoku/platform/a/a;Lcom/duoku/platform/a/a$a;)V

    .line 58
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_platform_type_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->a:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_date_type_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->b:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_number"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->c:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_use_iv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->d:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_platform_type_iv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->e:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_use_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->f:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_7b
    iget-object v2, v1, Lcom/duoku/platform/a/a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v1, Lcom/duoku/platform/a/a$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\u6709\u6548\u671f\uff1a"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v1, Lcom/duoku/platform/a/a$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 79
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v3, "dk_prizecard_used"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 96
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_no_platform"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_11f
    return-object p2

    .line 71
    :cond_120
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/a$a;

    move-object v1, v0

    goto/16 :goto_7b

    .line 83
    :cond_129
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 85
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_fe

    .line 88
    :cond_148
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/b;

    invoke-virtual {v0}, Lcom/duoku/platform/h/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 90
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v3, "dk_prizecard_invaild"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_fe

    .line 100
    :cond_174
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/a/a;->a:Landroid/content/Context;

    const-string v2, "dk_cashcoupon_platform"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11f
.end method
