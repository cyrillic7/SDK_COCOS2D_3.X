.class public Lcom/baidu/paysdk/ui/SelectBindCardActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;,
        Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_PC_PWD_CHECK:I = 0xb2


# instance fields
.field private checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

.field private isDebitCard:Z

.field private isFrist:Z

.field private mAdapter:Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;

.field private mAddNewCard:Landroid/widget/TextView;

.field private mBindFromType:I

.field private mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

.field private mDebit:[I

.field private mDebitNum:I

.field private mListView:Landroid/widget/ListView;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mSelect:I

.field private mSetPass:Landroid/widget/TextView;

.field private mSetPassTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSelect:I

    iput v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebitNum:I

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isDebitCard:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isFrist:Z

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)I
    .registers 2

    iget v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSelect:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/paysdk/ui/SelectBindCardActivity;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSelect:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAdapter:Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/paysdk/ui/SelectBindCardActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->doNext(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->useNewCard()V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isDebitCard:Z

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)I
    .registers 2

    iget v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebitNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebit:[I

    return-object v0
.end method

.method private doNext(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_10
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isDebitCard:Z

    if-eqz v2, :cond_74

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondDebits()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebit:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v1, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v3, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindFromType:I

    iput v3, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const-string v2, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->execBean()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "timeSms"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getSmsCode"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    return-void

    :cond_74
    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v2, v2

    if-ge p1, v2, :cond_27

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    aget-object v1, v1, p1

    goto :goto_27

    :cond_82
    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v3, 0x2

    iput v3, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const-string v2, "has_binded_card"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "bind_is_first"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->startActivityWithExtras(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_73

    :cond_97
    const-string v2, "has_binded_card"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "bind_is_first"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->startActivityWithExtras(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_73
.end method

.method private useNewCard()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_10
    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput v3, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    :cond_1b
    :goto_1b
    const-string v1, "bind_is_first"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->startActivityWithExtras(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void

    :cond_26
    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const/4 v2, 0x1

    iput v2, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    goto :goto_1b

    :cond_33
    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput v3, v1, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    goto :goto_1b
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "verifySmsFail"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x8

    if-ne p2, v0, :cond_1a

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_19
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->send_sms_by_bfb:I

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmNeedSms(I)V

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->channel_no:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->channel_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setChannelNo(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setRegEx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_length:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSms_length(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/CheckCardInfoResponse;->sms_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSms_type(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "verifySmsSuccess"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xb2

    if-ne p1, v0, :cond_21

    const/4 v0, -0x1

    if-ne p2, v0, :cond_21

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->setHasPwd()V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->pwdPay(Lcom/baidu/wallet/core/BaseActivity;Landroid/content/Intent;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserSucceed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->finish()V

    goto :goto_21
.end method

.method public onBackPressed()V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isFrist:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onBackPressed()V

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->setFlagPaySdk()V

    if-nez p1, :cond_7a

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "bind_is_first"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isFrist:Z

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_bind_card_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    new-instance v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BondPayRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_pay_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    if-eqz v0, :cond_3f

    instance-of v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v2, :cond_3f

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_3f
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->checkResponseValidity()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_c8

    :cond_72
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->finish()V

    :cond_75
    :goto_75
    return-void

    :cond_76
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->finish()V

    goto :goto_75

    :cond_7a
    const-string v0, "mBondRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_8a

    instance-of v2, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v2, :cond_8a

    check-cast v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    :cond_8a
    const-string v0, "isFrist"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isFrist:Z

    const-string v0, "mBindRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_a2

    instance-of v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v2, :cond_a2

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    :cond_a2
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_b2

    instance-of v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v2, :cond_b2

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_b2
    const-string v0, "DirectPayContentResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_62

    instance-of v2, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v2, :cond_62

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    goto :goto_62

    :cond_c8
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    if-eqz v0, :cond_db

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BondPayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_db
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_fd

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_fd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFrom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    iput v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindFromType:I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v0, v5, :cond_17d

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCompletedBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    const-string v0, "\u5fd8\u8bb0\u652f\u4ed8\u5bc6\u7801 \u53ea\u80fd\u7528\u8865\u5168\u7684\u5361\u627e\u56de"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_138
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhang()Z

    move-result v0

    if-nez v0, :cond_14c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_188

    :cond_14c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v0, v0

    if-lez v0, :cond_188

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isDebitCard:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebit:[I

    move v0, v1

    :goto_160
    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v2, v2

    if-ge v0, v2, :cond_188

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17a

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebit:[I

    iget v3, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebitNum:I

    aput v0, v2, v3

    iget v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebitNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebitNum:I

    :cond_17a
    add-int/lit8 v0, v0, 0x1

    goto :goto_160

    :cond_17d
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    goto :goto_138

    :cond_188
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "ebpay_layout_bond_card_view"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v0, v5, :cond_2aa

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "select_pay_card"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_sub_title_find_pwd"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ebpay_title_find_pwd"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->initActionBar(Ljava/lang/String;)V

    :goto_1bd
    const-string v0, "0"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "select_pay_card"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_select_bondcard"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ebpay_select_bankcard"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->initActionBar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    if-nez v0, :cond_210

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "SelectBindCardActivity"

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/b;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/b;->a()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->checkCardInfoBean:Lcom/baidu/paysdk/beans/b;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/b;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    :cond_210
    new-instance v0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;-><init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;Landroid/content/Context;Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAdapter:Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;

    const-string v0, "lv_bond_card_list"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAdapter:Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "add_new_card"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAddNewCard:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v0, v5, :cond_250

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAddNewCard:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_250
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;-><init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAddNewCard:Landroid/widget/TextView;

    new-instance v2, Lcom/baidu/paysdk/ui/SelectBindCardActivity$2;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$2;-><init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ebpay_set_pass_tip"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSetPassTip:Landroid/widget/TextView;

    const-string v0, "ebpay_set_pass"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSetPass:Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->canUsePcPwdVerify()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-eq v0, v5, :cond_75

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSetPass:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSetPassTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSetPass:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/paysdk/ui/SelectBindCardActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$3;-><init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_75

    :cond_2aa
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_2d1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "select_pay_card"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_no_pwd_complete_tip"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d1
    const-string v0, "ebpay_title_complete_info"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->initActionBar(Ljava/lang/String;)V

    goto/16 :goto_1bd
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "bind_is_first"

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isFrist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mBindRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mBondRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_20

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_20
    const-string v0, "DirectPayContentResponse"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
