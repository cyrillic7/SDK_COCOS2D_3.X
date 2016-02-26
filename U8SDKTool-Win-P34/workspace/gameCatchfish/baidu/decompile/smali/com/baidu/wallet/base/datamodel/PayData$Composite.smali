.class public Lcom/baidu/wallet/base/datamodel/PayData$Composite;
.super Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/base/datamodel/PayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Composite"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2b9f9eb74cdbb426L


# instance fields
.field public activity_channel_list:[Lcom/baidu/wallet/base/datamodel/PayData$ChannelActivity;

.field public score_amount:Ljava/lang/String;

.field public score_ratio:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrderPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_pay_amount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_pay_fen:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_pay_fen:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_trans_fen:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_trans_fen:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    invoke-virtual {v0}, [Lcom/baidu/wallet/base/datamodel/PayData$Discount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    :cond_1d
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    invoke-virtual {v0}, [Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    :cond_2b
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypay_amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->balance_amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_amount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_pay_amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_pay_amount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_pay_fen:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_pay_fen:Ljava/lang/String;

    goto :goto_2
.end method

.method public easypayMustPayAmount()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypay_least_amount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypay_least_amount:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_1a

    const-string v0, "1"

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypay_least_amount:Ljava/lang/String;

    goto :goto_19

    :cond_1d
    const-string v0, "1"

    goto :goto_19
.end method

.method public hasDiscountOrCoupon()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    array-length v1, v1

    if-lez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    array-length v1, v1

    if-gtz v1, :cond_a

    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method
