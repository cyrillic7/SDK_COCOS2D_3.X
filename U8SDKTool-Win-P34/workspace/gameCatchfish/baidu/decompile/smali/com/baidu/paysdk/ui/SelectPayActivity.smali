.class public abstract Lcom/baidu/paysdk/ui/SelectPayActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# static fields
.field private static DIALOG_NO_BIND_CARD:I


# instance fields
.field protected mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x58

    sput v0, Lcom/baidu/paysdk/ui/SelectPayActivity;->DIALOG_NO_BIND_CARD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    return-void
.end method


# virtual methods
.method protected bindCardPay()V
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isOnlyUseDebitCard()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondDebits()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasCompletedDebits()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    :goto_28
    return-void

    :cond_29
    invoke-virtual {p0, v1}, Lcom/baidu/paysdk/ui/SelectPayActivity;->checkPwd(I)V

    goto :goto_28

    :cond_2d
    sget v0, Lcom/baidu/paysdk/ui/SelectPayActivity;->DIALOG_NO_BIND_CARD:I

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_28

    :cond_35
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasCompletedCards()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0, v1}, Lcom/baidu/paysdk/ui/SelectPayActivity;->checkPwd(I)V

    goto :goto_28

    :cond_4d
    invoke-virtual {p0, v3}, Lcom/baidu/paysdk/ui/SelectPayActivity;->checkPwd(I)V

    goto :goto_28

    :cond_51
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isOnlyUseDebitCard()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondDebits()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PayController;->selectCompletCards(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_28

    :cond_73
    sget v0, Lcom/baidu/paysdk/ui/SelectPayActivity;->DIALOG_NO_BIND_CARD:I

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_28

    :cond_7b
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PayController;->selectCompletCards(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_28

    :cond_95
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/base/controllers/PayController;->bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_28
.end method

.method protected bindCardPayNL()V
    .registers 5

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PayController;->bondCardsPay(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/base/controllers/PayController;->bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_19
.end method

.method protected checkPwd(I)V
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->checkPwd(ILandroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->setFlagPaySdk()V

    if-nez p1, :cond_2a

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :goto_29
    return-void

    :cond_2a
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3a

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_3a

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_3a
    const-string v0, "mPayResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_16

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayResponse(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    goto :goto_16

    :cond_50
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_29
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    sget v0, Lcom/baidu/paysdk/ui/SelectPayActivity;->DIALOG_NO_BIND_CARD:I

    if-ne p1, v0, :cond_44

    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_tip_balance_charge"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    :goto_1b
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_add_debit"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/SelectPayActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/SelectPayActivity$2;-><init>(Lcom/baidu/paysdk/ui/SelectPayActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/baidu/paysdk/ui/SelectPayActivity$3;

    invoke-direct {v0, p0}, Lcom/baidu/paysdk/ui/SelectPayActivity$3;-><init>(Lcom/baidu/paysdk/ui/SelectPayActivity;)V

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(Landroid/view/View$OnClickListener;)V

    :goto_35
    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_add_debit_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_1b

    :cond_44
    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_35
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectPayActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "mPayResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_16
    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected selectBalanceAndScore()V
    .registers 3

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseBalanceOrScore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/baidu/paysdk/ui/SelectPayActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/SelectPayActivity$1;-><init>(Lcom/baidu/paysdk/ui/SelectPayActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->show()V

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->bindCardPay()V

    goto :goto_1a
.end method

.method protected selectPayType(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V
    .registers 4

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseOneKeyPay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->pwdPay(Lcom/baidu/wallet/core/BaseActivity;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->finishWithoutAnim()V

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->selectBalanceAndScore()V

    goto :goto_18
.end method
