.class public Lcom/baidu/paysdk/datamodel/PayRequest;
.super Lcom/baidu/wallet/core/beans/BeanRequestBase;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    }
.end annotation


# static fields
.field private static final CASHIER_TYPE_ZHUAN_ZHANG:Ljava/lang/String; = "1"

.field public static final DISCOUNT_FLAG_FALSE:Ljava/lang/String; = "0"

.field public static final DISCOUNT_FLAG_TRUE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "PayRequest"

.field private static final serialVersionUID:J = 0x6b805d6eca96d86eL


# instance fields
.field public isPayByMktSolution:Z

.field private mAcitvityAmount:Ljava/lang/String;

.field public mAmountBeforeChannel:Ljava/lang/String;

.field public mBalancePayAmount:Ljava/lang/String;

.field private mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

.field private mCashier_type:Ljava/lang/String;

.field private mChannelDiscountAmount:Ljava/lang/String;

.field private mChannelDiscountIds:Ljava/lang/String;

.field public mGoodName:Ljava/lang/String;

.field public mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

.field public mOrderNo:Ljava/lang/String;

.field public mParams:Ljava/lang/String;

.field public mPayFrom:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field private mScoreBalanceAmount:Ljava/lang/String;

.field public mScorePayAmount:Ljava/lang/String;

.field public mSpNO:Ljava/lang/String;

.field private payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanRequestBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isPayByMktSolution:Z

    return-void
.end method


# virtual methods
.method public checkRequestValidity()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "pay_from_balance_charge"

    iget-object v3, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_2f
    move v0, v1

    goto :goto_14
.end method

.method public clearMktSolution()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->isPayByMktSolution:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mMktSolution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

    return-void
.end method

