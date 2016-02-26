.class public Lcom/duoku/platform/view/a/c;
.super Lcom/duoku/platform/view/a/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static c:I


# instance fields
.field private d:Z

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ScrollView;

.field private o:Landroid/widget/HorizontalScrollView;

.field private p:Lcom/duoku/platform/a/h;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/b;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v0, Lcom/duoku/platform/view/a/c$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/c$1;-><init>(Lcom/duoku/platform/view/a/c;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->s:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/duoku/platform/view/a/c$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/c$2;-><init>(Lcom/duoku/platform/view/a/c;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 79
    iput-object p2, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/duoku/platform/view/a/c;->c:I

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/c;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(I)V
    .registers 1

    .prologue
    .line 50
    sput p0, Lcom/duoku/platform/view/a/c;->c:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/c;I)V
    .registers 2

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/c;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/c;Z)V
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/c;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b(I)V
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 149
    :cond_4
    :goto_4
    return-void

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/d;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/d;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->r:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/duoku/platform/a/h;

    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/c;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/a/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->p:Lcom/duoku/platform/a/h;

    .line 148
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->p:Lcom/duoku/platform/a/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method static synthetic c()I
    .registers 1

    .prologue
    .line 50
    sget v0, Lcom/duoku/platform/view/a/c;->c:I

    return v0
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 9

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 187
    :cond_6
    return-void

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    .line 161
    :goto_10
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 163
    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->b:Landroid/view/LayoutInflater;

    .line 164
    iget-object v4, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, "dk_fragment_common_item_type"

    :goto_28
    invoke-static {v4, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 165
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v1, "dk_btn_customer_type"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/ui/a/d;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_77

    .line 173
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v5, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const/high16 v6, 0x41000000

    invoke-static {v5, v6}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_77
    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 181
    sget v1, Lcom/duoku/platform/view/a/c;->c:I

    if-ne v2, v1, :cond_8b

    .line 184
    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v4, "dk_bg_other_pay_press"

    invoke-static {v1, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    :cond_8b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 164
    :cond_8f
    const-string v0, "dk_fragment_common_item_port"

    goto :goto_28
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/a/c;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/a/c;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/a/c;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/a/c;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/a/c;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/c;->d:Z

    return v0
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 206
    iput-boolean v2, p0, Lcom/duoku/platform/view/a/c;->d:Z

    .line 207
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_23

    .line 217
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->o:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 220
    :cond_23
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/duoku/platform/view/a/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_fragment_common_portrait"

    const-string v3, "dk_fragment_common_landscape"

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_list_view_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->e:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_layout_common_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->l:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_type"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->i:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_list"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->j:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_detail"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->k:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_detail_type"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->m:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_tv_question_detail_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->g:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_btn_question_detail_type"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->f:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_tv_question_detail_content"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->h:Landroid/widget/TextView;

    .line 104
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 106
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_scroll_view_question_type"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->n:Landroid/widget/ScrollView;

    .line 113
    :goto_bb
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/c;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/c;->a(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/duoku/platform/view/a/c;->d()V

    .line 122
    invoke-direct {p0, v4}, Lcom/duoku/platform/view/a/c;->b(I)V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    const-string v2, "DKCommonFragment--onCreateView"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 125
    return-object v1

    .line 110
    :cond_dd
    iget-object v0, p0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_scroll_view_question_type"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/c;->o:Landroid/widget/HorizontalScrollView;

    goto :goto_bb
.end method
