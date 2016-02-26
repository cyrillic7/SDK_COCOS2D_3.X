.class public Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN_ADD_BANKCARD_BTN:Ljava/lang/String; = "0"

.field public static final SHOW_ADD_BANKCARD_BTN:Ljava/lang/String; = "1"

.field private static final serialVersionUID:J = 0x146f8b4d10975203L


# instance fields
.field public add_bank_card_enabled:Ljava/lang/String;

.field public cashdesk_type:Ljava/lang/String;

.field public misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

.field public pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

.field public sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

.field public user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->add_bank_card_enabled:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canUsePcPwdVerify()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_12

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->can_use_pcpwd_verify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public checkResponseValidity()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-nez v2, :cond_14

    :cond_31
    move v0, v1

    goto :goto_14
.end method

.method public getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getBondDebitCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_3b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v3, :cond_2e

    aget-object v4, v2, v0

    iget v5, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_3a
    return-object v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public getCompletdBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 7

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v3, :cond_2f

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public getSpGoodsName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->goods_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->goods_name:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getSpName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_company:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_company:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getSpNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sp_no:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sp_no:Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method public getSpPostNoiseValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->post_noise_value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->post_noise_value:Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method public getSpSign()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sign:Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method public getSpUno()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sp_uno:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sp_uno:Ljava/lang/String;

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method public hasBindCards()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v1, v1

    if-lez v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public hasBindDebits()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_1b

    aget-object v4, v2, v1

    iget v4, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public hasCompledCards()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_1c

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public hasCompledDebits()Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v2, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v3, v2

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_21

    aget-object v4, v2, v1

    iget v5, v4, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    invoke-virtual {v4}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v0, 0x1

    :cond_21
    return v0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public hasPwd()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    return v0
.end method

.method public setHasPwd()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->setHasMobilePwd()V

    return-void
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayResponse(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-nez v1, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    if-nez v1, :cond_38

    new-instance v1, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    invoke-direct {v1}, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;-><init>()V

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sp_no:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iput-object v1, v0, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    goto :goto_23

    :cond_38
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$SP;->sp_uno_info:Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;->sp_no:Ljava/lang/String;

    goto :goto_23
.end method
