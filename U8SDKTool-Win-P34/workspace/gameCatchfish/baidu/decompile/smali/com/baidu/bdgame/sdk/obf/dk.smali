.class public Lcom/baidu/bdgame/sdk/obf/dk;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/dk$a;
    }
.end annotation


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/dl;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/dl;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 31
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_paymode_paypwd_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dk;->f(I)V

    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_paycontent_set_verify_baidubean_pwd"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dk;->e(I)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dk;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dk;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dk;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->n:Landroid/widget/Button;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 175
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_input_pwd_null_error"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    :goto_e
    return v0

    .line 179
    :cond_f
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v1, p1}, Lcom/baidu/bdgame/sdk/obf/dl;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 180
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_input_pwd_len_error"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e

    .line 185
    :cond_1f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/dk;)Lcom/baidu/bdgame/sdk/obf/dl;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->o:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_skip_verify_pwd_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->i:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_divider"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->j:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_current_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/dl;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_account_name"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 50
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_account_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->k:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_pwd_input"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_cb_show_pwd"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->m:Landroid/widget/CheckBox;

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_next"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->n:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_skp"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->o:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_po_skip_verify_pwd_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->p:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_skip_verify_pwd"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dk$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dk$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dk;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dk;->B()Z

    move-result v0

    if-nez v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_c
    return-void
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    if-nez v0, :cond_8

    .line 220
    :goto_7
    return-void

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dk;->m:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/dl;->a(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 205
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    if-nez v0, :cond_8

    .line 211
    :goto_7
    return-void

    .line 209
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dl;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->m:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->h:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dl;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method protected o()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tips_title_set_pwd"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dk;->d(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_set_pwd_account_info"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_set_pwd"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->m:Landroid/widget/CheckBox;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dk$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dk$2;-><init>(Lcom/baidu/bdgame/sdk/obf/dk;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/dk$a;-><init>(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/dk$1;)V

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk;->o:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->m:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method
