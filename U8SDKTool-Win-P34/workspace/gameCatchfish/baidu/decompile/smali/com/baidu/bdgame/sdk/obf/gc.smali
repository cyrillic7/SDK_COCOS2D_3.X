.class public Lcom/baidu/bdgame/sdk/obf/gc;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/gd;

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
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/gd;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 38
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gc;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->p:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gc;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v1, p1, p3, p4}, Lcom/baidu/bdgame/sdk/obf/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 94
    :cond_f
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_tip_credit_card_codeordate_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 109
    :goto_20
    return v0

    .line 101
    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_39

    .line 102
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_tip_credit_card_notnull_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20

    .line 109
    :cond_39
    const/4 v0, 0x1

    goto :goto_20
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gc;)Lcom/baidu/bdgame/sdk/obf/gd;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gc;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gc;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gc;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gc;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/gc;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->n:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "btn_support_bank"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->j:Landroid/widget/Button;

    .line 45
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "txt_pay_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->i:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "edt_credit_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->k:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "edt_credit_phone"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "edt_credit_valid"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->m:Landroid/widget/EditText;

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "edt_credit_code"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->n:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->o:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_credit_pay_money"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/gd;->q()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gc;->B()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "txt_layout_land_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->q:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "btn_layout_land_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->r:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_big_tips"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gc;->t()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->r:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gc$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gc$3;-><init>(Lcom/baidu/bdgame/sdk/obf/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :goto_54
    return-void

    .line 202
    :cond_55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "btn_content_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->s:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->s:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gc$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gc$4;-><init>(Lcom/baidu/bdgame/sdk/obf/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_54
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->p:I

    .line 71
    return-void
.end method

.method protected f()V
    .registers 6

    .prologue
    .line 166
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->k:Landroid/widget/EditText;

    if-nez v0, :cond_8

    .line 175
    :goto_7
    return-void

    .line 170
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gc;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gc;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 154
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 155
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gc;->w()Z

    move-result v0

    if-nez v0, :cond_a

    .line 162
    :goto_9
    return-void

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gd;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gd;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gd;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gd;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->j:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gc$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gc$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->o:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gc$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gc$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gd;->y()Z

    move-result v0

    return v0
.end method

.method protected s()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gd;->x()V

    .line 80
    return-void
.end method

.method protected t()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc;->h:Lcom/baidu/bdgame/sdk/obf/gd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gd;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
