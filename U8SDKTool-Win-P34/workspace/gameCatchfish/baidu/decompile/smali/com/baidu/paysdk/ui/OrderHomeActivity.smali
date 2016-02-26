.class public Lcom/baidu/paysdk/ui/OrderHomeActivity;
.super Lcom/baidu/paysdk/ui/SelectPayActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;
    }
.end annotation


# instance fields
.field private mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

.field private mDiscountLayout:Landroid/widget/LinearLayout;

.field private mFinalPrice:Landroid/widget/TextView;

.field private mGoodsName:Landroid/widget/TextView;

.field private mLoadingProcess:Landroid/widget/ProgressBar;

.field private mOrderNo:Landroid/widget/TextView;

.field private mOriginPrice:Landroid/widget/TextView;

.field private mPayBtn:Landroid/widget/Button;

.field private mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

.field private mSaveTip:Landroid/widget/TextView;

.field private mSpName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->isLoading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/OrderHomeActivity;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateItemDisplay(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mLoadingProcess:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getNewItem(Landroid/view/LayoutInflater;Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;)Landroid/widget/LinearLayout;
    .registers 7

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x42480000

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v2, 0x3f800000

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "ebpay_layout_discount_item"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;-><init>(Lcom/baidu/paysdk/ui/OrderHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private initViews()V
    .registers 6

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_activity_order_home"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setContentView(I)V

    const-string v0, "ebpay_order_confirm"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->initActionBar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_goods_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mGoodsName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mGoodsName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_origin_price"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mOriginPrice:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mOriginPrice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_yuan"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_sp_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mSpName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mSpName:Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getSpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_order_no"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mOrderNo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mOrderNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_discount_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mDiscountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_final_price_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mFinalPrice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "loading_progress"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mLoadingProcess:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_save_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mSaveTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_to_pay"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayBtn:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;-><init>(Lcom/baidu/paysdk/ui/OrderHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isLoading()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mLoadingProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_calc_payment_loading"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private setItemExpiration(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_discount_expiration"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_18

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_overdue_tip"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method

.method private setItemReduction(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_discount_yuan"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_text_orange"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v0

    :goto_45
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "ebpay_discount"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_59
    move-object v1, v0

    goto :goto_45
.end method

.method private setItemTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_discount_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupFinalPrice()V
    .registers 11

    const/16 v9, 0x12

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_final_price"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_orange"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mFinalPrice:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_9d

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mSaveTip:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mSaveTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_save_tip"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_97
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mLoadingProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_9d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mSaveTip:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_97
.end method

.method private updateDiscountItems([Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;I)V
    .registers 8

    if-eqz p1, :cond_6

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    array-length v0, p1

    if-ge v1, v0, :cond_6

    aget-object v0, p1, v1

    if-nez v0, :cond_1c

    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_1c
    new-instance v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->getEnable()Z

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->getSelected()Z

    move-result v4

    invoke-direct {v0, p2, v1, v3, v4}, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;-><init>(IIZZ)V

    invoke-direct {p0, v2, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getNewItem(Landroid/view/LayoutInflater;Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;)Landroid/widget/LinearLayout;

    move-result-object v3

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->description:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setItemTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_51

    aget-object v0, p1, v1

    check-cast v0, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->expire_time:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setItemExpiration(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :goto_44
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->discount_amount:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateItemDisplay(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mDiscountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_18

    :cond_51
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setItemExpiration(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private updateDisplay()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mDiscountLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mDiscountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mDiscountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_12
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->hasDiscountOrCoupon()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateDiscountItems([Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateDiscountItems([Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setupFinalPrice()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setCalcPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V

    goto :goto_4
.end method

.method private updateItemDisplay(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setItemReduction(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_discount_title"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_discount_check"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->enabled:Z

    if-nez v3, :cond_49

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "bd_wallet_pwdpay_light_gray"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pwdpay_check_disable"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_48
    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_normal"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->selected:Z

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pwdpay_check_sel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1, p2}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->setItemReduction(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_48

    :cond_6b
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pwdpay_check_bg"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/SelectPayActivity;->handleFailure(IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateDisplay()V

    return-void
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x10

    if-ne p1, v0, :cond_b

    check-cast p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateDisplay()V

    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const/4 v0, 0x4

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->showBaseDialog(ILjava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/SelectPayActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->checkResponseValidity()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_19
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->onDiscountConfirmed()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->finish()V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    if-eqz p1, :cond_50

    const-string v0, "mCalcPaymentResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    :goto_39
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->checkRequestValidity()Z

    move-result v0

    if-nez v0, :cond_60

    :cond_45
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->onDiscountConfirmed()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->finish()V

    goto :goto_23

    :cond_50
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setCalcPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V

    goto :goto_39

    :cond_60
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->initViews()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateDisplay()V

    goto :goto_23
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "mCalcPaymentResponse"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/SelectPayActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
