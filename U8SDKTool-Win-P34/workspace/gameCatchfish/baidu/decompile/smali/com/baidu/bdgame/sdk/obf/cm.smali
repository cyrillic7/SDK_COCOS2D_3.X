.class public Lcom/baidu/bdgame/sdk/obf/cm;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/cn;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/baidu/bdgame/sdk/obf/cq;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/baidu/bdgame/sdk/obf/dg;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/baidu/bdgame/sdk/obf/cx;

.field private s:Landroid/view/ViewGroup;

.field private t:I


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 332
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->t:I

    .line 35
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 36
    return-void
.end method

.method private C()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->s()Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->h()Z

    move-result v0

    if-nez v0, :cond_14

    .line 203
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    :cond_13
    :goto_13
    return-void

    .line 206
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cm$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cm$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cm;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cq;->a(Lcom/baidu/bdgame/sdk/obf/co$b;)V

    goto :goto_13

    .line 302
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 305
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cq;->a(Lcom/baidu/bdgame/sdk/obf/cn;)V

    goto :goto_13
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/dg;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->p:Lcom/baidu/bdgame/sdk/obf/dg;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cq;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    return-object v0
.end method

.method private d(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 76
    const-string v0, "bdp_paycenter_layout_balance_pay"

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->m:Landroid/widget/LinearLayout;

    .line 78
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->s()Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cq;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cs;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method

.method private f(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 88
    const-string v0, "bdp_paycenter_layout_channel_pay"

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->o:Landroid/widget/LinearLayout;

    .line 90
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->p:Lcom/baidu/bdgame/sdk/obf/dg;

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->p:Lcom/baidu/bdgame/sdk/obf/dg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->r()Lcom/baidu/bdgame/sdk/obf/de;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/de;I)V

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->p:Lcom/baidu/bdgame/sdk/obf/dg;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method private g(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_content_activity_area"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->q:Landroid/widget/LinearLayout;

    .line 104
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cx;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->t()Lcom/baidu/bdgame/sdk/obf/cw;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cx;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cw;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->r:Lcom/baidu/bdgame/sdk/obf/cx;

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->r:Lcom/baidu/bdgame/sdk/obf/cx;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method

.method private s()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_current_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_account_name"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->x()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_baidubean_balance"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_account_balance"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 181
    return-void
.end method

.method private t()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_goods_name"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cn;->y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_money_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 196
    :cond_4d
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->s:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 127
    :cond_7
    :goto_7
    return-void

    .line 118
    :cond_8
    const/16 v0, 0x270e

    if-ne p1, v0, :cond_17

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->r:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->a()V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cq;->a(I)V

    goto :goto_7

    .line 121
    :cond_17
    const/16 v0, 0x270f

    if-ne p1, v0, :cond_26

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->r:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->a()V

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cq;->a(I)V

    goto :goto_7

    .line 124
    :cond_26
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_7

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->p:Lcom/baidu/bdgame/sdk/obf/dg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->r()Lcom/baidu/bdgame/sdk/obf/de;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/de;->e()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    goto :goto_7
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_current_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->i:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_kubi_balance"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->j:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_goods_namenumber"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->k:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_pay_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->l:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;->a(ZLandroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->b(I)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cm;->a(I)V

    .line 133
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->s:Landroid/view/ViewGroup;

    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cm;->g(Landroid/view/ViewGroup;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cm;->d(Landroid/view/ViewGroup;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cm;->f(Landroid/view/ViewGroup;)V

    .line 70
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->c()V

    .line 143
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 367
    return-void
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 335
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/cm;->t:I

    .line 336
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cm;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 355
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->h:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->R()V

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected f()V
    .registers 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    if-eqz v0, :cond_c

    .line 328
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->f()V

    .line 330
    :cond_c
    return-void
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 318
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    if-eqz v0, :cond_c

    .line 319
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->n:Lcom/baidu/bdgame/sdk/obf/cq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->e()V

    .line 322
    :cond_c
    return-void
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method

.method protected o()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cm;->s()V

    .line 163
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cm;->t()V

    .line 164
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cm;->C()V

    .line 166
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_home_land"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_home"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method
