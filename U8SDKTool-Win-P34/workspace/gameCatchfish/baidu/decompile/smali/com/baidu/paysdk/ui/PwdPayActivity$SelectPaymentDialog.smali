.class Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;
.implements Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/PwdPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectPaymentDialog"
.end annotation


# instance fields
.field private mBalanceTip:Landroid/widget/TextView;

.field private mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

.field private mBankCardListLayout:Landroid/widget/LinearLayout;

.field private mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mConfirm:Landroid/widget/Button;

.field private mConfirmLayout:Landroid/widget/LinearLayout;

.field private mDlgContext:Landroid/content/Context;

.field private mNewCard:Landroid/widget/TextView;

.field private mOnResultListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;

.field private mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

.field private mScoreTip:Landroid/widget/TextView;

.field private mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;Lcom/baidu/paysdk/datamodel/PayRequest;[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;)V
    .registers 10

    const-string v0, "EbpayPromptDialog"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object p4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {p5}, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->clone()Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {p6}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->clone()Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-object p7, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mOnResultListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->getDefaultBankCardIdx([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)I

    move-result v1

    iput v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    :cond_2e
    return-void
.end method

.method private adjustTextFont(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private displayCountPayAmountResult()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->initScore()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->initBalance()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->initBankCardList()V

    return-void
.end method

.method private enableConfirmButton(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v2, "ebpay_white"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v2, "ebpay_gray_disable"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_14
.end method

.method private initBalance()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_balance_pre"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v2, "balance_tip"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTotalAmount:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->adjustTextFont(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-boolean v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v3, v3, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    invoke-direct {v1, v2, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->updateCheckBox(Landroid/widget/TextView;)V

    return-void
.end method

.method private initBankCardList()V
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->isEmptyNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->enableBankCardList(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mNewCard:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v3, "bd_wallet_pwdpay_light_gray"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    if-eqz v1, :cond_36

    iput-object v5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v3, v3, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->updateBankCardActivity(ILjava/lang/String;)V

    :cond_36
    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->enableConfirmButton(Z)V

    return-void

    :cond_3a
    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    invoke-virtual {v2, v0, v5}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->enableBankCardList(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mNewCard:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v4, "ebpay_blue"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v2, v2

    if-nez v2, :cond_23

    :cond_55
    move v0, v1

    goto :goto_23
.end method

.method private initScore()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_score_pre"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v2, "score_tip"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTotalAmount:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->getDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTransFen:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2Yuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreAmount:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->getDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->adjustTextFont(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-boolean v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v3, v3, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->scoreSelected:Z

    invoke-direct {v1, v2, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->updateCheckBox(Landroid/widget/TextView;)V

    return-void
.end method

.method private initViews()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "bankcard_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardListLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardListLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v3, v3, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;-><init>(Landroid/widget/LinearLayout;ILjava/lang/String;Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->addItems([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "confirm_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirmLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirmLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "confirm"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "new_card"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mNewCard:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mNewCard:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->isMaximumBondCards()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mNewCard:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6f
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->displayCountPayAmountResult()V

    return-void
.end method

.method private triggerCountPayment(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->clone()Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    :cond_22
    :goto_22
    if-eqz p2, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->scoreSelected:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    if-eqz p3, :cond_45

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    :cond_45
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mOnResultListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->scoreSelected:Z

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget v3, v3, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;->onCountPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    goto :goto_22

    :cond_5d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private updateCheckBox(Landroid/widget/TextView;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;

    iget-boolean v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;->enabled:Z

    if-nez v1, :cond_22

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "bd_wallet_pwdpay_light_gray"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_check_disable"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_1e
    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v2, "bd_wallet_dialog_contenttext"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;->selected:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_check_sel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_check_bg"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1e
.end method


# virtual methods
.method public onBankCardItemClick(I)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->triggerCountPayment(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2b

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBalanceTip:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1b

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-boolean v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    if-nez v2, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->toastIfNotEmpty(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    if-nez v2, :cond_29

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->triggerCountPayment(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    goto :goto_1a

    :cond_29
    move v0, v1

    goto :goto_21

    :cond_2b
    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    if-ne p1, v2, :cond_53

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mScoreTip:Landroid/widget/TextView;

    if-ne p1, v2, :cond_43

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-boolean v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    if-nez v2, :cond_43

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->toastIfNotEmpty(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_43
    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-boolean v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->scoreSelected:Z

    if-nez v2, :cond_51

    :goto_49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v3, v0, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->triggerCountPayment(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    goto :goto_1a

    :cond_51
    move v0, v1

    goto :goto_49

    :cond_53
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirmLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_88

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getBankCardListEnabled()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iput-object v3, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iput-object v3, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityIds:Ljava/lang/String;

    :cond_74
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mOnResultListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-interface {v0, v1, v2}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;->onResult(Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    goto :goto_1a

    :cond_7e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->toastIfNotEmpty(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_88
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mNewCard:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mBankCardItemManager:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getBankCardListEnabled()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mOnResultListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-interface {v0, v1, v2}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;->onNewCard(Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    goto/16 :goto_1a

    :cond_9f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->toastIfNotEmpty(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mDlgContext:Landroid/content/Context;

    const-string v1, "ebpay_pwdpay_payment_select"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->initViews()V

    return-void
.end method

.method public onDone(ILcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    if-eqz v0, :cond_27

    if-nez p1, :cond_27

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iput-object p4, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iput-object p3, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityIds:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-boolean v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->balanceSelected:Z

    :cond_1b
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->clone()Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    :goto_23
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->displayCountPayAmountResult()V

    return-void

    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$SelectPaymentDialog;->mTempPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    goto :goto_23
.end method
