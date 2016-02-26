.class public Lcom/baidu/bdgame/sdk/obf/ex;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/ey;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ey;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 34
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    .line 35
    return-void
.end method

.method private C()V
    .registers 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_current_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ey;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ex;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_color_account_name"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Landroid/widget/TextView;)V

    .line 150
    return-void
.end method

.method private D()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-nez v0, :cond_21

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ey;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ex$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ex$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ex;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    :goto_20
    return-void

    .line 182
    :cond_21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_need_pay_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->p()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->t()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->q()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 187
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_pay_after_balance"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->t()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->r()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ey;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto :goto_20

    .line 197
    :cond_88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_unenough_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v0, v2, v4, v3}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 203
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->o:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_20
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ex;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ex;->t()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ex;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ex;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ex;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ex;)Landroid/view/View;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ex;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private t()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(F)V

    .line 141
    :goto_e
    return-void

    .line 124
    :cond_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;)V

    goto :goto_e

    .line 130
    :cond_29
    :try_start_29
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ey;->b(F)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_balance_unenough"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_3d

    goto :goto_e

    .line 136
    :catch_3d
    move-exception v0

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->g(Landroid/content/Context;)V

    goto :goto_e

    .line 135
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ey;->a(F)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_3d

    goto :goto_e
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_current_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->i:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_kubi_balance"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->j:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_goods_namenumber"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tv_pay_money"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_goods_name"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ey;->o()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_money_number"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ey;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 65
    :cond_85
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->o:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_need_pay_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->k:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_pay_after_balance"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->l:Landroid/widget/TextView;

    .line 93
    :goto_38
    return-void

    .line 88
    :cond_39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->m:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    goto :goto_38
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 248
    return-void
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 240
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->c(Ljava/lang/String;)V

    .line 243
    :cond_1a
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-nez v0, :cond_16

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ey;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_16
    return-void
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 212
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->o:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ex$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ex$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ex;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ex;->C()V

    .line 106
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ex;->D()V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ex$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ex$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ex;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 118
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ex;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ex;->s()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "bdp_paycenter_pay_body_bean_fix"

    :goto_a
    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_f
    const-string v0, "bdp_paycenter_pay_body_bean_nofix"

    goto :goto_a
.end method

.method protected s()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ex;->h:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    return v0
.end method
