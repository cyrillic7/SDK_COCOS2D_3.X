.class public Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;
.super Lcom/baidu/paysdk/ui/BindBaseActivity;


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "BindCardDetailCredit2Activity"

.field private static final IS_BIND_FROM_FIRST:Ljava/lang/String; = "is_bind_from_first"


# instance fields
.field checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

.field private mHasId:Z

.field private mHasName:Z

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasName:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mId:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "ebpay_layout_bind_creditcard_detail"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->addContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->initViewFields()V

    const-string v0, "ebpay_choose_credit_type"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->setSubTitle(Ljava/lang/String;)V

    const-string v0, "ebpay_safe_encrypt"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->setTipTopLeft(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->hideCardsArea()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_10e

    :cond_2c
    :goto_2c
    :pswitch_2c
    return-void

    :pswitch_2d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v2, :cond_d5

    :cond_3d
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->true_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    :cond_77
    move v0, v2

    :goto_78
    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasName:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->certificate_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    :cond_96
    move v1, v2

    :cond_97
    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasId:Z

    :goto_99
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasName:Z

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->hideNameArea()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->hideLineIdArea()V

    :cond_a3
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasId:Z

    if-eqz v0, :cond_ad

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->hideIdArea()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->hideLineIdArea()V

    :cond_ad
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasId:Z

    if-eqz v0, :cond_b8

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasName:Z

    if-eqz v0, :cond_b8

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->hideUserArea()V

    :cond_b8
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c6

    const-string v0, "ebpay_title_find_pwd"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->initActionBar(Ljava/lang/String;)V

    :cond_c6
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-boolean v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->needSetPwd:Z

    if-eqz v0, :cond_2c

    const-string v0, "ebpay_set_phone_paycode"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->initActionBar(Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_d3
    move v0, v1

    goto :goto_78

    :cond_d5
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBondCard()Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    if-eqz v0, :cond_e5

    iget-object v1, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->true_name:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->certificate_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mId:Ljava/lang/String;

    :cond_e5
    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->true_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasName:Z

    sget-object v0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->certificate_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasId:Z

    goto :goto_99

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method protected cancleRequest()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeBean(Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-void
.end method

.method protected checkFields()V
    .registers 8

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mNameClear:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCardClear:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v5}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v0, v6, :cond_d5

    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mNameClear:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mUserArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mNameArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_104

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_104

    move v0, v1

    :goto_79
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_90

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_90

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_90

    move v0, v1

    :cond_90
    :goto_90
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mContactArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_af

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mPhoneArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_af

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v3}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_af

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_af

    move v0, v1

    :cond_af
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mProtocolArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c8

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mProtocol:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c8

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mProtocol:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_c8

    move v0, v1

    :cond_c8
    if-eqz v0, :cond_d4

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->setErrorTip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d4
    return-void

    :cond_d5
    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v0, v6, :cond_f2

    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_f2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCardClear:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5a

    :cond_f2
    iget-object v6, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v6}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getId()I

    move-result v6

    if-ne v0, v6, :cond_5a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_5a

    :cond_104
    move v0, v2

    goto/16 :goto_79

    :cond_107
    move v0, v2

    goto :goto_90
.end method

.method protected doNext()V
    .registers 5

    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasName:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mName:Ljava/lang/String;

    :goto_14
    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mHasId:Z

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mId:Ljava/lang/String;

    :goto_1a
    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2, v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmIdCard(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmPhone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "BindCardDetailCredit2Activity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/b;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    :cond_4a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->execBean()V

    const-string v0, "timeSms"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "getSmsCode"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_61
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_6c
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->handleFailure(IILjava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/4 v0, -0x8

    if-ne p2, v0, :cond_19

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_11
    const-string v0, "verifySmsFail"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-static {p0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/BindBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->send_sms_by_bfb:I

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmNeedSms(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setRegEx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_length:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSms_length(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSms_type(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->is_mobile_pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setIs_mobile_pwd(Ljava/lang/String;)V

    const-class v0, Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->startActivityForBind(Ljava/lang/Class;)V

    const-string v0, "verifySmsSuccess"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isFormValid()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mUserArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mNameArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/CheckUtils;->isUserNameAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "ebpay_error_name"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3b
    return v0

    :cond_3c
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/CheckUtils;->isIDcardAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "ebpay_error_id"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3b

    :cond_6f
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getRealText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/CheckUtils;->isMobileAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    const-string v1, "ebpay_error_phone"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->requestFocus()Z

    goto :goto_3b

    :cond_8e
    const/4 v0, 0x1

    goto :goto_3b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "secondCreditNext2"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->stastics(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->checkBindVadility()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;->initView()V

    goto :goto_e
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "BindCardDetailCredit2Activity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_bind_from_first"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
