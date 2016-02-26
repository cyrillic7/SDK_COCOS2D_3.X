.class public final Lcom/baidu/paysdk/storage/PayDataCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/storage/PayDataCache$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/paysdk/storage/PayDataCache;


# instance fields
.field private b:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

.field private c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;

.field private i:Lcom/baidu/wallet/core/beans/IBeanResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->d:Z

    iput-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->e:Z

    return-void
.end method

.method public static getInstance()Lcom/baidu/paysdk/storage/PayDataCache;
    .registers 1

    sget-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache;

    invoke-direct {v0}, Lcom/baidu/paysdk/storage/PayDataCache;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    :cond_b
    sget-object v0, Lcom/baidu/paysdk/storage/PayDataCache;->a:Lcom/baidu/paysdk/storage/PayDataCache;

    return-object v0
.end method


# virtual methods
.method public copyOrderPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->copyOrderPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V

    goto :goto_2
.end method

.method public easypayMustPayAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypayMustPayAmount()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, "1"

    goto :goto_1c
.end method

.method public getBalancePayPostInfo()Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4a
    return-object v2
.end method

.method public getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCanAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "0"

    goto :goto_12
.end method

.method public getCanBalance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "0"

    goto :goto_12
.end method

.method public getCashdeskType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->cashdesk_type:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->cashdesk_type:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public getCompletedBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getCompletdBondCards()[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFormatUserName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getInsideTransOrder()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->misc:Lcom/baidu/wallet/base/datamodel/UserData$Misc;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$Misc;->getInsideTransOrder()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getPayPostInfo()Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4a
    return-object v2
.end method

.method public getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    return-object v0
.end method

.method public getPayStateContent()Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->b:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    return-object v0
.end method

.method public getScore()Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->h:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;

    return-object v0
.end method

.method public getScoreRatio()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_ratio:Ljava/lang/String;

    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, "1"

    goto :goto_1a
.end method

.method public getSellerUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$SP;->getSellerUserId()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getSpGoodsName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpGoodsName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getSpName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getSpNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpNo()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getSpPostNoiseValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpPostNoiseValue()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getSpRequestType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->g:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSpSign()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpSign()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getSpUno()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->getSpUno()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getTotalScore()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->score:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->score:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;->score_num:Ljava/lang/String;

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_amount:Ljava/lang/String;

    goto :goto_1a

    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method public getTransBalance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->balance_amount:Ljava/lang/String;

    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, "0"

    goto :goto_1a
.end method

.method public getTransScore()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_trans_amount:Ljava/lang/String;

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_trans_amount:Ljava/lang/String;

    goto :goto_16

    :cond_32
    const-string v0, ""

    goto :goto_16
.end method

.method public getTransScoreFen()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->score_trans_fen:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->score_trans_fen:Ljava/lang/String;

    goto :goto_14

    :cond_30
    const-string v0, ""

    goto :goto_14
.end method

.method public getTransferAccountConfig()Lcom/baidu/wallet/core/beans/IBeanResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->i:Lcom/baidu/wallet/core/beans/IBeanResponse;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->certificate_code:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->true_name:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public hasBondCards()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasBindCards()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasBondDebits()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasBindDebits()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasCanAmount()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasCanAmount()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hasCompletedCards()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasCompledCards()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasCompletedDebits()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->hasCompledDebits()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasMobilePwd()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->hasMobilePwd()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isBalanceEnough(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isCanDiscountOrCoupon(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_f

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noactivity_balance"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_33
    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhang()Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noactivity_zhuanzhang"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_49
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->hasDiscountOrCoupon()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_6a
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noactivity_self"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_f

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_pwd"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_25
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_balance"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_49
    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isSelectedActivitys()Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_activity"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_5f
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->account:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->account:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Account;->hasCanAmount()Z

    move-result v0

    if-nez v0, :cond_8d

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_order"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_8d
    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseBalance()Z

    move-result v0

    if-nez v0, :cond_a4

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_nobalance_sp"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_a4
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e
.end method

.method public isCanUseScore(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_pwd"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_16
    return-object v0

    :cond_17
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isBalanceCharge()Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_balance"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_3b
    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isZhuanZhang()Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_zhuanzhang"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_51
    const-string v1, ""

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getActivityPrice()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v0, "0"

    :cond_65
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->easypayMustPayAmount()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_94

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_order0"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_8f
    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_94
    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->composite:Lcom/baidu/wallet/base/datamodel/PayData$Composite;

    if-eqz v0, :cond_104

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->getTotalScore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->getTransScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d2

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_d2

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_self"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_d2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_f6

    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_order0"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_f6
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_104
    new-instance v0, Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ebpay_noscroe_order0"

    invoke-static {p1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/paysdk/storage/PayDataCache$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16
.end method

.method public isOwnLogin()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->f:Z

    return v0
.end method

.method public isUseBalance()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->balance:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayBalance;->post_info:Ljava/util/Map;

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public isUseBalanceOneKeyPay(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isUseBalanceOrScore(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseScore(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_12

    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isUseCardOneKeyPay()Z
    .registers 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_pay_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->isOnlyUseDebitCard()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondDebits()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasCompletedDebits()Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_34
    return v0

    :cond_35
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondCards()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasCompletedCards()Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    goto :goto_34

    :cond_4b
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public isUseDiscountOrCoupon(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanDiscountOrCoupon(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isUseOneKeyPay(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseCardOneKeyPay()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseBalanceOneKeyPay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ismPpChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->d:Z

    return v0
.end method

.method public ismPpHome()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->e:Z

    return v0
.end method

.method public setHasPwd()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->setHasMobilePwd()V

    :cond_11
    return-void
.end method

.method public setIsOwnLogin(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->f:Z

    return-void
.end method

.method public setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->b:Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;

    return-void
.end method

.method public setPayResponse(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->c:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    return-void
.end method

.method public setScore(Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->h:Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;

    return-void
.end method

.method public setSpRequestType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->g:Ljava/lang/String;

    return-void
.end method

.method public setTransferAccountConfig(Lcom/baidu/wallet/core/beans/IBeanResponse;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->i:Lcom/baidu/wallet/core/beans/IBeanResponse;

    return-void
.end method

.method public setmPpChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->d:Z

    return-void
.end method

.method public setmPpHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/paysdk/storage/PayDataCache;->e:Z

    return-void
.end method
