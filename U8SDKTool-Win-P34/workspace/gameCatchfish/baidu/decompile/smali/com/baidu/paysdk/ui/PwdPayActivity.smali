.class public Lcom/baidu/paysdk/ui/PwdPayActivity;
.super Lcom/baidu/paysdk/ui/PayBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;,
        Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;
    }
.end annotation


# static fields
.field private static final DIALOG_SELECT_PAYMENT:I = 0x21

.field private static final RESULTFROM_PWDPAYSMSACTIVITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PwdPayActivity"

.field private static lastClickTime:J


# instance fields
.field private mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

.field private mCardToComplete:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mCloseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mErrContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

.field private mErroArea:Landroid/view/View;

.field private mErrorTip:Landroid/widget/TextView;

.field private mFirstRemoteCalculate:Z

.field private mForgetPasswd:Landroid/view/View;

.field private mOnCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

.field private mPayAmount:Landroid/widget/TextView;

.field private mPayBean:Lcom/baidu/paysdk/beans/j;

.field private mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

.field private mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

.field private mPaymentDiscount:Landroid/widget/TextView;

.field private mPaymentLayout:Landroid/widget/RelativeLayout;

.field private mPaymentTextView:Landroid/widget/TextView;

.field private mPreCheckBalanceState:Lcom/baidu/paysdk/storage/PayDataCache$a;

.field private mPriceBeforeChannel:Landroid/widget/TextView;

.field private mPwdBean:Lcom/baidu/paysdk/beans/i;

.field private mPwdPayLayout:Landroid/widget/LinearLayout;

.field private mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

.field private mScoreTipFirstLaunch:Landroid/widget/TextView;

.field private mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mSubmitLayout:Landroid/widget/LinearLayout;

.field private mUseLocalCalculate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    return-void
.end method

