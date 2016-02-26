.class public Lcom/duoku/platform/a/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/g$a;
    }
.end annotation


# instance fields
.field a:Lcom/duoku/a/a/a/a/a;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/q;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/duoku/platform/view/user/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/duoku/a/a/a/a/a;Ljava/lang/String;Lcom/duoku/platform/view/user/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/q;",
            ">;",
            "Lcom/duoku/a/a/a/a/a;",
            "Ljava/lang/String;",
            "Lcom/duoku/platform/view/user/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/duoku/platform/a/g;->c:Landroid/view/LayoutInflater;

    .line 36
    iput-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    .line 44
    iput-object p4, p0, Lcom/duoku/platform/a/g;->e:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    .line 46
    iput-object p3, p0, Lcom/duoku/platform/a/g;->a:Lcom/duoku/a/a/a/a/a;

    .line 47
    iput-object p5, p0, Lcom/duoku/platform/a/g;->f:Lcom/duoku/platform/view/user/a;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/g;->c:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/a/g;)Lcom/duoku/platform/view/user/a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/duoku/platform/a/g;->f:Lcom/duoku/platform/view/user/a;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/a/g;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/a/g;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 76
    if-nez p2, :cond_eb

    .line 78
    iget-object v0, p0, Lcom/duoku/platform/a/g;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v2, "dk_tool_lv_prizecard_port"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v1, Lcom/duoku/platform/a/g$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/a/g$a;-><init>(Lcom/duoku/platform/a/g;Lcom/duoku/platform/a/g$a;)V

    .line 80
    iget-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v2, "tv_list_prizecard_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/g$a;->a:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v2, "tv_valuetime"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/g$a;->b:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v2, "tv_use_state"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/g$a;->c:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v2, "btn_goprize"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/duoku/platform/a/g$a;->d:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v2, "iv_use_state"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duoku/platform/a/g$a;->e:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_6b
    iget-object v2, v1, Lcom/duoku/platform/a/g$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/q;

    invoke-virtual {v0}, Lcom/duoku/platform/h/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, v1, Lcom/duoku/platform/a/g$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/q;

    invoke-virtual {v0}, Lcom/duoku/platform/h/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u81f3"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/q;

    invoke-virtual {v0}, Lcom/duoku/platform/h/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/q;

    invoke-virtual {v0}, Lcom/duoku/platform/h/q;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 98
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v3, "dk_prizecard_used"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_e0
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->d:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/a/g$1;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/a/g$1;-><init>(Lcom/duoku/platform/a/g;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-object p2

    .line 90
    :cond_eb
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/g$a;

    move-object v1, v0

    goto/16 :goto_6b

    .line 103
    :cond_f4
    iget-object v0, p0, Lcom/duoku/platform/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/q;

    invoke-virtual {v0}, Lcom/duoku/platform/h/q;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 105
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e0

    .line 111
    :cond_118
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    const-string v3, "dk_prizecard_invaild"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, v1, Lcom/duoku/platform/a/g$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e0
.end method
