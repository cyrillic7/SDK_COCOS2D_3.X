.class public Lcom/duoku/platform/view/user/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/user/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/GridView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/duoku/platform/a/f;

.field private m:Lcom/duoku/platform/view/user/a;

.field private n:Landroid/content/Context;

.field private o:Landroid/widget/TextView;

.field private p:I

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/m;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->q:Ljava/util/ArrayList;

    .line 58
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/e;->r:Z

    .line 59
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/e;->s:Z

    .line 68
    iput-object p1, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    .line 69
    iput-object p2, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/duoku/platform/view/user/e;->a()V

    .line 71
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 78
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    iget-object v1, v1, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->a:Landroid/view/LayoutInflater;

    .line 88
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_layout_progress_account"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->g:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_layout_net_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->e:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_layout_point_no_history"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->f:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_layout_data_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->d:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_point_message_list"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->b:Landroid/widget/GridView;

    .line 93
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_tv_mypoint"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->o:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_rl_point_top"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->c:Landroid/widget/RelativeLayout;

    .line 98
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_ll_point"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->h:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_ll_numberbox"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->i:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_ll_mytools"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->j:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_ll_toolsdetail"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/e;->k:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->h:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    const-string v3, "dk_tv_string_point_history"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    iget-object v1, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    invoke-direct {p0}, Lcom/duoku/platform/view/user/e;->b()V

    .line 143
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->b:Landroid/widget/GridView;

    new-instance v1, Lcom/duoku/platform/view/user/e$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/e$1;-><init>(Lcom/duoku/platform/view/user/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/e;)V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/duoku/platform/view/user/e;->c()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/e;I)V
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/duoku/platform/view/user/e;->p:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/e;Lcom/duoku/platform/a/f;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/duoku/platform/view/user/e;->l:Lcom/duoku/platform/a/f;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/e;Z)V
    .registers 2

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/e;->s:Z

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    .line 187
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duoku/platform/view/user/e;->p:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/e;->m:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v2}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/f/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_POINT_HISTORY_URL:Ljava/lang/String;

    const/16 v3, 0x41

    new-instance v4, Lcom/duoku/platform/view/user/e$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/e$a;-><init>(Lcom/duoku/platform/view/user/e;Lcom/duoku/platform/view/user/e$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 189
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/e;)V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/duoku/platform/view/user/e;->d()V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/e;Z)V
    .registers 2

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/e;->r:Z

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_btn_history_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    new-instance v1, Lcom/duoku/platform/view/user/e$2;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/e$2;-><init>(Lcom/duoku/platform/view/user/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v2, "dk_iv_data_fail_load"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 221
    iget-object v1, p0, Lcom/duoku/platform/view/user/e;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    const-string v3, "dk_tv_data_fail_load"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    new-instance v2, Lcom/duoku/platform/view/user/e$3;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/user/e$3;-><init>(Lcom/duoku/platform/view/user/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v0, Lcom/duoku/platform/view/user/e$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/e$4;-><init>(Lcom/duoku/platform/view/user/e;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/e;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/e;)I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/duoku/platform/view/user/e;->p:I

    return v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/e;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->b:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/user/e;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/user/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/user/e;)Lcom/duoku/platform/a/f;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->l:Lcom/duoku/platform/a/f;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/user/e;)Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/e;->r:Z

    return v0
.end method

.method static synthetic o(Lcom/duoku/platform/view/user/e;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/e;->s:Z

    return v0
.end method

.method static synthetic p(Lcom/duoku/platform/view/user/e;)V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/duoku/platform/view/user/e;->b()V

    return-void
.end method

.method static synthetic q(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/view/user/e;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method
