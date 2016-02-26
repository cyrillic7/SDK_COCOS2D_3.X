.class public Lcom/baidu/paysdk/ui/BindCardNoActivity;
.super Lcom/baidu/paysdk/ui/BindBaseActivity;


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "BindCardNoActivity"


# instance fields
.field private getCardInfoBean:Lcom/baidu/paysdk/beans/g;

.field private isFirst:Z

.field private mErrorCode:I

.field private mInputCardType:I

.field private mLoginBt:Landroid/widget/Button;

.field private mNoLoginArea:Landroid/widget/LinearLayout;

.field private mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mInputCardType:I

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/ui/BindCardNoActivity;)I
    .registers 2

    iget v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mErrorCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/BindCardNoActivity;)Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/BindCardNoActivity;Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->handCardInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->jumpSignChannelList()V

    return-void
.end method

.method private confimExitClient()V
    .registers 3

    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    return-void
.end method

.method private handCardInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_1a

    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->activity_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountIds(Ljava/lang/String;)V

    :cond_1a
    if-eqz v0, :cond_31

    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v1, :cond_31

    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->easypay_amount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->easypay_amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountAmount(Ljava/lang/String;)V

    :cond_31
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmBankInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->card_type:I

    iput v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mInputCardType:I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmBankCard(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_52

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_52
    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->card_type:I

    if-ne v1, v3, :cond_c5

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    if-eqz v1, :cond_bf

    sget-object v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    sget-object v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const-string v1, "is_bind_from_first"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBondCard()Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v1

    if-eqz v1, :cond_b9

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->verify_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmCvv(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->valid_date:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmValidDate(Ljava/lang/String;)V

    :cond_b9
    const-class v1, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_be
    return-void

    :cond_bf
    const-class v1, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_be

    :cond_c5
    const-class v1, Lcom/baidu/paysdk/ui/BindCardDetailActivity;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_be
.end method

.method private initNLFidlds()V
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nologin_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mNoLoginArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mNoLoginArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "login_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mLoginBt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mLoginBt:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/paysdk/ui/BindCardNoActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity$1;-><init>(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .registers 8

    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_layout_bind_card_no"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->addContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->initViewFields()V

    const-string v0, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "ebpay_score_tip"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_35
    const-string v0, "2"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getSpRequestType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->initNLFidlds()V

    :cond_62
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardClear:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_292

    :goto_75
    :pswitch_75
    const-string v0, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "ebpay_bdwallet_lable"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->initActionBar(Ljava/lang/String;)V

    :cond_94
    :goto_94
    return-void

    :pswitch_95
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhang()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_add_debit_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    :goto_aa
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setCardName()V

    goto :goto_75

    :cond_ae
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tip_balance_charge"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    goto :goto_aa

    :cond_c4
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_account_safe"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    goto :goto_aa

    :pswitch_d2
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-boolean v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->needSetPwd:Z

    if-eqz v0, :cond_ee

    const-string v0, "ebpay_set_phone_paycode"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->initActionBar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tobe_active_set_pwd_tips"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    :goto_ea
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setCardName()V

    goto :goto_75

    :cond_ee
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_account_safe"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    goto :goto_ea

    :pswitch_fc
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v2, :cond_130

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->isZhuanZhang()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_add_debit_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    :goto_117
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-nez v0, :cond_157

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->finish()V

    goto/16 :goto_94

    :cond_122
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tip_compl"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    goto :goto_117

    :cond_130
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-boolean v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->needSetPwd:Z

    if-eqz v0, :cond_149

    const-string v0, "ebpay_set_phone_paycode"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->initActionBar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tobe_active_set_pwd_tips"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    goto :goto_117

    :cond_149
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_only_complete_top_left_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    goto :goto_117

    :cond_157
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->getLast4Num()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v1

    if-eqz v1, :cond_20c

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1, v5}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setFormatEnable(Z)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget v1, v1, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    if-ne v1, v2, :cond_1c7

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v3, v3, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wallet_base_mode_debit"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_last_nums"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1ba
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0, v5}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setEnabled(Z)V

    :goto_1bf
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setCardName()V

    invoke-virtual {p0, v6}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipCenterLeft(Ljava/lang/String;)V

    goto/16 :goto_75

    :cond_1c7
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v3, v3, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wallet_base_mode_credit"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_last_nums"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ba

    :cond_20c
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_hint_last4num"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1bf

    :pswitch_228
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tip_find_pwd"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipTopLeft(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setTipCenterLeft(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_261

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->getLast4Num()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_hint_last4num"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_261
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_28c
    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setCardNameArea(Ljava/lang/String;)V

    goto/16 :goto_75

    nop

    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_95
        :pswitch_d2
        :pswitch_fc
        :pswitch_228
        :pswitch_75
        :pswitch_fc
        :pswitch_fc
    .end packed-switch
.end method

