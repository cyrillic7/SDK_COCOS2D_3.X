.class public Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;
.super Lcom/baidu/paysdk/ui/PayBaseActivity;

# interfaces
.implements Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "PwdSetAndConfirmActivity"

.field private static final MAX_CONFIRM_TIME:I = 0x3


# instance fields
.field private mBindCardBean:Lcom/baidu/paysdk/beans/f;

.field private mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private mConfirmTime:I

.field private mDoneButtonConfirm:Landroid/widget/Button;

.field private mErrorTipConfirm:Landroid/widget/TextView;

.field private mFindBean:Lcom/baidu/paysdk/beans/n;

.field private mForgetPasswdConfirm:Landroid/view/View;

.field private mLayoutConfirm:Landroid/view/View;

.field private mLayoutSet:Landroid/view/View;

.field private mPayBean:Lcom/baidu/paysdk/beans/j;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mPwdBean:Lcom/baidu/paysdk/beans/i;

.field private mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

.field private mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

.field private mQueryTimer:Landroid/os/CountDownTimer;

.field private mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

.field private mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

.field private mTipConfirm:Landroid/widget/TextView;

.field private mTipSet:Landroid/widget/TextView;

.field private mTransToHideOfConfirmView:Landroid/view/animation/Animation;

.field private mTransToHideOfSetView:Landroid/view/animation/Animation;

.field private mTransToShowOfConfirmView:Landroid/view/animation/Animation;

.field private mTransToShowOfSetView:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mConfirmTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Lcom/baidu/paysdk/datamodel/PwdRequest;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->doPay()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->error()V

    return-void
.end method

.method private bindCard()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    if-nez v0, :cond_26

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x201

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/f;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    :cond_26
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/f;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindCardBean:Lcom/baidu/paysdk/beans/f;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/f;->execBean()V

    return-void
.end method

