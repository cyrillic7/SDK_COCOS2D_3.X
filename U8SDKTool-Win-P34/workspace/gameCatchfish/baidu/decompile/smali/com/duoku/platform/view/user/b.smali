.class public Lcom/duoku/platform/view/user/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/user/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Button;

.field private j:Lcom/duoku/platform/a/j;

.field private k:Lcom/duoku/platform/view/user/a;

.field private l:Landroid/content/Context;

.field private m:I

.field private n:Landroid/widget/GridView;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/k;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Lcom/duoku/a/a/a/a/a;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;Lcom/duoku/a/a/a/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/view/user/b;->m:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->o:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/b;->p:Z

    .line 79
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/b;->q:Z

    .line 93
    iput-object p1, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    .line 94
    iput-object p2, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/duoku/platform/view/user/b;->r:Lcom/duoku/a/a/a/a/a;

    .line 96
    invoke-direct {p0}, Lcom/duoku/platform/view/user/b;->a()V

    .line 97
    iput-object p4, p0, Lcom/duoku/platform/view/user/b;->s:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/duoku/platform/view/user/b;->t:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 103
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    iget-object v1, v1, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_numberbox"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->a:Landroid/view/LayoutInflater;

    .line 114
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_layout_progress_account"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->e:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_layout_net_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->c:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_layout_box_no_history"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->d:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_layout_data_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->b:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_list_mynumberbox"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->n:Landroid/widget/GridView;

    .line 119
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->n:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 127
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_ll_numberbox"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->f:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_ll_point"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->g:Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_ll_mytools"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->h:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "bd_btn_intent01"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/b;->i:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->i:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/view/user/b$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/b$1;-><init>(Lcom/duoku/platform/view/user/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget v0, p0, Lcom/duoku/platform/view/user/b;->m:I

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/user/b;->a(I)V

    .line 205
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->n:Landroid/widget/GridView;

    new-instance v1, Lcom/duoku/platform/view/user/b$2;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/b$2;-><init>(Lcom/duoku/platform/view/user/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 239
    return-void
.end method

.method private a(I)V
    .registers 8

    .prologue
    .line 252
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duoku/platform/view/user/b;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v2}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/f/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_POINT_GETBOXITEM_URL:Ljava/lang/String;

    const/16 v3, 0x42

    new-instance v4, Lcom/duoku/platform/view/user/b$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/b$a;-><init>(Lcom/duoku/platform/view/user/b;Lcom/duoku/platform/view/user/b$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/b;)V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/duoku/platform/view/user/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/b;I)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lcom/duoku/platform/view/user/b;->m:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/b;Lcom/duoku/a/a/a/a/a;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/duoku/platform/view/user/b;->r:Lcom/duoku/a/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/b;Lcom/duoku/platform/a/j;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/duoku/platform/view/user/b;->j:Lcom/duoku/platform/a/j;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/b;Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/b;->q:Z

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_btn_history_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 262
    new-instance v1, Lcom/duoku/platform/view/user/b$3;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/b$3;-><init>(Lcom/duoku/platform/view/user/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/b;)V
    .registers 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/duoku/platform/view/user/b;->c()V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/b;I)V
    .registers 2

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/user/b;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/b;Z)V
    .registers 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/b;->p:Z

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v2, "dk_iv_data_fail_load"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 286
    iget-object v1, p0, Lcom/duoku/platform/view/user/b;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    const-string v3, "dk_tv_data_fail_load"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    new-instance v2, Lcom/duoku/platform/view/user/b$4;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/user/b$4;-><init>(Lcom/duoku/platform/view/user/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v0, Lcom/duoku/platform/view/user/b$5;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/b$5;-><init>(Lcom/duoku/platform/view/user/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/b;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/duoku/platform/view/user/b;->m:I

    return v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/b;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->n:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/user/b;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/a/j;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->j:Lcom/duoku/platform/a/j;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/view/user/a;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->k:Lcom/duoku/platform/view/user/a;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/user/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/duoku/platform/view/user/b;)Lcom/duoku/a/a/a/a/a;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->r:Lcom/duoku/a/a/a/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/duoku/platform/view/user/b;)Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/b;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/duoku/platform/view/user/b;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/b;->q:Z

    return v0
.end method

.method static synthetic r(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duoku/platform/view/user/b;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method
