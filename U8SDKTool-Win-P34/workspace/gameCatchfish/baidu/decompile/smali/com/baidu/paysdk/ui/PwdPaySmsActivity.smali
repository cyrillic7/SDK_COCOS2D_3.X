.class public Lcom/baidu/paysdk/ui/PwdPaySmsActivity;
.super Lcom/baidu/paysdk/ui/PayBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "PwdPaySmsActivity"


# instance fields
.field private btnClose:Landroid/widget/ImageButton;

.field private content:Lcom/baidu/wallet/core/utils/support/SmsContent;

.field private isAuto:Z

.field private mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

.field private mCheckCardBean:Lcom/baidu/paysdk/beans/b;

.field protected mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

.field private mMessageNcode:Landroid/widget/EditText;

.field private mPayBean:Lcom/baidu/paysdk/beans/j;

.field private mPayBtn:Landroid/widget/Button;

.field private mPayBySmsCode:Z

.field private mPayLayout:Landroid/widget/LinearLayout;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mPaySmsLayout:Landroid/view/View;

.field private mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

.field private mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

.field private mSendSms:Landroid/widget/TextView;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTipText:Landroid/widget/TextView;

.field private titleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->enableSubmitBtn(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    return-object v0
.end method

.method private doPay()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/CheckUtils;->isVodeAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_error_cer"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_2f
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "onekeyClickpay"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "timeAllPay"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "timePay"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "ebpay_paying"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mSmsCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    if-nez v0, :cond_76

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "PwdPaySmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/j;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    :cond_76
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/j;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/j;->a(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/j;->execBean()V

    goto :goto_26

    :cond_87
    const-string v0, ""

    goto :goto_2f
.end method

.method private enableSubmitBtn(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wallet_base_pwdpay_logo_normal"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_white"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wallet_base_pwdpay_logo_disable"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_gray_disable"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_26
.end method

.method private registerSMS(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->content:Lcom/baidu/wallet/core/utils/support/SmsContent;

    if-nez v0, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/baidu/wallet/core/utils/support/SmsContent;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/widget/EditText;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->content:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->content:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->content:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/utils/support/SmsContent;->updateRegEx(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private sendSmsCode()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_d
    new-instance v0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$4;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$4;-><init>(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;JJ)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    if-eqz v0, :cond_2d

    const-string v0, ""

    invoke-static {p0, v6, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    if-nez v0, :cond_45

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "PwdPaySmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/b;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    :cond_45
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->a()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->execBean()V

    return-void
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_16

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    :cond_d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_15
    return-void

    :cond_16
    const/16 v0, 0xd

    if-ne p1, v0, :cond_32

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "onekeyPayAcceptFail"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_32
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_15
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_e8

    invoke-static {p0, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_ec

    instance-of v2, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;

    if-eqz v2, :cond_ec

    check-cast p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->mobile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_c9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->mobile:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "****"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBySmsCode:Z

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTipText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_pay_by_sms_code_tip"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->channel_no:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mChannelNo:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->registerSMS(Ljava/lang/String;)V

    :goto_72
    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    if-eqz v0, :cond_b0

    iput-boolean v5, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    if-eqz v0, :cond_b0

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_df

    :try_start_86
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_type:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_d9

    move-result v0

    :goto_8c
    iget-object v3, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_length:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    :try_start_94
    iget-object v3, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_length:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_99} :catch_e1

    move-result v2

    :cond_9a
    :goto_9a
    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    :cond_a2
    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_b0
    :goto_b0
    return-void

    :cond_b1
    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTipText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_valid_code_sent"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    :cond_c9
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTipText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_valid_code_sent_tips1"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    :catch_d9
    move-exception v0

    const-string v0, "smsStyleNull"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_df
    move v0, v1

    goto :goto_8c

    :catch_e1
    move-exception v3

    const-string v3, "smsLengthNull"

    invoke-static {p0, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9a

    :cond_e8
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_b0

    :cond_ec
    move-object p2, v0

    goto :goto_72
.end method

.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onBackPressedWithoutAnim()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->setResult(ILandroid/content/Intent;)V

    return-void
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

    if-ne p2, v0, :cond_3d

    :cond_14
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    instance-of v0, p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_39

    check-cast p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object p4, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mErrorContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0x23

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->stopCountDown()V

    :goto_3c
    return-void

    :cond_3d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->doPay()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    if-ne p1, v0, :cond_10

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->sendSmsCode()V

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tip_bottom_right"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x17

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->setFlagPaySdk()V

    iput-boolean v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isOneKeyPay:Z

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz p1, :cond_178

    const-string v0, "mPwdRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    const-string v0, "mBondRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2e

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v1, :cond_2e

    check-cast v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    :cond_2e
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3e

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_3e

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_3e
    const-string v0, "payBySmsCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_52

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_52

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBySmsCode:Z

    :cond_52
    :goto_52
    iput-boolean v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->isAuto:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v0, :cond_1b0

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BondPayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_layout_abc_sms"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_paysms_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "next_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_pay"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->enableSubmitBtn(Z)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_message_vcode_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_title_text"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->titleName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_input_sms_vcode"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "btn_close"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->btnClose:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->btnClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$1;-><init>(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mMessageNcode:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$2;-><init>(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tip_top_left"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTipText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_get_vcode_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tip_bottom_right"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->sendSmsCode()V

    :goto_177
    return-void

    :cond_178
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "request_id_bond_pay"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pay_by_smscode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBySmsCode:Z

    goto/16 :goto_52

    :cond_1b0
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_177
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    const/16 v0, 0x23

    if-ne p1, v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/base/widget/PromptDialog;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;-><init>(Landroid/content/Context;)V

    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_d
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PwdPaySmsActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->content:Lcom/baidu/wallet/core/utils/support/SmsContent;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->content:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_19
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_25
    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onPause()V

    const-string v0, "PwdPaySmsAct"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    sparse-switch p1, :sswitch_data_2c

    invoke-super {p0, p1, p2}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_6
    return-void

    :sswitch_7
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hideNegativeButton()V

    goto :goto_6

    :sswitch_12
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const-string v0, "ebpay_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;-><init>(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hidePositiveButton()V

    goto :goto_6

    nop

    :sswitch_data_2c
    .sparse-switch
        0x3 -> :sswitch_7
        0x23 -> :sswitch_12
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onResume()V

    const-string v0, "PwdPaySmsAct"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "mBondRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "payBySmsCode"

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPayBySmsCode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected stopCountDown()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_get_sms_code"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mSendSms:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