.method private bindCardPay()V
    .registers 5

    const-string v1, "bindclickPay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_a
    invoke-static {p0, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "timePay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_1b
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_paying"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    if-nez v0, :cond_44

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xd

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/j;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    :cond_44
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/j;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayBean:Lcom/baidu/paysdk/beans/j;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/j;->execBean()V

    return-void

    :cond_4f
    const-string v0, ""

    goto :goto_a

    :cond_52
    const-string v0, ""

    goto :goto_1b
.end method

.method private completeCard()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x203

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/a;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/a;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/a;->execBean()V

    return-void
.end method

.method private createMobilePwd()V
    .registers 4

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0x106

    const-string v2, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/m;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/m;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/m;->execBean()V

    return-void
.end method

.method private doPay()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :cond_17
    :goto_17
    :pswitch_17
    return-void

    :pswitch_18
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->bindCardPay()V

    goto :goto_17

    :pswitch_1c
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->bindCard()V

    goto :goto_17

    :pswitch_20
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->bindCardPay()V

    goto :goto_17

    :pswitch_24
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->completeCard()V

    goto :goto_17

    :pswitch_28
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findPassword()V

    const-string v1, "findPWD"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_35
    invoke-static {p0, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_39
    const-string v0, ""

    goto :goto_35

    :cond_3c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->modifyMPwd()V

    goto :goto_17

    :cond_47
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->createMobilePwd()V

    goto :goto_17

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_28
        :pswitch_17
        :pswitch_24
    .end packed-switch
.end method

.method private error()V
    .registers 3

    const-string v0, "ebpay_pwd_changed"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->showErrorMsgConfirm(I)V

    iget v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mConfirmTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mConfirmTime:I

    iget v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mConfirmTime:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->showPwdSetView()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mConfirmTime:I

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->resetPwdConfirm()V

    goto :goto_22
.end method

.method private findPassword()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mFindBean:Lcom/baidu/paysdk/beans/n;

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x104

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/n;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mFindBean:Lcom/baidu/paysdk/beans/n;

    :cond_2e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mFindBean:Lcom/baidu/paysdk/beans/n;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/n;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mFindBean:Lcom/baidu/paysdk/beans/n;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/n;->execBean()V

    return-void
.end method

.method private hideErrorMsgConfirm()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mErrorTipConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mForgetPasswdConfirm:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initConfirmView()V
    .registers 3

    const-string v0, "layout_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    const-string v0, "pwd_tip_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTipConfirm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTipConfirm:Landroid/widget/TextView;

    const-string v1, "ebpay_pwd_confim_tip"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "pwd_input_box_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->setShowInputMethod(Z)V

    const-string v0, "pwd_done_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v0, "error_tip_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mErrorTipConfirm:Landroid/widget/TextView;

    const-string v0, "forget_pwd_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mForgetPasswdConfirm:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mForgetPasswdConfirm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->hideErrorMsgConfirm()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->addSixNumberPwdChangedListenter(Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;)V

    return-void
.end method

.method private initSetView()V
    .registers 3

    const-string v0, "layout_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    const-string v0, "pwd_tip_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTipSet:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTipSet:Landroid/widget/TextView;

    const-string v1, "ebpay_pwd_set_tip"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "pwd_input_box_set"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->setShowInputMethod(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->addSixNumberPwdChangedListenter(Lcom/baidu/wallet/base/widget/SixNumberPwdView$OnPwdChangedListener;)V

    return-void
.end method

.method private modifyMPwd()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    const/4 v1, 0x3

    iput v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mRequestType:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_safe_handle"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    if-nez v0, :cond_33

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x103

    const-string v3, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/i;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    :cond_33
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/i;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdBean:Lcom/baidu/paysdk/beans/i;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/i;->execBean()V

    return-void
.end method

.method private showErrorMsgConfirm(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mErrorTipConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mErrorTipConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showPwdSetView()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToHideOfConfirmView:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToShowOfSetView:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->requestFocus()Z

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->hideErrorMsgConfirm()V

    return-void
.end method


# virtual methods
.method public getPwdConfirm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->getPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPwdSet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->getPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleFailure(IILjava/lang/String;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/16 v3, 0xb

    const/4 v2, 0x0

    const/4 v1, -0x8

    const v0, 0x186c6

    if-ne p2, v0, :cond_25

    const/16 v0, 0xc

    if-eq p1, v0, :cond_25

    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-ne p2, v1, :cond_1d

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_19
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->showPwdSetView()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_19

    :cond_25
    const/16 v0, 0x103

    if-ne p1, v0, :cond_43

    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->editPwdFail(ILjava/lang/String;)V

    if-ne p2, v1, :cond_3b

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_1c

    :cond_3b
    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_1c

    :cond_43
    const/16 v0, 0x104

    if-ne p1, v0, :cond_61

    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-ne p2, v1, :cond_59

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_51
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdFail(ILjava/lang/String;)V

    goto :goto_1c

    :cond_59
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_51

    :cond_61
    const/16 v0, 0xd

    if-eq p1, v0, :cond_69

    const/16 v0, 0x201

    if-ne p1, v0, :cond_8d

    :cond_69
    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDialogMsg:Ljava/lang/String;

    if-ne p2, v1, :cond_87

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_75
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bindPayAcceptFail"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_87
    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_75

    :cond_8d
    const/16 v0, 0x106

    if-ne p1, v0, :cond_ba

    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-ne p2, v1, :cond_a4

    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :goto_9b
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdFail(ILjava/lang/String;)V

    goto/16 :goto_1c

    :cond_a4
    const v0, 0x186d0

    if-eq p2, v0, :cond_ae

    const v0, 0x186cd

    if-ne p2, v0, :cond_b2

    :cond_ae
    invoke-static {p0, p3, v5}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_9b

    :cond_b2
    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDialogMsg:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_9b

    :cond_ba
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleFailure(IILjava/lang/String;)V

    goto/16 :goto_1c
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x103

    if-ne p1, v0, :cond_29

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->editPwdSucceed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_modify_success"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->clearTasksWithFlag(I)V

    :goto_28
    return-void

    :cond_29
    const/16 v0, 0x104

    if-ne p1, v0, :cond_3c

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdSucceed(Ljava/lang/String;)V

    goto :goto_28

    :cond_3c
    const/16 v0, 0x201

    if-ne p1, v0, :cond_54

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->bindSuccess()V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserSucceed(Ljava/lang/String;)V

    goto :goto_28

    :cond_54
    const/16 v0, 0x203

    if-ne p1, v0, :cond_6f

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->completeCardSuccess()V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserSucceed(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->clearTasksWithFlag(I)V

    goto :goto_28

    :cond_6f
    const/16 v0, 0x106

    if-ne p1, v0, :cond_80

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPwdSucceed(Ljava/lang/String;)V

    goto :goto_28

    :cond_80
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->handleResponse(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->showPwdSetView()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->removeBeanRequestFromCache(Ljava/lang/String;)V

    :cond_20
    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onBackPressed()V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x2

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->setFlagPaySdk()V

    if-eqz p1, :cond_41

    const-string v0, "mPwdRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_19

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    :cond_19
    const-string v0, "mBindRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_29

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v1, :cond_29

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    :cond_29
    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_39

    instance-of v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v1, :cond_39

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    if-nez v0, :cond_6c

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :goto_40
    return-void

    :cond_41
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pwd_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PwdRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    goto :goto_39

    :cond_6c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    if-eq v0, v3, :cond_a8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_7a

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_40

    :cond_7a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->isRealPay()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_8a

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_40

    :cond_8a
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_99
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_a8
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PwdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-string v0, "ebpay_layout_setandconfirm_pwd"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "wallet_base_slide_to_left"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToHideOfSetView:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_slide_from_right"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToShowOfConfirmView:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_slide_to_right"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToHideOfConfirmView:Landroid/view/animation/Animation;

    const-string v0, "wallet_base_slide_from_left"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getAnimation(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToShowOfSetView:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->initSetView()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->initConfirmView()V

    const-string v0, "ebpay_set_phone_paycode"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->initActionBar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mFrom:I

    packed-switch v0, :pswitch_data_180

    :cond_fa
    :goto_fa
    :pswitch_fa
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;-><init>(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_40

    :pswitch_10c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-ne v0, v3, :cond_124

    :cond_118
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_submit_pay"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fa

    :cond_124
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_142

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_pwd_done"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_white"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_fa

    :cond_142
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_160

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_pwd_done"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_white"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_fa

    :cond_160
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_fa

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_pwd_done"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const-string v1, "ebpay_white"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_fa

    nop

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_fa
        :pswitch_fa
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v0

    const-string v1, "PwdSetAndConfirmActivity"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanManager;->removeAllBeans(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    :cond_18
    return-void
.end method

.method public onPwdChanged(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_60

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdSet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToHideOfSetView:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mTransToShowOfConfirmView:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->requestFocus()Z

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mConfirmPayPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_38

    :cond_5c
    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->error()V

    goto :goto_38

    :cond_60
    if-lez p1, :cond_38

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutConfirm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mDoneButtonConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->hideErrorMsgConfirm()V

    goto :goto_38
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mLayoutSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    :cond_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mPwdRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-eqz v0, :cond_15

    const-string v0, "mBindRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_20

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_20
    return-void
.end method

.method public resetPwdConfirm()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewConfirm:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    return-void
.end method

.method public resetPwdSet()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mSixNumberPwdViewSet:Lcom/baidu/wallet/base/widget/SixNumberPwdView;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SixNumberPwdView;->resetPwd()V

    return-void
.end method
