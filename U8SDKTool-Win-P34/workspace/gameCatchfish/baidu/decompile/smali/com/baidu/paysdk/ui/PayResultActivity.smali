.class public Lcom/baidu/paysdk/ui/PayResultActivity;
.super Lcom/baidu/wallet/core/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;
    }
.end annotation


# instance fields
.field private mBenfitDesc:Landroid/widget/TextView;

.field private mBenfitTitle:Landroid/widget/TextView;

.field private mBenfitView:Landroid/view/View;

.field private mBzfTip:Landroid/widget/TextView;

.field private mCancelBt:Landroid/widget/Button;

.field private mMainTip:Landroid/widget/TextView;

.field private mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

.field private mPaySuccess:Landroid/widget/Button;

.field private mSelPayTypeBt:Landroid/widget/Button;

.field private mSubTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wallet_base_tab_bar_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleAlignment(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleColor(I)V

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->hideLeftZone()V

    :cond_35
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPaySuccess:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->notify:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/paysdk/PayCallBackManager;->a(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSelPayTypeBt:Landroid/widget/Button;

    if-ne p1, v0, :cond_14

    invoke-static {}, Lcom/baidu/paysdk/ui/PayResultActivity;->selectOtherPayType()V

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mCancelBt:Landroid/widget/Button;

    if-ne p1, v0, :cond_1c

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->d()V

    goto :goto_b

    :cond_1c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSubTip:Landroid/widget/TextView;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_b

    const-string v0, "pay_from_huafei"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_42
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->notify:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/paysdk/PayCallBackManager;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v6, 0x2

    const/16 v5, 0x2c

    const/16 v8, 0x8

    const/16 v7, 0x21

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->setFlagPaySdk()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_activity_pay_result"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->setContentView(I)V

    const-string v0, "ebpay_bd_my_wallet"

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->initActionBar(Ljava/lang/String;)V

    if-eqz p1, :cond_1a2

    const-string v0, "mPayModle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    const-string v0, "mPayRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    :goto_3a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_5c

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "event_key_transfer_finished"

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/baidu/wallet/core/eventbus/EventBus$Event;-><init>(Lcom/baidu/wallet/core/eventbus/EventBus;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBus;->post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    :cond_5c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-nez v0, :cond_67

    :cond_64
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :cond_67
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_result_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mMainTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_other_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSubTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_baizhuanfen_tip"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBzfTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "select_paytype_bt"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSelPayTypeBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pay_cancel"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pay_success_bt"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPaySuccess:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-boolean v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    if-eqz v0, :cond_3bd

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v1, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->paytype_desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mMainTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_pay_success"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_1bc

    const-string v0, "pay_from_huafei"

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "ebpay_payresult_huifei"

    invoke-static {v0, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11b
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_payresult_jiaoyi"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_blue"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_red"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_160
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSubTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->score_tip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->score_tip:Ljava/lang/String;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32d

    new-instance v3, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->score_tip:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    move v1, v2

    move v0, v2

    :goto_18a
    if-ge v1, v4, :cond_459

    if-nez v0, :cond_301

    invoke-virtual {v3, v1}, Landroid/text/SpannableString;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_301

    invoke-virtual {v3, v1}, Landroid/text/SpannableString;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_301

    move v0, v1

    :cond_19f
    add-int/lit8 v1, v1, 0x1

    goto :goto_18a

    :cond_1a2
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayStateContent()Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    goto/16 :goto_3a

    :cond_1bc
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_1ec

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhangCashier()Z

    move-result v0

    if-eqz v0, :cond_1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e1
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    :cond_1ec
    const-string v0, "pay_from_zhuanzhang"

    iget-object v3, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ca

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v3, "request_id_transfer"

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/datamodel/TransferRequest;

    if-eqz v0, :cond_271

    iget v3, v0, Lcom/baidu/wallet/base/datamodel/TransferRequest;->mTransferType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_271

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "ebpay_payresult_transfer"

    invoke-static {v0, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22a
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_payresult_jiaoyi"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_blue"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_red"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_160

    :cond_271
    if-eqz v0, :cond_2c1

    iget v1, v0, Lcom/baidu/wallet/base/datamodel/TransferRequest;->mTransferType:I

    if-ne v1, v6, :cond_2c1

    if-eqz v0, :cond_294

    const-string v1, "3"

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/TransferRequest;->mPayee_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_294

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_none_passid_tips"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    :cond_294
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "ebpay_pass_tips"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_text_blue"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_160

    :cond_2c1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    :cond_2ca
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_2f8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    if-eqz v0, :cond_2f8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ed

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2ed
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    :cond_2f8
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    :cond_301
    if-lez v0, :cond_19f

    invoke-virtual {v3, v1}, Landroid/text/SpannableString;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_313

    invoke-virtual {v3, v1}, Landroid/text/SpannableString;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_19f

    :cond_313
    :goto_313
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/16 v5, 0xff

    const/16 v6, 0x78

    invoke-static {v5, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4, v0, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBzfTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBzfTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPaySuccess:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSelPayTypeBt:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    if-eqz v0, :cond_395

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_395

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "hongbao_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBenfitView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pay_success_benifit_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBenfitTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pay_success_benefit_content"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBenfitDesc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBenfitTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBenfitDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->coupon_find_prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mBenfitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_395
    :goto_395
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPaySuccess:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSelPayTypeBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "request_id_transfer"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/datamodel/TransferRequest;

    if-eqz v0, :cond_452

    const-string v1, "3"

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/TransferRequest;->mPayee_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_452

    :goto_3bc
    return-void

    :cond_3bd
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_result_icon"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "wallet_base_result_fail"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_41f

    const-string v0, "pay_from_huafei"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41f

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pay_error_huafei"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3f6
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mMainTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSubTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_40e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPaySuccess:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSelPayTypeBt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_395

    :cond_41f
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_43a

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43a

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pay_error_zhuanzhuang"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f6

    :cond_43a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_449

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_pay_fail"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f6

    :cond_449
    const-string v0, ""

    goto :goto_3f6

    :cond_44c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSubTip:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_40e

    :cond_452
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mSubTip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3bc

    :cond_459
    move v1, v2

    goto/16 :goto_313
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "PayResultActivity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PayResultActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "PayResultActivity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "mPayModle"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayResultContent:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "mPayRequest"

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayResultActivity;->mPayRequest:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
