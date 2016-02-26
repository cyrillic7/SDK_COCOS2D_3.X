.class public abstract Lcom/baidu/paysdk/ui/BindBaseActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;


# static fields
.field protected static BEAN_TAG:Ljava/lang/String; = null

.field private static final DELIVER_BIND_REQUEST:Ljava/lang/String; = "deliver_bind_request"

.field private static final DELIVER_PAY_REQUEST:Ljava/lang/String; = "deliver_pay_request"

.field static final IS_BIND_FROM_FIRST:Ljava/lang/String; = "is_bind_from_first"

.field protected static NEED_FILL:Ljava/lang/String;

.field protected static NOT_NEED_FILL:Ljava/lang/String;


# instance fields
.field protected checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

.field protected mBankName:Landroid/widget/TextView;

.field protected mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private mCardAreaLine:Landroid/view/View;

.field protected mCardClear:Landroid/view/View;

.field protected mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

.field private mCardName:Landroid/widget/TextView;

.field private mCardNameArea:Landroid/view/View;

.field protected mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

.field protected mCardNoText:Ljava/lang/String;

.field protected mCardsArea:Landroid/view/View;

.field protected mContactArea:Landroid/view/View;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mCurrImageDialog:I

.field protected mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

.field protected mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

.field protected mCvvArea:Landroid/view/View;

.field protected mCvvAreaLine:Landroid/view/View;

.field protected mCvvTip:Landroid/view/View;

.field protected mDate:Landroid/widget/EditText;

.field protected mDateArea:Landroid/view/View;

.field protected mDateAreaLine:Landroid/view/View;

.field protected mDateTip:Landroid/view/View;

.field private mErrorTip:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field protected mIdArea:Landroid/view/View;

.field private mIdAreaLine:Landroid/view/View;

.field protected mIdCard:Landroid/widget/EditText;

.field protected mIdCardClear:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

.field protected mMobileTip:Landroid/view/View;

.field protected mNameArea:Landroid/view/View;

.field protected mNameClear:Landroid/view/View;

.field protected mNext:Landroid/widget/Button;

.field protected mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

.field protected mPhoneArea:Landroid/view/View;

.field private mPortocolText:Landroid/widget/TextView;

.field protected mProtocol:Landroid/widget/CheckBox;

.field protected mProtocolArea:Landroid/view/View;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTipCenterLeft:Landroid/widget/TextView;

.field private mTipTopLeft:Landroid/widget/TextView;

.field protected mTrueName:Landroid/widget/EditText;

.field protected mUserArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0"

    sput-object v0, Lcom/baidu/paysdk/ui/BindBaseActivity;->NOT_NEED_FILL:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/baidu/paysdk/ui/BindBaseActivity;->NEED_FILL:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/paysdk/ui/BindBaseActivity;->BEAN_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCurrImageDialog:I

    return-void
.end method

.method private addContentView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_13
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private callBackClientCancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->hideKeyboard(Landroid/app/Activity;)V

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    return-void
.end method

.method private getTitleText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :cond_d
    :pswitch_d
    const-string v0, "ebpay_bd_wallet"

    :goto_f
    return-object v0

    :pswitch_10
    const-string v0, "ebpay_add_bankcard"

    goto :goto_f

    :pswitch_13
    const-string v0, "ebpay_title_complete_info"

    goto :goto_f

    :pswitch_16
    const-string v0, "ebpay_title_find_pwd"

    goto :goto_f

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method private initActionBar()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->initActionBar(Ljava/lang/String;)V

    return-void
.end method

