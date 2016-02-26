.class public Lcom/baidu/bdgame/sdk/obf/ff;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/fg;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/ViewGroup;

.field private s:[Ljava/lang/String;

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fg;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 202
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    .line 204
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    .line 42
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    .line 43
    return-void
.end method

.method private C()V
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method private D()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->f()Z

    move-result v0

    if-nez v0, :cond_10

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    :goto_f
    return-void

    .line 140
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f
.end method

.method private E()V
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ky;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ky;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 260
    :cond_17
    return-void
.end method

.method private F()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->d(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->s:[Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->m:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->removeAllViews()V

    move v1, v2

    .line 269
    :goto_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->s:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_5a

    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_item_game_amount"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 274
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_pay_money_unit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ff;->s:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ff$3;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ff$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ff;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ff;->m:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->addView(Landroid/view/View;)V

    .line 284
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    if-ne v1, v3, :cond_56

    .line 285
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Landroid/view/View;)V

    .line 269
    :cond_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 288
    :cond_5a
    return-void
.end method

.method private G()V
    .registers 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->H()V

    .line 301
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->I()V

    .line 302
    return-void
.end method

.method private H()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->f(I)Ljava/util/List;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_number_limit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ff;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 312
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_tip_card_number"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_5e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 318
    return-void
.end method

.method private I()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->g(I)Ljava/util/List;

    move-result-object v0

    .line 324
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_pwd_limit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ff;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 328
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_tip_card_pass"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_5e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 334
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ff;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ff;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->t()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ff;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ff;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 337
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ff;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ff;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    return p1
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    .line 342
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->m:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->a(II)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 345
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_pay_info_inaccount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_21
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_666666"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 355
    return-void

    .line 348
    :cond_36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_unpay_info_inaccount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ff;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->f(I)Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_number_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 164
    :goto_20
    return v0

    .line 155
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 156
    const/4 v0, 0x1

    goto :goto_20

    .line 158
    :cond_2d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_number_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ff;)Lcom/baidu/bdgame/sdk/obf/fg;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    return-object v0
.end method

.method private d(I)V
    .registers 7

    .prologue
    .line 291
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_card_info_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v2, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v4, "bdp_color_ff3300"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v1, v3, v4, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 297
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->g(I)Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 170
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_pwd_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    :goto_20
    return v0

    .line 176
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 177
    const/4 v0, 0x1

    goto :goto_20

    .line 179
    :cond_2d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_pwd_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method private t()V
    .registers 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 124
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    iget v4, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_31
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_game_card_list"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->r:Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ff;->d(Landroid/view/ViewGroup;)V

    .line 77
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_line_feed_panel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->m:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->i:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->j:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_tip_pay_surplus_info"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->k:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_pay_surplus_info"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->l:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_sweet_info"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->q:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_card_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_card_password"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_game_card_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->p:Landroid/widget/Button;

    .line 103
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 390
    return-void
.end method

.method protected d(Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->o()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_item_game_card"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 212
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ff$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/ff$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ff;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 225
    :cond_36
    return-void
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 377
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 378
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jc;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jc;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->c:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->d:Ljava/lang/String;

    .line 381
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    iput v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->a:I

    .line 382
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    iput v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->b:I

    .line 383
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/fg;->a(Lcom/baidu/bdgame/sdk/obf/jc;)V

    .line 385
    return-void
.end method

.method protected g()V
    .registers 4

    .prologue
    .line 359
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 361
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->w()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->p()Lcom/baidu/bdgame/sdk/obf/jc;

    move-result-object v0

    if-nez v0, :cond_12

    .line 373
    :cond_11
    :goto_11
    return-void

    .line 366
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->p()Lcom/baidu/bdgame/sdk/obf/jc;

    move-result-object v0

    .line 367
    iget v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->a:I

    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    .line 368
    iget v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->b:I

    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    .line 370
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->s()V

    .line 371
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->n:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/jc;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->o:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/jc;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method protected n()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->h:Lcom/baidu/bdgame/sdk/obf/fg;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fg;->h(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->u:I

    .line 199
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->D()V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->p:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ff$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ff$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ff;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->s()V

    .line 117
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_game_card_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected s()V
    .registers 11

    .prologue
    const/16 v9, 0x11

    const/4 v2, 0x0

    .line 228
    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 229
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 231
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 232
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 233
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 234
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v7

    iget v8, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    if-ne v7, v8, :cond_45

    .line 235
    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ff;->b:Landroid/app/Activity;

    const-string v8, "bdp_paycenter_selector_info"

    invoke-static {v7, v8}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 238
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    :goto_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 241
    :cond_45
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 243
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 244
    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_41

    .line 247
    :cond_54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->F()V

    .line 248
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ff;->t:I

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ff;->d(I)V

    .line 249
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->G()V

    .line 250
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->C()V

    .line 251
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ff;->E()V

    .line 252
    return-void
.end method
