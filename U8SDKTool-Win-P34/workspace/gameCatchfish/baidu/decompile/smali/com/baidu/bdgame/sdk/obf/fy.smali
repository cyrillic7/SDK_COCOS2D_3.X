.class public Lcom/baidu/bdgame/sdk/obf/fy;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/fz;

.field private i:Landroid/widget/Button;

.field private j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/Button;

.field private m:I

.field private n:[Ljava/lang/String;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fz;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 43
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fy;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fy;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(F)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(F)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 171
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_upper_limit_tips2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :goto_f
    return v0

    .line 175
    :cond_10
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v2, p1}, Lcom/baidu/bdgame/sdk/obf/fz;->b(F)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 176
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fz;->r()Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v5, "bdp_paycenter_pay_upper_limit_tips1"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_f

    .line 184
    :cond_38
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v2, p1}, Lcom/baidu/bdgame/sdk/obf/fz;->c(F)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 185
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fz;->s()Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v5, "bdp_paycenter_pay_lower_limit_tips1"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_f

    :cond_60
    move v0, v1

    .line 193
    goto :goto_f
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fy;F)Z
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(F)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fy;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fy;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fy;)Lcom/baidu/bdgame/sdk/obf/fz;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fy;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/fy;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->n:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/fy;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->m:I

    return v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/fy;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "btn_support_bank"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->i:Landroid/widget/Button;

    .line 50
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_othermoney"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->k:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_line_feed_panel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->l:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fz;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fy$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fy$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fy;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->n:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9d

    move v1, v2

    .line 104
    :goto_58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->n:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_97

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_item_game_amount"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_pay_money_unit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fy;->n:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/fy$2;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/fy$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fy;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->addView(Landroid/view/View;)V

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_58

    .line 124
    :cond_97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 128
    :goto_9c
    return-void

    .line 126
    :cond_9d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->setVisibility(I)V

    goto :goto_9c
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 238
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fy;->B()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 239
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "txt_layout_land_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->o:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_out_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->p:Landroid/widget/LinearLayout;

    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_big_tips"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fy;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "btn_layout_land_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_5e
    return-void

    .line 254
    :cond_5f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->q:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_big_tips"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fy;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 165
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->m:I

    .line 166
    return-void
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 216
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fy;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/fz;->a(ILjava/lang/String;)V

    .line 219
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fz;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->j:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fz;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 212
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fz;->q()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->n:[Ljava/lang/String;

    .line 201
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->i:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fy$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fy$3;-><init>(Lcom/baidu/bdgame/sdk/obf/fy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->l:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fy$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fy$4;-><init>(Lcom/baidu/bdgame/sdk/obf/fy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->h:Lcom/baidu/bdgame/sdk/obf/fz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fz;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
