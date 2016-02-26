.class public Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/base/datamodel/PayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EasyPay"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e5f2669f13b6107L


# instance fields
.field public amount:Ljava/lang/String;

.field public bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field public no_bind_bank:I

.field public post_info:Ljava/util/Map;

.field public post_url:Ljava/lang/String;

.field public total_amount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v0, v0

    if-lez v0, :cond_17

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->bind_card_arr:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_17

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->decrypt()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public getAmount()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v2, "amount"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2c
    return-object v0

    :cond_2d
    const-string v0, ""

    goto :goto_2c
.end method

.method public getBuyerUserId()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v2, "buyer_user_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2c
    return-object v0

    :cond_2d
    const-string v0, ""

    goto :goto_2c
.end method

.method public getHdTag()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v2, "hd_tag"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2c
    return-object v0

    :cond_2d
    const-string v0, ""

    goto :goto_2c
.end method

.method public getService()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v2, "service"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2c
    return-object v0

    :cond_2d
    const-string v0, ""

    goto :goto_2c
.end method
