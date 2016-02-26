.class public Lcom/baidu/bdgame/sdk/obf/dg;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

.field private i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

.field private j:Lcom/baidu/bdgame/sdk/obf/de;

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->k:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->m:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_paycenter_layout_channel"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->b()V

    .line 57
    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 113
    if-eqz p1, :cond_11

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->d:Landroid/view/View;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dg$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dg$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dg;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->m:Z

    return v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_layout_recommend_payment"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->a:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_layout_recommend_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->b:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_layout_paymode"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->c:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_channel_tip_layout"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->d:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_channel_select_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->e:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_channel_select_image"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->f:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_channel_adapter_layout"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->g:Landroid/widget/LinearLayout;

    .line 70
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dg;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->d()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/de;->b(Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 96
    :cond_17
    iput-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/dg;->l:Z

    .line 98
    :cond_19
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->l:Z

    if-eqz v0, :cond_34

    .line 99
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->e()V

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Z)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_33
    return-void

    .line 103
    :cond_34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->d()V

    .line 104
    invoke-direct {p0, v2}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/dg;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->e()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_fold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->m:Z

    .line 133
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->m:Z

    .line 140
    return-void
.end method

.method private f()V
    .registers 7

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 144
    new-instance v0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/baidu/bdgame/sdk/obf/dg;->k:I

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/baidu/bdgame/sdk/obf/dd;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/baidu/bdgame/sdk/obf/de;)V

    invoke-virtual {v1, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Lcom/baidu/bdgame/sdk/obf/dh;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_recommend_pay_other_mode_select"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_56
    return-void

    .line 156
    :cond_57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_pay_mode_select"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56
.end method

.method private g()V
    .registers 7

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 165
    new-instance v0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/baidu/bdgame/sdk/obf/dg;->k:I

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/bdgame/sdk/obf/dd;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/baidu/bdgame/sdk/obf/de;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Lcom/baidu/bdgame/sdk/obf/dh;)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_4b
    return-void

    .line 172
    :cond_4c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4b
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a()V

    .line 88
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a()V

    .line 91
    :cond_12
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->c()V

    .line 92
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/de;I)V
    .registers 4

    .prologue
    .line 74
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->j:Lcom/baidu/bdgame/sdk/obf/de;

    .line 75
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/dg;->k:I

    .line 76
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/de;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->l:Z

    .line 78
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->f()V

    .line 79
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->g()V

    .line 81
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->c()V

    .line 82
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 4

    .prologue
    .line 179
    if-nez p1, :cond_3

    .line 193
    :cond_2
    :goto_2
    return-void

    .line 182
    :cond_3
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    if-eqz v1, :cond_e

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->h:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Lcom/baidu/bdgame/sdk/obf/dp;)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    move-result-object v0

    .line 187
    :cond_e
    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    if-eqz v1, :cond_1a

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg;->i:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Lcom/baidu/bdgame/sdk/obf/dp;)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    move-result-object v0

    .line 190
    :cond_1a
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/bdgame/sdk/obf/df;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(I)V

    goto :goto_2
.end method
