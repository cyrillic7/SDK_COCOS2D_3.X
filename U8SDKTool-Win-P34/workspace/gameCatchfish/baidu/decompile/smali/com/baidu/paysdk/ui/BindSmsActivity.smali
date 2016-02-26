.class public Lcom/baidu/paysdk/ui/BindSmsActivity;
.super Lcom/baidu/paysdk/ui/PayBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "BindSmsActivity"


# instance fields
.field private mBindCardBean:Lcom/baidu/paysdk/beans/f;

.field private mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

.field private mButton:Landroid/widget/Button;

.field private mCheckCardBean:Lcom/baidu/paysdk/beans/b;

.field private mContent:Lcom/baidu/wallet/core/utils/support/SmsContent;

.field private mErrorTip:Landroid/widget/TextView;

.field private mMessageNcode:Landroid/widget/EditText;

.field private mPayBean:Lcom/baidu/paysdk/beans/j;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mQueryTimer:Landroid/os/CountDownTimer;

.field private mSendSms:Landroid/widget/TextView;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTipBottomRight:Landroid/widget/TextView;

.field private mVerifySmsBean:Lcom/baidu/paysdk/beans/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/BindSmsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getMessageCode()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/paysdk/ui/BindSmsActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;

    return-object v0
.end method

.method private bindCard()V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "ebpay_safe_handle"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0x201

    const-string v2, "BindSmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/f;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    :cond_1e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/f;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/f;->execBean()V

    return-void
.end method

.method private bindCardPay()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bindclickPay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_e
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "timePay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_1f
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "ebpay_paying"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    if-nez v0, :cond_40

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "BindSmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/j;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    :cond_40
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/j;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/j;->execBean()V

    return-void

    :cond_4b
    const-string v0, ""

    goto :goto_e

    :cond_4e
    const-string v0, ""

    goto :goto_1f
.end method

