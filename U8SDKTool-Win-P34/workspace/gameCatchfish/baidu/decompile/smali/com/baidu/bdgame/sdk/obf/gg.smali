.class public Lcom/baidu/bdgame/sdk/obf/gg;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/gh;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/RelativeLayout;

.field private n:I

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/gh;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 40
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_paycontent_credit_choose"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gg;->e(I)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gg;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->n:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gg;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gg;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gg;)Lcom/baidu/bdgame/sdk/obf/gh;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gg;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gg;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gg;)Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gg;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/gg;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(I)V

    .line 132
    const/16 v0, 0x378

    if-ne p1, v0, :cond_12

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gh;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a(Ljava/util/List;)V

    .line 135
    :cond_12
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "btn_support_bank"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->i:Landroid/widget/Button;

    .line 110
    return-void
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->b(I)V

    .line 140
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "txt_pay_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->j:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "cccl_choose"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "btn_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->l:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "txt_other_card"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->m:Landroid/widget/RelativeLayout;

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_credit_pay_money"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/gh;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gh;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a(Ljava/util/List;)V

    .line 127
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gg;->B()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "txt_layout_land_out_money_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->o:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "btn_layout_land_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->p:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "btn_content_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->q:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_big_tips"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gg;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->q:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->p:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gg$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gg$4;-><init>(Lcom/baidu/bdgame/sdk/obf/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :goto_6a
    return-void

    .line 177
    :cond_6b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "btn_content_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->q:Landroid/widget/Button;

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->q:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gg$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gg$5;-><init>(Lcom/baidu/bdgame/sdk/obf/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6a
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 45
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->n:I

    .line 46
    return-void
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    invoke-virtual {v1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gh;->b(I)V

    .line 152
    return-void
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->k:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gh;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a(I)V

    .line 146
    return-void
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
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->i:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gg$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gg$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->l:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gg$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gg$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gg$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gg$3;-><init>(Lcom/baidu/bdgame/sdk/obf/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected t()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg;->h:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->v()V

    .line 99
    return-void
.end method
