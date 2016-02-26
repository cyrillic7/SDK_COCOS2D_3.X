.class public Lcom/baidu/bdgame/sdk/obf/ft;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/fu;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;

.field private p:I

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fu;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 38
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ft;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->p:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ft;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ft;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v1, p1}, Lcom/baidu/bdgame/sdk/obf/fu;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 91
    :cond_f
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_yibao_cash_card_no_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_20
    return v0

    .line 98
    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_39

    .line 99
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_yibao_cash_card_notnull_phoneno_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 106
    :cond_39
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 107
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_yibao_cash_card_notnull_id_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 114
    :cond_51
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 115
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_yibao_cash_card_notnull_real_name_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 122
    :cond_69
    const/4 v0, 0x1

    goto :goto_20
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/fu;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ft;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ft;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ft;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ft;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ft;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->n:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "btn_support_bank"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->j:Landroid/widget/Button;

    .line 45
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "txt_pay_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->i:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "edt_card_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->k:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "edt_card_phone"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->l:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "edt_id_card"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->m:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "edt_realname"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->n:Landroid/widget/EditText;

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->o:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_credit_pay_money"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/fu;->q()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ft;->B()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "txt_layout_land_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->q:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "btn_layout_land_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->r:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_big_tips"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ft;->t()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->r:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ft$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ft$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :goto_54
    return-void

    .line 207
    :cond_55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "btn_content_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->s:Landroid/widget/Button;

    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->s:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ft$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ft$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_54
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 68
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->p:I

    .line 69
    return-void
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 173
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->k:Landroid/widget/EditText;

    if-nez v0, :cond_8

    .line 180
    :goto_7
    return-void

    .line 177
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 163
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 164
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ft;->w()Z

    move-result v0

    if-nez v0, :cond_a

    .line 169
    :goto_9
    return-void

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fu;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fu;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->j:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ft$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ft$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->o:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ft$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ft$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->w()Z

    move-result v0

    return v0
.end method

.method protected s()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->v()V

    .line 78
    return-void
.end method

.method protected t()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft;->h:Lcom/baidu/bdgame/sdk/obf/fu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fu;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