.method public countPayAmount(Landroid/content/Context;ZZ)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    .registers 13

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "xl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "score="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "& balance="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAcitvityAmount:Ljava/lang/String;

    :goto_2e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "0"

    :cond_36
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    if-nez v1, :cond_cd

    new-instance v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-direct {v1}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;-><init>()V

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    :goto_41
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->easypayMustPayAmount()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_5b

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_30b

    :cond_5b
    invoke-virtual {v1, v6}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    :goto_61
    if-eqz p2, :cond_1ae

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getTransScoreFen()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v0, "0"

    :cond_73
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v7, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v3, v7, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    iget-object v7, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v8, ""

    iput-object v8, v7, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTip:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v8, "ebpay_musteasypay_score"

    invoke-static {p1, v8}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    sget-object v7, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_e3

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v1

    if-eqz v1, :cond_d4

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v1, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    :goto_b8
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "0"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    :goto_c8
    return-object v0

    :cond_c9
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    goto/16 :goto_2e

    :cond_cd
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->reset()V

    goto/16 :goto_41

    :cond_d4
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "ebpay_nobalance_score"

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    goto :goto_b8

    :cond_e3
    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz p3, :cond_14a

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v3, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v2, ""

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    :goto_111
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto :goto_c8

    :cond_114
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v2, "0"

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    :cond_130
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    goto :goto_111

    :cond_14a
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v4

    if-eqz v4, :cond_180

    iget-object v0, v4, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v4, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v2, "0"

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    :goto_170
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v1, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto/16 :goto_c8

    :cond_180
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v3, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v2, ""

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    goto :goto_170

    :cond_1a1
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    goto :goto_170

    :cond_1ae
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseScore(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v5

    if-eqz v5, :cond_208

    iget-object v0, v5, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_208

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    iget-object v7, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v5, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTip:Ljava/lang/String;

    :goto_1ce
    if-eqz p3, :cond_279

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v3, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v2, ""

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22c

    if-eqz v1, :cond_213

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "ebpay_musteasypay_activity"

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    :goto_204
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto/16 :goto_c8

    :cond_208
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v3, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v5, ""

    iput-object v5, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    goto :goto_1ce

    :cond_213
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "0"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "ebpay_noeasypay_balance"

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    goto :goto_204

    :cond_22c
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v1, :cond_25e

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v2, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "ebpay_musteasypay_activity"

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    goto :goto_204

    :cond_25e
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "ebpay_musteasypay_other"

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    goto :goto_204

    :cond_279
    if-eqz v1, :cond_2bb

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v5, "ebpay_musteasypay_activity"

    invoke-static {p1, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    :goto_291
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v5

    if-eqz v5, :cond_2ce

    iget-object v0, v5, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2ce

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, v5, Lcom/baidu/paysdk/storage/PayDataCache$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v1, "0"

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    :goto_2b7
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    goto/16 :goto_c8

    :cond_2bb
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v5, "ebpay_musteasypay_other"

    invoke-static {p1, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyTip:Ljava/lang/String;

    goto :goto_291

    :cond_2ce
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean v3, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    const-string v2, ""

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2fe

    if-eqz v1, :cond_2f5

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    goto :goto_2b7

    :cond_2f5
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    goto :goto_2b7

    :cond_2fe
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-object v0, v1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    goto :goto_2b7

    :cond_30b
    move-object v4, v1

    move v1, v2

    goto/16 :goto_61
.end method

.method public getActivityCoupon()[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getActivityDiscount()[Lcom/baidu/wallet/base/datamodel/PayData$Discount;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getActivityPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAcitvityAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "0"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAcitvityAmount:Ljava/lang/String;

    goto :goto_a
.end method

.method public getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    return-object v0
.end method

.method public getEasyPayAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelDiscountAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelDiscountAmount:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mScoreBalanceAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mScoreBalanceAmount:Ljava/lang/String;

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAcitvityAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAcitvityAmount:Ljava/lang/String;

    goto :goto_a

    :cond_21
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    goto :goto_a
.end method

.method public getOrderPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPayFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setBelongPaySdk()V

    const-string v0, "key_pay_request"

    return-object v0
.end method

.method public getSelectedCouponIds()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds([Lcom/baidu/wallet/base/datamodel/PayData$Coupon;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectedCouponIds([Lcom/baidu/wallet/base/datamodel/PayData$Coupon;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/16 v4, 0x2c

    array-length v5, p1

    move v2, v1

    :goto_10
    if-ge v2, v5, :cond_29

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->getSelected()Z

    move-result v7

    if-eqz v7, :cond_22

    if-eqz v0, :cond_25

    move v0, v1

    :goto_1d
    iget-object v6, v6, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSelectedDiscountIds()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds([Lcom/baidu/wallet/base/datamodel/PayData$Discount;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectedDiscountIds([Lcom/baidu/wallet/base/datamodel/PayData$Discount;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/16 v4, 0x2c

    array-length v5, p1

    move v2, v1

    :goto_10
    if-ge v2, v5, :cond_29

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/baidu/wallet/base/datamodel/PayData$Discount;->getSelected()Z

    move-result v7

    if-eqz v7, :cond_22

    if-eqz v0, :cond_25

    move v0, v1

    :goto_1d
    iget-object v6, v6, Lcom/baidu/wallet/base/datamodel/PayData$Discount;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getmChannelDiscountIds()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelDiscountIds:Ljava/lang/String;

    return-object v0
.end method

.method public getmScoreBalanceAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mScoreBalanceAmount:Ljava/lang/String;

    return-object v0
.end method

.method public hasCashDeskCode()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    const-string v2, "cashdesk_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public initBalanceChargeOrder(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\u4f59\u989d\u5145\u503c"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    :try_start_4
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/StringUtils;->yuan2Fen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    goto :goto_a
.end method

.method public initOrder(Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mParams:Ljava/lang/String;

    const-string v1, "input_charset=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "PayRequest"

    const-string v1, "\u8ba2\u5355\u4e3agbk\u7f16\u7801"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :try_start_15
    const-string v1, "gbk"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gbkParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/EncodeUtils;->gbk2utf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f6c utf8 tmpParam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_4f} :catch_a1

    :goto_4f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    :goto_55
    const-string v1, "SP_NO"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    const-string v1, "ORDER_NO"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    const-string v1, "TOTAL_AMOUNT"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPrice:Ljava/lang/String;

    const-string v1, "GOODS_NAME"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "GOODS_DESC"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    :cond_85
    const-string v1, "CASHIER_TYPE"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCashier_type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhangCashier()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "pay_from_zhuanzhang"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    :cond_97
    return-void

    :cond_98
    const-string v0, "PayRequest"

    const-string v1, "\u8ba2\u5355\u4e3autf-8\u7f16\u7801"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    move-object v0, p1

    goto :goto_55

    :catch_a1
    move-exception v1

    goto :goto_4f
.end method

.method public isBalanceCharge()Z
    .registers 3

    const-string v0, "pay_from_balance_charge"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHuaFeiCharge()Z
    .registers 3

    const-string v0, "pay_from_huafei"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnlyUseDebitCard()Z
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhang()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSelectedActivitys()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedCouponIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getSelectedDiscountIds()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isTransfer()Ljava/lang/String;
    .registers 3

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "pay_from_balance_charge"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "2"

    goto :goto_c

    :cond_1a
    const-string v0, "0"

    goto :goto_c
.end method

.method public isZhuanZhang()Z
    .registers 3

    const-string v0, "pay_from_zhuanzhang"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isZhuanZhangCashier()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCashier_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCashier_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setCalcPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mCalcPayMent:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAcitvityAmount:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public setPayFrom(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    return-void
.end method

.method public setmBalancePayAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mBalancePayAmount:Ljava/lang/String;

    return-void
.end method

.method public setmChannelDiscountAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelDiscountAmount:Ljava/lang/String;

    return-void
.end method

.method public setmChannelDiscountIds(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mChannelDiscountIds:Ljava/lang/String;

    return-void
.end method

.method public setmScoreBalanceAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mScoreBalanceAmount:Ljava/lang/String;

    return-void
.end method

.method public setmScorePayAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/PayRequest;->mScorePayAmount:Ljava/lang/String;

    return-void
.end method
