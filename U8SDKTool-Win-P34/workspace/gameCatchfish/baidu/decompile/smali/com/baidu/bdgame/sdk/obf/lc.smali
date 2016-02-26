.class public Lcom/baidu/bdgame/sdk/obf/lc;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/baidu/bdgame/sdk/obf/ay;

.field private f:Lcom/baidu/bdgame/sdk/obf/ax;

.field private g:Lcom/baidu/bdgame/sdk/obf/az;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/lc;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->n()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/lc;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->g()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/lc;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->h:Z

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_title_baidu_long"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lc;->e:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->h:Z

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_title_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lc;->f:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->h:Z

    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_title_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lc;->g:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/az;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_login_baidu"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-string v0, "img_back"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->a:Landroid/widget/ImageView;

    .line 45
    const-string v0, "txt_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->b:Landroid/widget/TextView;

    .line 46
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->c:Landroid/widget/ImageView;

    .line 47
    const-string v0, "lin_view"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    .line 48
    return-object v1
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->e:Lcom/baidu/bdgame/sdk/obf/ay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(I)V

    .line 109
    :goto_12
    return-void

    .line 107
    :cond_13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->e:Lcom/baidu/bdgame/sdk/obf/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(I)V

    goto :goto_12
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ay;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;-><init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->e:Lcom/baidu/bdgame/sdk/obf/ay;

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->e:Lcom/baidu/bdgame/sdk/obf/ay;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lc$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/lc$1;-><init>(Lcom/baidu/bdgame/sdk/obf/lc;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay$a;)V

    .line 73
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {v0, p0, v2}, Lcom/baidu/bdgame/sdk/obf/ax;-><init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->f:Lcom/baidu/bdgame/sdk/obf/ax;

    .line 74
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/az;

    invoke-direct {v0, p0, v2}, Lcom/baidu/bdgame/sdk/obf/az;-><init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->g:Lcom/baidu/bdgame/sdk/obf/az;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lc;->e:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lc$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/lc$2;-><init>(Lcom/baidu/bdgame/sdk/obf/lc;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lc$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/lc$3;-><init>(Lcom/baidu/bdgame/sdk/obf/lc;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 53
    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->a()V

    .line 56
    :cond_5
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/lc;->h:Z

    if-eqz v0, :cond_9

    .line 96
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lc;->f()V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