.method private bondCardPay()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bindclickPay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_e
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "timePay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_1f
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "ebpay_paying"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    if-nez v0, :cond_40

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "BindSmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/j;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    :cond_40
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mSmsCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/j;->a(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/j;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/j;->execBean()V

    return-void

    :cond_5f
    const-string v0, ""

    goto :goto_e

    :cond_62
    const-string v0, ""

    goto :goto_1f
.end method

.method private completeCard()V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "ebpay_safe_handle"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0x203

    const-string v2, "BindSmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/a;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/a;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/a;->execBean()V

    return-void
.end method

.method private getMessageCode()V
    .registers 5

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->startCountDown()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "BindSmsActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/b;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    :cond_1a
    const-string v0, "1"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->a()V

    :cond_2f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mCheckCardBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->execBean()V

    return-void
.end method

.method private setErrorTip(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mErrorTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mErrorTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method private setPasswd()V
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/paysdk/ui/BindSmsActivity$3;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/BindSmsActivity$3;-><init>(Lcom/baidu/paysdk/ui/BindSmsActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwd(Landroid/content/Context;ZLcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    return-void
.end method

.method private startCountDown()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_c
    new-instance v0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/ui/BindSmsActivity$4;-><init>(Lcom/baidu/paysdk/ui/BindSmsActivity;JJ)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->setErrorTip(Ljava/lang/String;)V

    return-void
.end method

.method private verifySms()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isNeedCheckSms()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    const-string v1, "ebpay_safe_handle"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mVerifySmsBean:Lcom/baidu/paysdk/beans/o;

    if-nez v0, :cond_26

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "BindSmsActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/o;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mVerifySmsBean:Lcom/baidu/paysdk/beans/o;

    :cond_26
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mVerifySmsBean:Lcom/baidu/paysdk/beans/o;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/o;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mVerifySmsBean:Lcom/baidu/paysdk/beans/o;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/o;->execBean()V

    :goto_30
    return-void

    :cond_31
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->setPasswd()V

    goto :goto_30
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 9

    const/16 v4, 0xd

    const/4 v1, 0x0

    const/4 v3, -0x8

    const/16 v2, 0xb

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_send_fail"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1d
    if-ne p2, v3, :cond_25

    const-string v0, ""

    invoke-static {p0, v2, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_2d
    if-ne p1, v2, :cond_4a

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    if-ne p2, v3, :cond_46

    const-string v0, ""

    invoke-static {p0, v2, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_24

    :cond_46
    invoke-direct {p0, p3}, Lcom/baidu/paysdk/ui/BindSmsActivity;->setErrorTip(Ljava/lang/String;)V

    goto :goto_24

    :cond_4a
    if-eq p1, v4, :cond_50

    const/16 v0, 0x201

    if-ne p1, v0, :cond_73

    :cond_50
    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iput-object p3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mDialogMsg:Ljava/lang/String;

    if-ne p2, v3, :cond_6c

    const-string v0, ""

    invoke-static {p0, v2, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_5c
    if-ne p1, v4, :cond_24

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bindPayAcceptFail"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_6c
    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_5c

    :cond_73
    const/16 v0, 0x203

    if-ne p1, v0, :cond_90

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-ne p2, v3, :cond_82

    const-string v0, ""

    invoke-static {p0, v2, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_24

    :cond_82
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_90
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_24
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1b

    check-cast p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->checkResponseValidity()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->send_sms_by_bfb:I

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmNeedSms(I)V

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mContent:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->resetState()V

    :goto_1a
    return-void

    :cond_1b
    const/16 v0, 0xb

    if-ne p1, v0, :cond_26

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->setPasswd()V

    goto :goto_1a

    :cond_26
    const/16 v0, 0x201

    if-ne p1, v0, :cond_35

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->bindSuccess()V

    goto :goto_1a

    :cond_35
    const/16 v0, 0x203

    if-ne p1, v0, :cond_44

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->completeCardSuccess()V

    goto :goto_1a

    :cond_44
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_99

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSmsVCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    packed-switch v0, :pswitch_data_a6

    :cond_19
    :goto_19
    :pswitch_19
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "timeSms"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_23
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIsMobilePwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_39
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->bindCardPay()V

    goto :goto_19

    :cond_3d
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->verifySms()V

    goto :goto_19

    :pswitch_41
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIsMobilePwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_57
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->bindCardPay()V

    goto :goto_19

    :cond_5b
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->verifySms()V

    goto :goto_19

    :pswitch_5f
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->bondCardPay()V

    goto :goto_19

    :cond_6d
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->verifySms()V

    goto :goto_19

    :pswitch_71
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->bindCardPay()V

    goto :goto_19

    :cond_7f
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->verifySms()V

    goto :goto_19

    :pswitch_83
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->completeCard()V

    goto :goto_19

    :cond_91
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->verifySms()V

    goto :goto_19

    :pswitch_95
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->verifySms()V

    goto :goto_19

    :cond_99
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTipBottomRight:Landroid/widget/TextView;

    if-ne p1, v0, :cond_19

    const/16 v0, 0x17

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto/16 :goto_19

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_23
        :pswitch_41
        :pswitch_71
        :pswitch_95
        :pswitch_19
        :pswitch_83
        :pswitch_5f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "thirdNext"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->stastics(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->setFlagPaySdk()V

    if-nez p1, :cond_1d1

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_35
    :goto_35
    const-string v0, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_203

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v0, v4, :cond_203

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "request_id_bond_pay"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_activity_bind_sms"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->setContentView(I)V

    const-string v0, "ebpay_sms_verify"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->initActionBar(Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v1, v4, :cond_2ab

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-nez v1, :cond_2a3

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :goto_7e
    if-eqz v0, :cond_2b1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_2b1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "****"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_valid_code_sent_tips"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_b9
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "ebpay_tip_top_left"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_next_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    packed-switch v0, :pswitch_data_370

    :cond_ea
    :goto_ea
    :pswitch_ea
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_message_vcode_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v1, :cond_108

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRegEx()Ljava/lang/String;

    move-result-object v0

    :cond_108
    const/16 v1, 0xa

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v3, :cond_157

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getSms_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_365

    :try_start_11a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getSms_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_123} :catch_35f

    move-result v0

    :goto_124
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getSms_length()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13a

    :try_start_130
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getSms_length()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_139} :catch_368

    move-result v1

    :cond_13a
    :goto_13a
    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRegEx()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_148

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    :cond_148
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v5

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object v0, v3

    :cond_157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17e

    new-instance v1, Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/widget/EditText;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mContent:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mContent:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_17e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/paysdk/ui/BindSmsActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindSmsActivity$1;-><init>(Lcom/baidu/paysdk/ui/BindSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_get_vcode_id"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/paysdk/ui/BindSmsActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindSmsActivity$2;-><init>(Lcom/baidu/paysdk/ui/BindSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_error_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tip_bottom_right"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTipBottomRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTipBottomRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->startCountDown()V

    return-void

    :cond_1d1
    const-string v0, "mBindRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1e1

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v1, :cond_1e1

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    :cond_1e1
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1f1

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_1f1

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_1f1
    const-string v0, "mBondRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_35

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    goto/16 :goto_35

    :cond_203
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->checkRequestValidity()Z

    move-result v0

    if-eqz v0, :cond_24c

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_23f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_23f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->checkRequestValidity()Z

    move-result v0

    if-eqz v0, :cond_23f

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    goto/16 :goto_5d

    :cond_23f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto/16 :goto_5d

    :cond_24c
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto/16 :goto_5d

    :cond_251
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_29e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->checkRequestValidity()Z

    move-result v0

    if-eqz v0, :cond_29e

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_291

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_291

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->checkRequestValidity()Z

    move-result v0

    if-eqz v0, :cond_291

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    goto/16 :goto_5d

    :cond_291
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto/16 :goto_5d

    :cond_29e
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto/16 :goto_5d

    :cond_2a3
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->mobile:Ljava/lang/String;

    goto/16 :goto_7e

    :cond_2ab
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mPhone:Ljava/lang/String;

    goto/16 :goto_7e

    :cond_2b1
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_sms_sent"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_b9

    :pswitch_2be
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_2d4

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIsMobilePwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    :cond_2d4
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_pwd_done"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    :pswitch_2e5
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_2fb

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIsMobilePwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    :cond_2fb
    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_318

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_zhuanzhuang"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    :cond_318
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_submit_pay"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    :pswitch_329
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_pwd_done"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    :pswitch_344
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_submit_pay"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ea

    :catch_35f
    move-exception v0

    const-string v0, "smsStyleNull"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_365
    move v0, v2

    goto/16 :goto_124

    :catch_368
    move-exception v3

    const-string v3, "smsLengthNull"

    invoke-static {p0, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13a

    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_2e5
        :pswitch_2be
        :pswitch_2e5
        :pswitch_ea
        :pswitch_ea
        :pswitch_329
        :pswitch_344
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->clearMktSolution()V

    :cond_a
    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "BindSmsActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mContent:Lcom/baidu/wallet/core/utils/support/SmsContent;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mContent:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_27
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_32
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    :cond_3d
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_28

    invoke-super {p0, p1, p2}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_6
    return-void

    :pswitch_7
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hideNegativeButton()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_confirm"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/BindSmsActivity$5;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/BindSmsActivity$5;-><init>(Lcom/baidu/paysdk/ui/BindSmsActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_6

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_7
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mBindRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mBondRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected stastics(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :pswitch_e
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_4

    :pswitch_12
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pay"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1c
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bind"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_26
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "completion"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_30
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "only_completion"

    invoke-static {v0, p1, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_3a
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

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

.method protected stopCountDown()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mTimer:Landroid/os/CountDownTimer;

    :cond_c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;

    const-string v1, "ebpay_get_sms_code"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
