.class public Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# static fields
.field private static final SELECTION_NO_CHANGE:I = -0x1

.field private static final serialVersionUID:J = 0x285550a06d76350dL


# instance fields
.field public activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

.field public amount_before_channel:Ljava/lang/String;

.field public attended_bank_activity_list_id:Ljava/lang/String;

.field public balance_amount:Ljava/lang/String;

.field public balance_select_desc:Ljava/lang/String;

.field public balance_trans_amount:Ljava/lang/String;

.field public channel_activity_desc:Ljava/lang/String;

.field public coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

.field public easypay_amount:Ljava/lang/String;

.field public easypay_least_amount:Ljava/lang/String;

.field public easypay_select_desc:Ljava/lang/String;

.field public score_pay_amount:Ljava/lang/String;

.field public score_pay_fen:Ljava/lang/String;

.field public score_select_desc:Ljava/lang/String;

.field public score_trans_amount:Ljava/lang/String;

.field public score_trans_fen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getActivitiesJsonParams()Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->getActivitiesJsonParams(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivitiesJsonParams(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    array-length v0, v0

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    array-length v1, v1

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    aget-object v1, v1, v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1f
    const-string v4, "id"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/PayData$Discount;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-ne v0, p1, :cond_33

    const-string v1, "selected"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2d
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    const-string v4, "selected"

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/PayData$Discount;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :cond_42
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getCouponJsonParams()Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->getCouponJsonParams(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCouponJsonParams(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    array-length v0, v0

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    array-length v1, v1

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    aget-object v1, v1, v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1f
    const-string v4, "id"

    iget-object v5, v1, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-ne v0, p1, :cond_33

    const-string v1, "selected"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2d
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    const-string v4, "selected"

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :cond_42
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