.method private jumpSignChannelList()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmBankCard(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1b
    const-string v1, "mCardNoText"

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const v0, 0xa010

    invoke-virtual {p0, v1, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4
.end method

.method private onAlgoTipCenterLeftClick()V
    .registers 5

    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    if-nez v0, :cond_25

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "BindCardNoActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/g;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    :cond_25
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/g;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSubBankCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/g;->execBean()V

    return-void
.end method

.method private setCardName()V
    .registers 2

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getFormatUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->setCardNameArea(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancleRequest()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeBean(Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-void
.end method

.method protected checkFields()V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardClear:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v3}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v4}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getId()I

    move-result v4

    if-ne v2, v4, :cond_3c

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/DivisionEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardClear:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, " "

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_5f

    :cond_5e
    move v0, v1

    :cond_5f
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected doNext()V
    .registers 8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->checkBindVadility()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "BindCardNoActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/g;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    :cond_2f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/g;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v5, :cond_bf

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v4, :cond_74

    :cond_5f
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_74
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    const-string v1, "bind_card"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_84
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v6, :cond_93

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    const-string v1, "repair_card_info"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_93
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v5, :cond_a7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/paysdk/beans/g;->a:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    const-string v1, "find_password"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_a7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setChannelNo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSubBankCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/g;->execBean()V

    goto/16 :goto_9

    :cond_bf
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-eq v0, v4, :cond_cf

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v6, :cond_f9

    :cond_cf
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    const-string v1, ""

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    :cond_e4
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    :cond_f9
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->handleFailure(IILjava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iput-object p3, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    const v0, 0x186aa

    if-ne p2, v0, :cond_15

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->jumpSignChannelList()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const v0, 0x186c8

    if-eq p2, v0, :cond_1f

    const v0, 0x186ba

    if-ne p2, v0, :cond_26

    :cond_1f
    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_14

    :cond_26
    const v0, 0x186bc

    if-ne p2, v0, :cond_4a

    iput p2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mErrorCode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0x21

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_14

    :cond_4a
    const/4 v0, -0x8

    if-ne p2, v0, :cond_55

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_14

    :cond_55
    const/16 v0, 0xc

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_14
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_86

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mErrorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->algorithm_check_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->algorithm_check_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;->code:I

    const v1, 0x186bb

    if-ne v0, v1, :cond_80

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->algorithm_check_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;->code:I

    iput v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mErrorCode:I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->algorithm_check_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0x21

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_3d
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->bank_no:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->bank_no:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankNo:Ljava/lang/String;

    :cond_65
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->amount_before_channel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->amount_before_channel:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAmountBeforeChannel:Ljava/lang/String;

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->handCardInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V

    goto :goto_3d

    :cond_86
    const/16 v0, 0xf

    if-ne p1, v0, :cond_7f

    check-cast p2, Lcom/baidu/paysdk/datamodel/ScoreTipResponse;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/ScoreTipResponse;->score_tip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "ebpay_score_tip"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/ScoreTipResponse;->score_tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7f
.end method

.method protected isFormValid()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    :cond_16
    :goto_16
    const/4 v0, 0x1

    return v0

    :cond_18
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mCardNoText:Ljava/lang/String;

    goto :goto_16
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xa010

    if-ne p1, v0, :cond_25

    const/4 v0, -0x1

    if-ne p2, v0, :cond_25

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_25
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->bindFail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->finish()V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2c

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->bindFail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->finish()V

    goto :goto_15

    :cond_2c
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->isFirst:Z

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->confimExitClient()V

    goto :goto_15

    :cond_34
    invoke-super {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onBackPressed()V

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "firstNext"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->stastics(Ljava/lang/String;)V

    const-string v0, "2"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getSpRequestType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-nez v0, :cond_48

    :goto_33
    if-nez p1, :cond_51

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bind_is_first"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->isFirst:Z

    :goto_41
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->checkBindVadility()Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_47
    :goto_47
    return-void

    :cond_48
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_33

    :cond_51
    const-string v0, "isFrist"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->isFirst:Z

    goto :goto_41

    :cond_5a
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->initViews()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->checkFields()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xf

    const-string v3, "BindCardNoActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/e;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/e;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/e;->execBean()V

    goto :goto_47
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "BindCardNoActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onDestroy()V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_66

    invoke-super {p0, p1, p2}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_7
    return-void

    :sswitch_8
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_choose_credit_tip2"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindCardNoActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity$2;-><init>(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_confirm"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindCardNoActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity$3;-><init>(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_7

    :sswitch_37
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_choose_modify_card"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindCardNoActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity$4;-><init>(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_choose_confirm"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;-><init>(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_7

    :sswitch_data_66
    .sparse-switch
        0x3 -> :sswitch_8
        0x21 -> :sswitch_37
    .end sparse-switch
.end method

.method protected onTipCenterLeftClick()V
    .registers 9

    const/4 v7, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "webview_title"

    const-string v3, "ebpay_supported_cards"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-nez v0, :cond_186

    const-string v0, ""

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getSellerUserId()Ljava/lang/String;

    move-result-object v0

    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seller_user_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    if-eqz v0, :cond_105

    iget-object v4, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v4, :cond_105

    iget-object v4, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v4, v4, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v4, :cond_105

    iget-object v4, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v4, v4, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->getBuyerUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_99

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&buyer_user_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    iget-object v4, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v4, v4, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_bd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&total_amount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bd
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/paysdk/storage/PayDataCache;->getInsideTransOrder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&trans_need_to_pay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e1
    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_105

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_105
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->isZhuanZhang()Z

    move-result v0

    if-eqz v0, :cond_15d

    const-string v0, "jump_url"

    const-string v4, "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html?debit_only=1"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_112
    const-string v0, "channel_discount_params"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getCardRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v3, :cond_146

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_146

    const-string v4, "&sp_no="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_146
    const-string v3, "&source_flag=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_param"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput v7, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mInputCardType:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_15d
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_16b

    const-string v0, "jump_url"

    const-string v4, "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html?debit_only=1"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    :cond_16b
    iget v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mInputCardType:I

    if-ne v0, v7, :cond_17e

    const-string v0, "bank_type"

    const-string v4, "credit"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_176
    const-string v0, "jump_url"

    const-string v4, "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    :cond_17e
    const-string v0, "bank_type"

    const-string v4, "debit"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_176

    :cond_186
    iget v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity;->mInputCardType:I

    if-ne v0, v7, :cond_199

    const-string v0, "bank_type"

    const-string v3, "credit"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_191
    const-string v0, "jump_url"

    const-string v3, "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    :cond_199
    const-string v0, "bank_type"

    const-string v3, "debit"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_191
.end method
