.class public Lcom/duoku/platform/view/user/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/user/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/duoku/platform/view/user/a;

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/duoku/a/a/a/a/a;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/String;

.field private s:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;Lcom/duoku/a/a/a/a/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/duoku/platform/view/user/d$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/d$1;-><init>(Lcom/duoku/platform/view/user/d;)V

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->s:Landroid/view/View$OnTouchListener;

    .line 79
    iput-object p1, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    .line 80
    iput-object p2, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/duoku/platform/view/user/d;->p:Lcom/duoku/a/a/a/a/a;

    .line 82
    iput-object p4, p0, Lcom/duoku/platform/view/user/d;->r:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/duoku/platform/view/user/d;->a()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/d;)Lcom/duoku/platform/view/user/a;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 88
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_ll_mytools"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->e:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_tools"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    iget-object v1, v1, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_tools"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_layout_progress_account"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->d:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_layout_net_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->b:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_layout_tool_no_history"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->c:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "bd_btn_intents"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->q:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_layout_data_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->a:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "tv_cashcardnum"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->m:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "tv_chargecardnum"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->n:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "tv_prizecardnum"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->o:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_ll_numberbox"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->f:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_ll_point"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->g:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "bd_rl_cashcard"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->j:Landroid/widget/RelativeLayout;

    .line 119
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "bd_rl_chargecard"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->k:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "bd_rl_prizecard"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/d;->l:Landroid/widget/RelativeLayout;

    .line 122
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/duoku/platform/view/user/d$2;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/d$2;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/duoku/platform/view/user/d$3;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/d$3;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/duoku/platform/view/user/d$4;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/d$4;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->q:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/view/user/d$5;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/d$5;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-direct {p0}, Lcom/duoku/platform/view/user/d;->b()V

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/d;Lcom/duoku/a/a/a/a/a;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/duoku/platform/view/user/d;->p:Lcom/duoku/a/a/a/a/a;

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    .line 269
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->h:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v1}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_TOOLSLIST_URL:Ljava/lang/String;

    const/16 v3, 0x43

    new-instance v4, Lcom/duoku/platform/view/user/d$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/d$a;-><init>(Lcom/duoku/platform/view/user/d;Lcom/duoku/platform/view/user/d$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 271
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/d;)V
    .registers 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/duoku/platform/view/user/d;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_btn_history_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 279
    new-instance v1, Lcom/duoku/platform/view/user/d$6;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/d$6;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/d;)V
    .registers 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/duoku/platform/view/user/d;->d()V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 302
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v2, "dk_iv_data_fail_load"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 303
    iget-object v1, p0, Lcom/duoku/platform/view/user/d;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    const-string v3, "dk_tv_data_fail_load"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    new-instance v2, Lcom/duoku/platform/view/user/d$7;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/user/d$7;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Lcom/duoku/platform/view/user/d$8;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/d$8;-><init>(Lcom/duoku/platform/view/user/d;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/d;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/d;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/user/d;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/user/d;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/duoku/platform/view/user/d;)Lcom/duoku/a/a/a/a/a;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->p:Lcom/duoku/a/a/a/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/duoku/platform/view/user/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/duoku/platform/view/user/d;)V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/duoku/platform/view/user/d;->b()V

    return-void
.end method

.method static synthetic t(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/view/user/d;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
