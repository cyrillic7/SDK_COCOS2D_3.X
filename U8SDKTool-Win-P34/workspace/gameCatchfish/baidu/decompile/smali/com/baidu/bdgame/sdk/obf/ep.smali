.class public Lcom/baidu/bdgame/sdk/obf/ep;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/baidu/bdgame/sdk/obf/eq;

.field private r:Landroid/view/ViewGroup;

.field private s:[Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Landroid/widget/ScrollView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/eq;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 206
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    .line 208
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    .line 57
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    .line 59
    return-void
.end method

.method private C()V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method private D()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->f()Z

    move-result v0

    if-nez v0, :cond_10

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    :goto_f
    return-void

    .line 144
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f
.end method

.method private E()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 266
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ky;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ky;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 269
    :cond_17
    return-void
.end method

.method private F()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->d(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->s:[Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->removeAllViews()V

    move v1, v2

    .line 274
    :goto_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->s:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_5a

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_item_game_amount"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 279
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v4, "bdp_paycenter_pay_money_unit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ep;->s:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ep$3;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ep$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ep;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ep;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->addView(Landroid/view/View;)V

    .line 289
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    if-ne v1, v3, :cond_56

    .line 290
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Landroid/view/View;)V

    .line 274
    :cond_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 293
    :cond_5a
    return-void
.end method

.method private G()V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->H()V

    .line 306
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->I()V

    .line 307
    return-void
.end method

.method private H()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->f(I)Ljava/util/List;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_number_limit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 317
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

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

    .line 319
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

    .line 321
    :cond_5e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 323
    return-void
.end method

.method private I()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->g(I)Ljava/util/List;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_pwd_limit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 333
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

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

    .line 335
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

    .line 337
    :cond_5e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ep;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ep;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ep;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ep;Z)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ep;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
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

    .line 342
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

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ep;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ep;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    .line 347
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->a(II)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 350
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_pay_info_inaccount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_21
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_666666"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 360
    return-void

    .line 353
    :cond_36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_unpay_info_inaccount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ep;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ep;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->f(I)Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 151
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_number_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 168
    :goto_20
    return v0

    .line 159
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 160
    const/4 v0, 0x1

    goto :goto_20

    .line 162
    :cond_2d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_number_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ep;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    return v0
.end method

.method private c(Z)V
    .registers 6

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ep;->v:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->w:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1e

    :goto_18
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    return-void

    :cond_1c
    move v0, v2

    .line 397
    goto :goto_11

    :cond_1e
    move v2, v1

    .line 398
    goto :goto_18
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ep;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    return v0
.end method

.method private d(I)V
    .registers 7

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tip_card_info_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v2, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v4, "bdp_color_ff3300"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v1, v3, v4, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 302
    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/eq;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->g(I)Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 174
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_pwd_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    :goto_20
    return v0

    .line 180
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 181
    const/4 v0, 0x1

    goto :goto_20

    .line 183
    :cond_2d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_pay_card_pwd_error"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_game_card_list"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->r:Landroid/view/ViewGroup;

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->d(Landroid/view/ViewGroup;)V

    .line 83
    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_line_feed_panel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->l:Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->h:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_select_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->i:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_tip_pay_surplus_info"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->j:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_pay_surplus_info"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->k:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_tip_sweet_info"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->p:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_card_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_et_card_password"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_btn_game_card_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->o:Landroid/widget/Button;

    .line 110
    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->B()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 404
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_list_parent_sc"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->v:Landroid/widget/ScrollView;

    .line 406
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_curr_items"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->w:Landroid/widget/LinearLayout;

    .line 408
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tv_curr_item_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->x:Landroid/widget/TextView;

    .line 411
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ep$4;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ep$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ep;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V

    .line 419
    :cond_3e
    return-void
.end method

.method protected d(Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    .line 211
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->o()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 212
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v3, "bdp_paycenter_item_game_card"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 216
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ep$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/ep$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ep;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 229
    :cond_36
    return-void
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 382
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->f()V

    .line 383
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jc;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jc;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->c:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->d:Ljava/lang/String;

    .line 386
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    iput v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->a:I

    .line 387
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    iput v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->b:I

    .line 388
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/jc;)V

    .line 389
    return-void
.end method

.method protected g()V
    .registers 4

    .prologue
    .line 364
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->g()V

    .line 366
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->w()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->p()Lcom/baidu/bdgame/sdk/obf/jc;

    move-result-object v0

    if-nez v0, :cond_12

    .line 378
    :cond_11
    :goto_11
    return-void

    .line 371
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->p()Lcom/baidu/bdgame/sdk/obf/jc;

    move-result-object v0

    .line 372
    iget v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->a:I

    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    .line 373
    iget v1, v0, Lcom/baidu/bdgame/sdk/obf/jc;->b:I

    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    .line 375
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->t()V

    .line 376
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->m:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/jc;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->n:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/jc;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method protected n()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->h(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->u:I

    .line 203
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->D()V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->o:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ep$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ep$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ep;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->t()V

    .line 131
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_game_card_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->o()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_13

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_game_card"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 72
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_game_card_smallcard"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_12
.end method

.method protected s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->q:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected t()V
    .registers 11

    .prologue
    const/16 v9, 0x11

    const/4 v2, 0x0

    .line 236
    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 237
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 238
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 239
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 240
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 241
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 242
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v7

    iget v8, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    if-ne v7, v8, :cond_45

    .line 243
    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/ep;->b:Landroid/app/Activity;

    const-string v8, "bdp_paycenter_selector_info"

    invoke-static {v7, v8}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 246
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    :goto_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 249
    :cond_45
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 251
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_41

    .line 255
    :cond_54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->F()V

    .line 256
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ep;->t:I

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->d(I)V

    .line 257
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->G()V

    .line 258
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->C()V

    .line 259
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ep;->E()V

    .line 260
    return-void
.end method
