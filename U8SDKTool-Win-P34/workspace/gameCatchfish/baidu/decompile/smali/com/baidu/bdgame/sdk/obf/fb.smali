.class public Lcom/baidu/bdgame/sdk/obf/fb;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/fc;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

.field private l:[Ljava/lang/String;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fc;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 30
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fb;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fb;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fb;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fb;)Lcom/baidu/bdgame/sdk/obf/fc;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_paymode_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->i:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_mo9_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->j:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_line_feed_panel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_othermoney"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_out_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fc;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 61
    :goto_59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->l:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_98

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_item_game_amount"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_pay_money_unit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fb;->l:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/fb$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/fb$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fb;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fb;->k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->addView(Landroid/view/View;)V

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_59

    .line 76
    :cond_98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 77
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fb;->B()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_paymode_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->m:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_29
    return-void

    .line 137
    :cond_2a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->m:Landroid/widget/TextView;

    goto :goto_29
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fb;->k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fc;->b(I)V

    .line 113
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->k:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fc;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 107
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->p()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->l:[Ljava/lang/String;

    .line 101
    return-void
.end method

.method protected o()V
    .registers 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->j:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fb$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fb$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_big_tips"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fb;->h:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/fc;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fb;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
