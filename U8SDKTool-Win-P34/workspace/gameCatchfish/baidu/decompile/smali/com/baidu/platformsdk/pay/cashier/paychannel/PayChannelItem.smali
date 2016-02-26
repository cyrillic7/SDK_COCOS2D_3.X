.class public Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private a(IZ)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    if-nez p2, :cond_20

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 68
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 70
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    :cond_20
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paymode_item_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_iv_payment_ic_mark"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->d:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->d:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_iv_payment_icon"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->b:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_tv_payment_text"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->c:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 77
    if-eqz p1, :cond_d

    .line 78
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :cond_d
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .registers 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p3}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
