.class public Lcom/baidu/paysdk/ui/PayBaseActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# static fields
.field private static final QUERY_DELTA_FOR_EASY:I = 0xbb8

.field private static final QUERY_TIME_FOR_EASY:I = 0x4e20


# instance fields
.field private TAG:Ljava/lang/String;

.field protected isOneKeyPay:Z

.field private isQuerying:Z

.field private mQueryBean:Lcom/baidu/paysdk/beans/p;

.field private mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

.field private mQueryTimer:Landroid/os/CountDownTimer;

.field private mTimeAmount:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    const-string v0, "PayBaseActivity"

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    return-void
.end method

.method static synthetic access$002(Lcom/baidu/paysdk/ui/PayBaseActivity;J)J
    .registers 4

    iput-wide p1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/PayBaseActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/paysdk/ui/PayBaseActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/PayBaseActivity;)Lcom/baidu/paysdk/beans/p;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;

    return-object v0
.end method

.method private queryPayResult()V
    .registers 7

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    if-eqz v1, :cond_63

    const-string v1, "onekeyPayAcceptSuccess"

    if-eqz v0, :cond_60

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_16
    invoke-static {p0, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/p;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;

    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/p;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/p;->execBean()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    :cond_46
    new-instance v0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_74

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    :goto_52
    const-wide/16 v4, 0xbb8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/paysdk/ui/PayBaseActivity$1;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;JJ)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_60
    const-string v0, ""

    goto :goto_16

    :cond_63
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bindPayAcceptSuccess"

    if-eqz v0, :cond_71

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_6d
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_71
    const-string v0, ""

    goto :goto_6d

    :cond_74
    const-wide/16 v2, 0x4e20

    goto :goto_52
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_78

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z

    const/4 v0, -0x1

    if-lt p2, v0, :cond_6d

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "ebpay_pay_fail"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_29
    new-instance v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-direct {v2}, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;-><init>()V

    iput-object p3, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->mErrorMsg:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v3

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    if-nez v0, :cond_6b

    const/4 v0, 0x1

    :goto_39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p0, v2, p2, v0}, Lcom/baidu/wallet/base/controllers/PayController;->payFail(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ILjava/lang/Boolean;)V

    :cond_40
    :goto_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/16 v0, 0x16

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    move v0, v1

    goto :goto_39

    :cond_6d
    const/4 v0, -0x8

    if-ne p2, v0, :cond_40

    const/16 v0, 0xb

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_40

    :cond_78
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_6a
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_3c

    check-cast p2, Lcom/baidu/paysdk/datamodel/FastPayResponse;

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Lcom/baidu/paysdk/datamodel/FastPayResponse;->checkResponseValidity()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/PayQueryRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    :cond_1a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/FastPayResponse;->bank_no:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->mBankNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    iget-object v1, p2, Lcom/baidu/paysdk/datamodel/FastPayResponse;->order_no:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->mOrderNo:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayQueryRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryRequest:Lcom/baidu/paysdk/datamodel/PayQueryRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->queryPayResult()V

    :cond_38
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->stopCountDown()V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3b

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z

    check-cast p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;

    if-eqz p2, :cond_a2

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->trans_state:Ljava/lang/String;

    if-eqz v0, :cond_a2

    const-string v0, "0"

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->trans_state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######. query ok = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-direct {v2}, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;-><init>()V

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->notify:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->notify:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->score_tip:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->score_tip:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->paytype_desc:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->paytype_desc:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->coupon_msg:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_msg:Ljava/lang/String;

    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->coupon_find_prompt:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_find_prompt:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_90
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v3

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->isOneKeyPay:Z

    if-nez v0, :cond_a0

    const/4 v0, 0x1

    :goto_99
    invoke-virtual {v3, p0, v2, v0}, Lcom/baidu/wallet/base/controllers/PayController;->paySucess(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;Z)V

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    goto :goto_3b

    :cond_a0
    move v0, v1

    goto :goto_99

    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeAmount===="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3b

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const/16 v0, 0x16

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto/16 :goto_3b
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryTimer:Landroid/os/CountDownTimer;

    :cond_f
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    const/16 v0, 0x16

    if-ne p1, v0, :cond_25

    check-cast p2, Lcom/baidu/wallet/base/widget/PromptDialog;

    const-string v0, "ebpay_accept"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "ebpay_confirm"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/baidu/paysdk/ui/PayBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/PayBaseActivity$2;-><init>(Lcom/baidu/paysdk/ui/PayBaseActivity;)V

    invoke-virtual {p2, v0, v1}, Lcom/baidu/wallet/base/widget/PromptDialog;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/baidu/wallet/base/widget/PromptDialog;->hideNegativeButton()V

    :goto_24
    return-void

    :cond_25
    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_24
.end method

.method protected stopCountDown()V
    .registers 1

    return-void
.end method