.method private initProtocolFields()V
    .registers 12

    const/4 v1, 0x0

    const/16 v10, 0x21

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "protocol_area"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mProtocolArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "ebpay_protocol"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mProtocol:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mProtocol:Landroid/widget/CheckBox;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mProtocol:Landroid/widget/CheckBox;

    new-instance v2, Lcom/baidu/paysdk/ui/BindBaseActivity$6;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$6;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_33
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "ebpay_protocol_text"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPortocolText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPortocolText:Landroid/widget/TextView;

    if-eqz v0, :cond_143

    if-eqz v3, :cond_143

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    if-eqz v0, :cond_78

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;->list:[Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;

    if-eqz v0, :cond_78

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;->list:[Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;

    array-length v5, v2

    move v0, v1

    :goto_66
    if-ge v0, v5, :cond_78

    aget-object v6, v2, v0

    iget-object v7, v6, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_144

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "bd_wallet_text_gray"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iget-object v0, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_a4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12f

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;

    if-eqz v1, :cond_e1

    iget-object v2, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;->separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_c2

    iget-object v2, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;->last_separator:Ljava/lang/String;

    :cond_c2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e1

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v5, v7, v2, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_e1
    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->title:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_116

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->url:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->title:Ljava/lang/String;

    const-string v8, "<|>|\u300a|\u300b"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/baidu/paysdk/ui/BindBaseActivity$7;

    invoke-direct {v8, p0, v2, v7}, Lcom/baidu/paysdk/ui/BindBaseActivity$7;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v8, v0, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a4

    :cond_116
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v2, v0, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_112

    :cond_12f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPortocolText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPortocolText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPortocolText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_143
    :goto_143
    return-void

    :cond_144
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->hideProtocolArea()V

    goto :goto_143
.end method

.method private restoreFromSavedState(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_75

    const-string v0, "dialogMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_2d

    const-string v0, "deliver_pay_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2d

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_2d

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_2d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_50

    const-string v0, "deliver_bind_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_50

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v1, :cond_50

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_50
    const-string v0, "PayResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_65

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_65

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    :cond_65
    const-string v0, "mCardInfoUpdateContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_75

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v1, :cond_75

    check-cast v0, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    :cond_75
    return-void
.end method


# virtual methods
.method protected addContentView(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mInflater:Landroid/view/LayoutInflater;

    :cond_e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->addContentView(Landroid/view/View;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->checkFields()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected checkBindVadility()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->callBackClientCancel()V

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v1, :cond_19

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->callBackClientCancel()V

    goto :goto_8

    :cond_19
    const/4 v0, 0x1

    goto :goto_8
.end method

.method protected abstract checkFields()V
.end method

.method protected abstract doNext()V
.end method

.method public getUiActivity()Landroid/app/Activity;
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->clearMktSolution()V

    :cond_9
    return-void
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method protected hideCardsArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardsArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideContactArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContactArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideCvvArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideDateArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDateArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideIdArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideLineCvvArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvAreaLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideLineIdArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdAreaLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideNameArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNameArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideProtocolArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mProtocolArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected hideUserArea()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mUserArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected initViewFields()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tip_top_left"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipTopLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipTopLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipTopLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "next_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNext:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNext:Landroid/widget/Button;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$1;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3c
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_card_no_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/DivisionEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setViewType(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNo:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_63
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "card_clear"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardClear:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardClear:Landroid/view/View;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardClear:Landroid/view/View;

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$2;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_81
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "card_area_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardAreaLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "card_name_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNameArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "card_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tip_center_left"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipCenterLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipCenterLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipCenterLeft:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$3;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d3
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sub_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_choose_debit_type"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_fd
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cards_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardsArea:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardsArea:Landroid/view/View;

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardsArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_116
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_bank_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBankName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "data_area_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDateAreaLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "valid_date_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDateArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "valid_data"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDate:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDate:Landroid/widget/EditText;

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDate:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_168
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "date_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDateTip:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDateTip:Landroid/view/View;

    if-eqz v0, :cond_181

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDateTip:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_181
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cvv2_area_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvAreaLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cvv2_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_cvv2_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SafeEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v0, Lcom/baidu/wallet/core/beans/BeanConstants;->ENABLE_SAFE_KEYBOARD:Z

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->setKeyboard(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvv2:Lcom/baidu/wallet/base/widget/SafeEditText;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/widget/SafeEditText;->setmType(II)V

    :cond_1d3
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cvv_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvTip:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvTip:Landroid/view/View;

    if-eqz v0, :cond_1ec

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCvvTip:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1ec
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mUserArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "true_name_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNameArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_true_name_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "name_clear"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNameClear:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTrueName:Landroid/widget/EditText;

    if-eqz v0, :cond_23c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTrueName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_23c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNameClear:Landroid/view/View;

    if-eqz v0, :cond_24e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTrueName:Landroid/widget/EditText;

    if-eqz v0, :cond_24e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mNameClear:Landroid/view/View;

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$4;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_24e
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "id_card_line"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdAreaLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "id_card_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "id_card"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "id_card_clear"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCardClear:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCardClear:Landroid/view/View;

    if-eqz v0, :cond_2a2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCard:Landroid/widget/EditText;

    if-eqz v0, :cond_2a2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCardClear:Landroid/view/View;

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$5;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$5;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2a2
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCard:Landroid/widget/EditText;

    if-eqz v0, :cond_2b0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mIdCard:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2b0
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "contact_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContactArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "mobile_phone_area"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPhoneArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_mobile_phone_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/DivisionEditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    if-eqz v0, :cond_2f7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setViewType(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobilePhone:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2f7
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone_tip_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobileTip:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobileTip:Landroid/view/View;

    if-eqz v0, :cond_310

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mMobileTip:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_310
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->initProtocolFields()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "error_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mErrorTip:Landroid/widget/TextView;

    return-void
.end method

.method protected isBalanceCharge()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_12

    const-string v0, "pay_from_balance_charge"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected abstract isFormValid()Z
.end method

.method protected isHuaFeiCharge()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_12

    const-string v0, "pay_from_huafei"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isZhuanZhang()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_12

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->hideCustomKeyboard()V

    :goto_d
    return-void

    :cond_e
    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onBackPressed()V

    goto :goto_d
.end method

.method protected onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const v0, 0x139c0

    if-eq p2, v0, :cond_14

    const v0, 0x139c1

    if-eq p2, v0, :cond_14

    const v0, 0x139c6

    if-eq p2, v0, :cond_14

    const v0, 0x139c7

    if-ne p2, v0, :cond_30

    :cond_14
    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    instance-of v0, p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_2f

    check-cast p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object p4, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iput-object p3, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0x23

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/wallet/core/beans/BeanActivity;->onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "date_tip_img"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCurrImageDialog:I

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_date_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "cvv_tip_img"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_47

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCurrImageDialog:I

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_cvv2_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_25

    :cond_47
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone_tip_img"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_mobile_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0xd

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_25
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->setFlagPaySdk()V

    if-nez p1, :cond_6e

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    :goto_24
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    iget-object v2, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_3a
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_layout_base_bind"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mContentLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "keyboardview"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;-><init>(Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;I)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCustomKeyboard:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->initActionBar()V

    return-void

    :cond_6e
    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->restoreFromSavedState(Landroid/os/Bundle;)V

    goto :goto_24
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    packed-switch p1, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    new-instance v0, Lcom/baidu/wallet/base/widget/PromptImageDialog;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/wallet/base/widget/PromptImageDialog;-><init>(Landroid/content/Context;)V

    goto :goto_7

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->checkFields()V

    :cond_5
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    sparse-switch p1, :sswitch_data_8e

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_6
    return-void

    :sswitch_7
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hideNegativeButton()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_confirm"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$8;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$8;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_6

    :sswitch_28
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptImageDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptImageDialog;->setMessage(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCurrImageDialog:I

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_cvv2_tip_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptImageDialog;->setTitleMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_help_cvv"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptImageDialog;->setImage(I)V

    goto :goto_6

    :cond_4e
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_date_tip_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptImageDialog;->setTitleMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_help_date"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptImageDialog;->setImage(I)V

    goto :goto_6

    :sswitch_69
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const-string v0, "bd_wallet_modify_card_no"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$9;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$9;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v0, "bd_wallet_pay_by_order_price"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindBaseActivity$10;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindBaseActivity$10;-><init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :sswitch_data_8e
    .sparse-switch
        0x2 -> :sswitch_28
        0x3 -> :sswitch_7
        0x23 -> :sswitch_69
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/BindBaseActivity;->restoreFromSavedState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onResume()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->clearMktSolution()V

    :cond_c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "dialogMsg"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_1a

    const-string v0, "deliver_bind_request"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_25

    const-string v0, "deliver_pay_request"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_25
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_30

    const-string v0, "mCardInfoUpdateContent"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardInfoUpdateContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_30
    const-string v0, "PayResponse"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected onTipCenterLeftClick()V
    .registers 1

    return-void
.end method

.method protected setCardNameArea(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNameArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardAreaLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardNameArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardAreaLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

.method protected setErrorTip(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mErrorTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mErrorTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method protected setSubTitle(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method protected setTipCenterLeft(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipCenterLeft:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipCenterLeft:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipCenterLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method protected setTipTopLeft(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipTopLeft:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipTopLeft:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTipTopLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method protected startActivityForBind(Ljava/lang/Class;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_14
    :goto_14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_24
    if-nez p1, :cond_14

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_14
.end method

.method protected stastics(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :pswitch_e
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->callBackClientCancel()V

    goto :goto_4

    :pswitch_12
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pay"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1c
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bind"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_26
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "completion"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_30
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "only_completion"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_3a
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "foggetPwd"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1c
        :pswitch_26
        :pswitch_3a
        :pswitch_e
        :pswitch_30
    .end packed-switch
.end method
