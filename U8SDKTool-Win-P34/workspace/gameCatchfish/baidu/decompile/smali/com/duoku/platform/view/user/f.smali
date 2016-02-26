.class public Lcom/duoku/platform/view/user/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/user/f$a;
    }
.end annotation


# instance fields
.field a:I

.field private b:Lcom/duoku/platform/view/user/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/duoku/platform/a/d;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    .line 59
    iput-object p2, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    .line 60
    iput p3, p0, Lcom/duoku/platform/view/user/f;->a:I

    .line 61
    invoke-direct {p0}, Lcom/duoku/platform/view/user/f;->a()V

    .line 62
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 66
    iget v0, p0, Lcom/duoku/platform/view/user/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a4

    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_point_introduce"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_point_introduce"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_26
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v1, v1, Lcom/duoku/platform/view/user/a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v2, "dk_layout_progress_introduceview"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/f;->g:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v2, "dk_layout_net_error_introduceview"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/f;->f:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v2, "dk_layout_data_error_introduceview"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/f;->e:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v2, "dk_introduce_list"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/f;->d:Landroid/widget/GridView;

    .line 88
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    invoke-direct {p0}, Lcom/duoku/platform/view/user/f;->b()V

    .line 91
    return-void

    .line 73
    :cond_a4
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_cashcard_introduce"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_cashcard_introduce"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/f;)V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/duoku/platform/view/user/f;->c()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/f;Lcom/duoku/platform/a/d;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/duoku/platform/view/user/f;->h:Lcom/duoku/platform/a/d;

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 104
    iget v0, p0, Lcom/duoku/platform/view/user/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 106
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v1}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_POINT_INTRODUCE_URL:Ljava/lang/String;

    const/16 v3, 0x45

    new-instance v4, Lcom/duoku/platform/view/user/f$a;

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/f$a;-><init>(Lcom/duoku/platform/view/user/f;Lcom/duoku/platform/view/user/f$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 115
    :goto_24
    return-void

    .line 111
    :cond_25
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->b:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v1}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_CASHCARD_INTRODUCE_URL:Ljava/lang/String;

    const/16 v3, 0x4a

    new-instance v4, Lcom/duoku/platform/view/user/f$a;

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/f$a;-><init>(Lcom/duoku/platform/view/user/f;Lcom/duoku/platform/view/user/f$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto :goto_24
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/f;)V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/duoku/platform/view/user/f;->d()V

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/f;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->d:Landroid/widget/GridView;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v2, "dk_btn_history_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 181
    new-instance v1, Lcom/duoku/platform/view/user/f$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/f$1;-><init>(Lcom/duoku/platform/view/user/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/f;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 206
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v2, "dk_iv_data_fail_load"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    const-string v3, "dk_tv_data_fail_load"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    new-instance v2, Lcom/duoku/platform/view/user/f$2;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/user/f$2;-><init>(Lcom/duoku/platform/view/user/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    new-instance v0, Lcom/duoku/platform/view/user/f$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/f$3;-><init>(Lcom/duoku/platform/view/user/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 238
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/f;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/f;)Lcom/duoku/platform/a/d;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->h:Lcom/duoku/platform/a/d;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/f;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/f;)V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/duoku/platform/view/user/f;->b()V

    return-void
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/f;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/duoku/platform/view/user/f;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method