.method static synthetic access$002(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mCardToComplete:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mCardToComplete:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/baidu/paysdk/ui/PwdPayActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showInputMethod()V

    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/datamodel/BondPayRequest;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/PwdPayActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->storeParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/paysdk/ui/PwdPayActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->displayPayAmount()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/paysdk/ui/PwdPayActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/paysdk/ui/PwdPayActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/paysdk/ui/PwdPayActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/paysdk/ui/PwdPayActivity;ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/paysdk/ui/PwdPayActivity;->countPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/wallet/core/BaseActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->clearTasksTopOf(Lcom/baidu/wallet/core/BaseActivity;)V

    return-void
.end method

.method private countPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V
    .registers 13

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/baidu/paysdk/datamodel/PayRequest;->countPayAmount(Landroid/content/Context;ZZ)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v3

    iget-object v7, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    new-instance v0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;

    move-object v1, p0

    move-object v2, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/paysdk/ui/PwdPayActivity$2;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;ZZI)V

    invoke-virtual {v7, v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->post(Ljava/lang/Runnable;)Z

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_52

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    aget-object v0, v0, p3

    move-object v1, v0

    :goto_25
    iput-object p4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mOnCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

    invoke-static {}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getTopActivity()Lcom/baidu/wallet/core/BaseActivity;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "ebpay_calc_payment_loading"

    invoke-static {p0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    const-string v4, "PwdPayActivity"

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/h;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/h;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/paysdk/beans/h;->a(Lcom/baidu/wallet/base/datamodel/CardData$BondCard;ZZ)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPreCheckBalanceState:Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/h;->execBean()V

    goto :goto_1b

    :cond_52
    move-object v1, v0

    goto :goto_25
.end method

.method private displayPayAmount()V
    .registers 10

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->isOnlyUseBalance()Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_payment_pre"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v4, "ebpay_pwdpay_balance_pay"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getEasyPayAmount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "0"

    :cond_3a
    const-string v1, ""

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->isOnlyUseBalance()Z

    move-result v1

    if-eqz v1, :cond_c7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayAmount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v3, "bd_wallet_yuan"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mScoreTipFirstLaunch:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->hasChannelActivities([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    if-nez v0, :cond_86

    :cond_70
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pwdpay_display_score_tip"

    invoke-static {v0, v1, v7}, Lcom/baidu/paysdk/storage/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mScoreTipFirstLaunch:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pwdpay_display_score_tip"

    invoke-static {v0, v1, v6}, Lcom/baidu/paysdk/storage/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_86
    return-void

    :cond_87
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_payment_pre"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v5, v5, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->getCardDesc(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2c

    :cond_b7
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentDiscount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    :cond_c7
    invoke-static {v0}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a
.end method

.method private doPay()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/PwdRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput v4, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    const/4 v1, 0x2

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mRequestType:I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->getPwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->isOnlyUseBalance()Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BondPayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0x102

    const-string v2, "PwdPayActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/i;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->payNeedSmsCode()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "ebpay_safe_handle"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/i;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->execBean()V

    goto/16 :goto_8

    :cond_90
    const-string v0, "ebpay_paying"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_a1
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v2, "onekeyClickpay"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v2, "timeAllPay"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v2, "timePay"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "PwdPayActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/j;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0, v4}, Lcom/baidu/paysdk/beans/j;->a(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/j;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/j;->execBean()V

    goto/16 :goto_8

    :cond_d7
    const-string v0, ""

    goto :goto_a1

    :cond_da
    const-string v0, "ebpay_paying"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xe

    const-string v2, "PwdPayActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/l;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/l;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/l;->execBean()V

    goto/16 :goto_8
.end method

.method private enableSubmitBtn(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitBtn:Landroid/widget/Button;

    const-string v1, "wallet_base_pwdpay_logo_normal"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitBtn:Landroid/widget/Button;

    const-string v1, "ebpay_white"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitBtn:Landroid/widget/Button;

    const-string v1, "wallet_base_pwdpay_logo_disable"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitBtn:Landroid/widget/Button;

    const-string v1, "ebpay_gray_disable"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1e
.end method

.method private getPayPriceFromCalcPaymentResponse(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-direct {v3}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;-><init>()V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTotalAmount:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_trans_amount:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_trans_amount:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->isEmptyNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    :goto_1e
    iput-boolean v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_select_desc:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPreCheckBalanceState:Lcom/baidu/paysdk/storage/PayDataCache$a;

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPreCheckBalanceState:Lcom/baidu/paysdk/storage/PayDataCache$a;

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    :cond_38
    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_trans_amount:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->isEmptyNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    :goto_40
    iput-boolean v1, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getTotalScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTotalAmount:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_trans_amount:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreAmount:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_trans_fen:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTransFen:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_select_desc:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTip:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_select_desc:Ljava/lang/String;

    iput-object v0, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    return-object v3

    :cond_61
    move v0, v2

    goto :goto_1e

    :cond_63
    move v1, v2

    goto :goto_40
.end method

.method private isOnlyUseBalance()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private showErrorTextView(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrorTip:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void

    :cond_16
    const/16 v0, 0x8

    goto :goto_d
.end method

.method private showInputMethod()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->requestFocus()Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method private storeParams()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScoreBalanceAmount(Ljava/lang/String;)V

    :goto_e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    :goto_1d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->scoreSelected:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountIds(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountAmount(Ljava/lang/String;)V

    goto :goto_e

    :cond_40
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    goto :goto_1d

    :cond_46
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 12

    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v5, -0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "PwdPayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFailure. beanId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/16 v0, 0xe

    if-eq p1, v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->getBeanId()I

    move-result v0

    if-eq p1, v0, :cond_4a

    :cond_46
    const/16 v0, 0xd

    if-ne p1, v0, :cond_b9

    :cond_4a
    invoke-static {p0, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const v0, 0x186af

    if-ne p2, v0, :cond_77

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showInputMethod()V

    invoke-direct {p0, p3}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showErrorTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_67
    const/16 v0, 0xd

    if-ne p1, v0, :cond_76

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "onekeyPayAcceptFail"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    const v0, 0x186b2

    if-ne p2, v0, :cond_8f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    invoke-direct {p0, p3}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showErrorTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67

    :cond_8f
    if-ne p2, v5, :cond_9c

    const-string v0, ""

    invoke-static {p0, v7, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_67

    :cond_9c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "fp_get_data_fail"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_aa
    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mDialogMsg:Ljava/lang/String;

    const/16 v0, 0xc

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_67

    :cond_b9
    const/16 v0, 0x10

    if-ne p1, v0, :cond_d3

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleFailure(IILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    if-eqz v0, :cond_cc

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    iput-boolean v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showInputMethod()V

    :cond_cc
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mOnCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v4, v4, v4}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;->onDone(ILcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :cond_d3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_db

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_76

    :cond_db
    if-ne p2, v5, :cond_e3

    const-string v0, ""

    invoke-static {p0, v7, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_76

    :cond_e3
    invoke-direct {p0, p3}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showErrorTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_76
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 11

    const/16 v2, 0x10

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->getBeanId()I

    move-result v0

    if-ne p1, v0, :cond_5e

    invoke-static {p0, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->getPwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BondPayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->startActivityForResultWithoutAnim(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    const/16 v0, 0xe

    if-ne p1, v0, :cond_8c

    invoke-static {p0, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/BalancePayResponse;

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Lcom/baidu/paysdk/datamodel/BalancePayResponse;->checkResponseValidity()Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-direct {v0}, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;-><init>()V

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/BalancePayResponse;->notify:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->notify:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/BalancePayResponse;->paytype_desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->paytype_desc:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/BalancePayResponse;->coupon_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_msg:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/BalancePayResponse;->coupon_find_prompt:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_find_prompt:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v5}, Lcom/baidu/wallet/base/controllers/PayController;->paySucess(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;Z)V

    goto :goto_5d

    :cond_8c
    if-ne p1, v2, :cond_103

    invoke-static {}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getTopActivity()Lcom/baidu/wallet/core/BaseActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    if-eqz v0, :cond_a0

    iput-boolean v5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    iput-boolean v5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showInputMethod()V

    :cond_a0
    check-cast p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->attended_bank_activity_list_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->attended_bank_activity_list_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountIds(Ljava/lang/String;)V

    :goto_b1
    invoke-direct {p0, p2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getPayPriceFromCalcPaymentResponse(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->attended_bank_activity_list_id:Ljava/lang/String;

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPriceBeforeChannel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPriceBeforeChannel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPriceBeforeChannel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v3, "bd_wallet_yuan"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->amount_before_channel:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPriceBeforeChannel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_eb
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mOnCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->attended_bank_activity_list_id:Ljava/lang/String;

    iget-object v3, p2, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->channel_activity_desc:Ljava/lang/String;

    invoke-interface {v1, v5, v0, v2, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;->onDone(ILcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d

    :cond_f6
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountIds(Ljava/lang/String;)V

    goto :goto_b1

    :cond_fd
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPriceBeforeChannel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_eb

    :cond_103
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5d
.end method

.method protected isFastDoubleClick()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/baidu/paysdk/ui/PwdPayActivity;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_16

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    sput-wide v0, Lcom/baidu/paysdk/ui/PwdPayActivity;->lastClickTime:J

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const/16 v0, 0x12

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-eqz p4, :cond_f

    instance-of v0, p4, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_f

    move-object v0, p4

    check-cast v0, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    :cond_f
    const v0, 0x186af

    if-ne p2, v0, :cond_90

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    if-eqz v0, :cond_90

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->use_vcode_to_pay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->isOnlyUseBalance()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    invoke-direct {p0, p3}, Lcom/baidu/paysdk/ui/PwdPayActivity;->showErrorTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrContent:Lcom/baidu/paysdk/datamodel/ErrorContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/ErrorContentResponse;->use_vcode_to_pay:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mUseVcodeToPay:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BondPayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-string v1, "pay_by_smscode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->startActivityForResultWithoutAnim(Landroid/content/Intent;I)V

    :goto_8f
    return-void

    :cond_90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onBeanExecFailureWithErrContent(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_8f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mCloseBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->hideKeyboard(Landroid/app/Activity;)V

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_17

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->doPay()V

    goto :goto_e

    :cond_17
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    if-ne p1, v0, :cond_2a

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/baidu/paysdk/ui/PwdPayActivity$3;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$3;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PasswordController;->fogetPasswd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    goto :goto_e

    :cond_2a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_e

    const/16 v0, 0x21

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->setFlagPaySdk()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->isOneKeyPay:Z

    if-nez p1, :cond_80

    new-instance v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BondPayRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    new-instance v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-direct {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    :goto_2d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_e9

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BondPayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_66
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->checkResponseValidity()Z

    move-result v0

    if-nez v0, :cond_ed

    :cond_7c
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :goto_7f
    return-void

    :cond_80
    const-string v0, "mBondRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_90

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v1, :cond_90

    check-cast v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    :cond_90
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_a0

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_a0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_a0
    const-string v0, "mPayResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_b7

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_b7

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    :cond_b7
    const-string v0, "mPayment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_c7

    instance-of v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    if-eqz v1, :cond_c7

    check-cast v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    :cond_c7
    const-string v0, "mPayPrice"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_d7

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    if-eqz v1, :cond_d7

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    :cond_d7
    const-string v0, "mUseLocalCalculate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    const-string v0, "mFirstRemoteCalculate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    goto/16 :goto_2d

    :cond_e9
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_7f

    :cond_ed
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isOnlyUseDebitCard()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getBondDebitCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_fd
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseCardOneKeyPay()Z

    move-result v0

    if-nez v0, :cond_23f

    if-nez p1, :cond_112

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iput-boolean v3, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    :cond_112
    :goto_112
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_activity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pwd_pay_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pay_amount"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayAmount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "btn_close"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mCloseBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pay_amount_before_channel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPriceBeforeChannel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "payment_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "payment"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "payment_discount"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPaymentDiscount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "score_tip_first_launch"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mScoreTipFirstLaunch:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pwd_input_box"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSixNumberPwdView:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->addSixNumberPwdChangedListenter(Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "error_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErroArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "error_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mErrorTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "forget_pwd"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mForgetPasswd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pay_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "pay_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mSubmitBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->enableSubmitBtn(Z)V

    if-nez p1, :cond_25b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->scoreSelected:Z

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    new-instance v3, Lcom/baidu/paysdk/ui/PwdPayActivity$1;

    invoke-direct {v3, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$1;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity;->countPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V

    goto/16 :goto_7f

    :cond_235
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    goto/16 :goto_fd

    :cond_23f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_248

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v0, v0

    if-nez v0, :cond_24d

    :cond_248
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto/16 :goto_7f

    :cond_24d
    if-nez p1, :cond_112

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->getDefaultBankCardIdx([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)I

    move-result v1

    iput v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    goto/16 :goto_112

    :cond_25b
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->displayPayAmount()V

    goto/16 :goto_7f
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const/16 v0, 0x21

    if-ne p1, v0, :cond_1b

    new-instance v0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v6, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    new-instance v7, Lcom/baidu/paysdk/ui/PwdPayActivity$4;

    invoke-direct {v7, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$4;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-direct/range {v0 .. v7}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;-><init>(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;Lcom/baidu/paysdk/datamodel/PayRequest;[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;)V

    :goto_1a
    return-object v0

    :cond_1b
    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1a
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PwdPayActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_124

    invoke-super {p0, p1, p2}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_7
    return-void

    :sswitch_8
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_tip_complete"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_cancel_fill_info"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$5;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$5;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_fill_info"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$6;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$6;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto :goto_7

    :sswitch_39
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_cancel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$7;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$7;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_call_kefu"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$8;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$8;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :sswitch_64
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    invoke-virtual {p2, v2}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_confirm_abandon_balance_charge"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    :goto_7c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_cancel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$9;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$9;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_abandon_pay"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_abandon_balance_charge"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_a4
    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$10;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$10;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_ae
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_confirm_abandon_pay"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_7c

    :sswitch_ba
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    const-string v0, "ebpay_no_network"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "ebpay_cancel"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$11;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$11;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    const-string v0, "ebpay_setting"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$12;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$12;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :sswitch_ea
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "ebpay_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$13;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$13;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hideNegativeButton()V

    goto/16 :goto_7

    :sswitch_107
    invoke-super {p0, p1, p2}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/DisplayUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_7

    nop

    :sswitch_data_124
    .sparse-switch
        0xb -> :sswitch_ba
        0xc -> :sswitch_ea
        0xf -> :sswitch_8
        0x11 -> :sswitch_39
        0x12 -> :sswitch_64
        0x21 -> :sswitch_107
    .end sparse-switch
.end method

.method public onPwdChanged(I)V
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->enableSubmitBtn(Z)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "mBondRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayResponse"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayment"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayPrice"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mUseLocalCalculate"

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mFirstRemoteCalculate"

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
