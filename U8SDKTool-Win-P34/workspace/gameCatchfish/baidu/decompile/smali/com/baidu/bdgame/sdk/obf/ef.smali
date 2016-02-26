.class public Lcom/baidu/bdgame/sdk/obf/ef;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/eg;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

.field private m:[Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/eg;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 38
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ef;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ef;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ef;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(F)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(F)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 170
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_upper_limit_tips2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    :goto_f
    return v0

    .line 174
    :cond_10
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v2, p1}, Lcom/baidu/bdgame/sdk/obf/eg;->b(F)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 175
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/eg;->r()Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v5, "bdp_paycenter_pay_upper_limit_tips1"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 182
    :cond_34
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v2, p1}, Lcom/baidu/bdgame/sdk/obf/eg;->c(F)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 183
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/eg;->s()Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v5, "bdp_paycenter_pay_lower_limit_tips1"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    :cond_58
    move v0, v1

    .line 191
    goto :goto_f
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ef;F)Z
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ef;->a(F)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ef;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ef;)Lcom/baidu/bdgame/sdk/obf/eg;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ef;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ef;->s()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ef;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private s()V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->m:[Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v3}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_32
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_paymode_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->j:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/eg;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_othermoney"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_line_feed_panel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->i:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/eg;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ef$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ef$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ef;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->m:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9d

    move v1, v2

    .line 108
    :goto_58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->m:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_97

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_item_game_amount"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_pay_money_unit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ef;->m:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ef$2;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ef$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ef;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->addView(Landroid/view/View;)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_58

    .line 124
    :cond_97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 128
    :goto_9c
    return-void

    .line 126
    :cond_9d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->setVisibility(I)V

    goto :goto_9c
.end method

.method protected b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ef;->B()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 237
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :goto_12
    return-void

    .line 240
    :cond_13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 222
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ef;->B()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 223
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_paymode_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->n:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    :goto_29
    return-void

    .line 229
    :cond_2a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->o:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 196
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/eg;->a(ILjava/lang/String;)V

    .line 200
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/eg;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/eg;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 207
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->q()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->m:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method protected o()V
    .registers 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->i:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ef$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ef$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ef;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_big_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ef;->h:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/eg;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ef;->b(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
