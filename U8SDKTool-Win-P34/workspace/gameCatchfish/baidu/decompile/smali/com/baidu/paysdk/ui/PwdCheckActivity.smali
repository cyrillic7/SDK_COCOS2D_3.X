.class public Lcom/baidu/paysdk/ui/PwdCheckActivity;
.super Lcom/baidu/paysdk/ui/PwdBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "PwdCheckActivity"


# instance fields
.field private mPwdBean:Lcom/baidu/paysdk/beans/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/wallet/core/BaseActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->clearTasksTopOf(Lcom/baidu/wallet/core/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->getBeanId()I

    move-result v0

    if-ne p1, v0, :cond_52

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const v0, 0x186af

    if-ne p2, v0, :cond_1f

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->resetPwd()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->showKeyboard(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->showErrorMsg(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, -0x8

    if-ne p2, v0, :cond_2a

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_1e

    :cond_2a
    const v0, 0x186b2

    if-ne p2, v0, :cond_4a

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->resetPwd()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pass_locked_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_42
    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mDialogMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->showErrorMsg(Ljava/lang/String;)V

    goto :goto_1e

    :cond_4a
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_52
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_1e
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->getBeanId()I

    move-result v0

    if-ne p1, v0, :cond_4c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object p3, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mSessionKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    const/4 v1, 0x3

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mRequestType:I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/baidu/paysdk/ui/PwdCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity$1;-><init>(Lcom/baidu/paysdk/ui/PwdCheckActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_39
    return-void

    :cond_3a
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwdSucceed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->finishWithoutAnim()V

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    goto :goto_39

    :cond_4c
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public onBackPressed()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, "check failed"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwdFail(ILjava/lang/String;)V

    :cond_11
    :goto_11
    invoke-super {p0}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->onBackPressed()V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->editPwdFail(ILjava/lang/String;)V

    goto :goto_11
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mForgetPasswd:Landroid/view/View;

    if-ne p1, v0, :cond_14

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;-><init>(Lcom/baidu/paysdk/ui/PwdCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PasswordController;->fogetPasswd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    :cond_14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getMobilePwdBeanId()I

    move-result v1

    const-string v2, "PwdCheckActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/i;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_pwd_check_tip2"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ebpay_modified_pwd"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->initActionBar(Ljava/lang/String;)V

    :goto_38
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mDoneButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mForgetPasswd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_45
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_pwd_check_tip"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "ebpay_check_pwd"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->initActionBar(Ljava/lang/String;)V

    goto :goto_38
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PwdCheckActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_2e

    invoke-super {p0, p1, p2}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_6
    return-void

    :pswitch_7
    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mDialogMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_call_kefu"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdCheckActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity$2;-><init>(Lcom/baidu/paysdk/ui/PwdCheckActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/baidu/paysdk/ui/PwdCheckActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity$3;-><init>(Lcom/baidu/paysdk/ui/PwdCheckActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :pswitch_data_2e
    .packed-switch 0x11
        :pswitch_7
    .end packed-switch
.end method

.method public onPwdChanged(I)V
    .registers 5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_21

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_no_network"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->resetPwd()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getPwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ebpay_safe_handle"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/i;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->execBean()V

    goto :goto_21
.end method
