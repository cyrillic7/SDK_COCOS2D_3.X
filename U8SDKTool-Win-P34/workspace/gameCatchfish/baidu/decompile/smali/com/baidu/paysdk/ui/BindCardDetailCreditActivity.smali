.class public Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;
.super Lcom/baidu/paysdk/ui/BindBaseActivity;


# static fields
.field protected static BEAN_TAG:Ljava/lang/String;


# instance fields
.field private mHasId:Z

.field private mHasName:Z

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPageAhead:Z

.field private final validDataBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "BindCardDetailCreditActivity"

    sput-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->BEAN_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mPageAhead:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasName:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mId:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "ebpay_layout_bind_creditcard_detail"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->addContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->initViewFields()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "ebpay_choose_credit_type"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->setSubTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "ebpay_safe_encrypt"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->setTipTopLeft(Ljava/lang/String;)V

    const-string v0, ""

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    if-eqz v3, :cond_b2

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->bank_name:Ljava/lang/String;

    :cond_3a
    :goto_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBankName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "wallet_base_mode_credit"

    invoke-static {v5, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_66
    if-eqz v3, :cond_a8

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v0, :cond_a8

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->easypay_amount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "credit_channel_coupon_layout"

    invoke-static {v0, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "credit_channel_coupon_desc"

    invoke-static {v0, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a8
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_1fc

    :cond_b1
    :goto_b1
    :pswitch_b1
    return-void

    :cond_b2
    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBondCard()Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v4

    if-eqz v4, :cond_3a

    iget-object v0, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_name:Ljava/lang/String;

    goto/16 :goto_3a

    :pswitch_be
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    if-eqz v0, :cond_10d

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideCvvArea()V

    :cond_f3
    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_date:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideDateArea()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideLineCvvArea()V

    :cond_10d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v2, :cond_1a8

    :cond_11d
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_157

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->true_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    :cond_157
    move v0, v2

    :goto_158
    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasName:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_176

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->certificate_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    :cond_176
    move v0, v2

    :goto_177
    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasId:Z

    :goto_179
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasName:Z

    if-eqz v0, :cond_1ef

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasId:Z

    if-eqz v0, :cond_1ef

    iput-boolean v2, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mPageAhead:Z

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideUserArea()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmIdCard(Ljava/lang/String;)V

    :goto_194
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b1

    const-string v0, "ebpay_title_find_pwd"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->initActionBar(Ljava/lang/String;)V

    goto/16 :goto_b1

    :cond_1a4
    move v0, v1

    goto :goto_158

    :cond_1a6
    move v0, v1

    goto :goto_177

    :cond_1a8
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBondCard()Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    if-eqz v0, :cond_1c6

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->verify_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmCvv(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v4, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->valid_date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmValidDate(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->true_name:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->certificate_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mId:Ljava/lang/String;

    :cond_1c6
    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->true_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasName:Z

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->certificate_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mHasId:Z

    goto :goto_179

    :cond_1ef
    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mPageAhead:Z

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideUserArea()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideContactArea()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->hideProtocolArea()V

    goto :goto_194

    nop

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_be
        :pswitch_be
        :pswitch_be
        :pswitch_be
        :pswitch_b1
        :pswitch_be
    .end packed-switch
.end method


# virtual methods
.method protected cancleRequest()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeBean(Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-void
.end method

.method protected checkFields()V
    .registers 8

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v6, :cond_45

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->validDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_57
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v3}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v4}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8d

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_108

    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_108

    :cond_8d
    :goto_8d
    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCardsArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_12c

    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDateArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_12a

    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    if-nez v5, :cond_12a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    move v0, v1

    :goto_ac
    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvvArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c3

    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v5}, Lcom/baidu/wallet/base/widget/SafeEditText;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c3

    move v0, v1

    :cond_c3
    :goto_c3
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mContactArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mPhoneArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v3}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    move v0, v1

    :cond_e2
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mProtocolArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_fb

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mProtocol:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v3

    if-nez v3, :cond_fb

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mProtocol:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_fb

    move v0, v1

    :cond_fb
    if-eqz v0, :cond_107

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->setErrorTip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_107
    return-void

    :cond_108
    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v6}, Lcom/baidu/wallet/base/widget/SafeEditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_118

    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v6}, Lcom/baidu/wallet/base/widget/SafeEditText;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_8d

    :cond_118
    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v6}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_8d

    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v5}, Lcom/baidu/wallet/base/widget/DivisionEditText;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_8d

    goto/16 :goto_8d

    :cond_12a
    move v0, v2

    goto :goto_ac

    :cond_12c
    move v0, v2

    goto :goto_c3
.end method

.method protected doNext()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmCvv(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmValidDate(Ljava/lang/String;)V

    :cond_3c
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mPageAhead:Z

    if-eqz v0, :cond_a1

    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmPhone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmIdCard(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    if-nez v0, :cond_82

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    sget-object v3, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->BEAN_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/b;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    :cond_82
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->execBean()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "timeSms"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getSmsCode"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a0
    return-void

    :cond_a1
    const-class v0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->startActivityForBind(Ljava/lang/Class;)V

    goto :goto_a0
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->handleFailure(IILjava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/4 v0, -0x8

    if-ne p2, v0, :cond_1d

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_11
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "verifySmsFail"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->send_sms_by_bfb:I

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmNeedSms(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setRegEx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_length:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSms_length(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->is_mobile_pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setIs_mobile_pwd(Ljava/lang/String;)V

    const-class v0, Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->startActivityForBind(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "verifySmsSuccess"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isFormValid()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDateArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_error_date"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_2f
    return v0

    :cond_30
    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDateArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_56

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_format_date"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2f

    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDateArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_74

    const/16 v2, 0xc

    if-le v1, v2, :cond_8c

    :cond_74
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_format_date"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8a} :catch_8b

    goto :goto_2f

    :catch_8b
    move-exception v1

    :cond_8c
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvvArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_bc

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/CheckUtils;->isBandCardEndAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bc

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_error_cvv"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->requestFocus()Z

    goto/16 :goto_2f

    :cond_bc
    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mPageAhead:Z

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/CheckUtils;->isMobileAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e8

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_error_phone"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->requestFocus()Z

    goto/16 :goto_2f

    :cond_e8
    const/4 v0, 0x1

    goto/16 :goto_2f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "keyboardview"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;-><init>(Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;I)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->setKeyboard(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/widget/SafeEditText;->setmType(II)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->showCustomKeyboard(Lcom/baidu/wallet/base/widget/SafeEditText;)V

    :cond_31
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->clear()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "secondCreditNext1"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->stastics(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->checkBindVadility()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->initView()V

    goto :goto_e
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    sget-object v1, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;->BEAN_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onDestroy()V

    return-void
.end method
