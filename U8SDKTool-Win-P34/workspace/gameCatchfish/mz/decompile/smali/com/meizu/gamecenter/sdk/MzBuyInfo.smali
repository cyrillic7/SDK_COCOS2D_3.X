.class public Lcom/meizu/gamecenter/sdk/MzBuyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mAppid:Ljava/lang/String;

.field private mBuyCount:I

.field private mCpUserInfo:Ljava/lang/String;

.field private mCreateTime:J

.field private mOrderId:Ljava/lang/String;

.field private mPayType:I

.field private mPerPrice:Ljava/lang/String;

.field private mProductBody:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mProductSubject:Ljava/lang/String;

.field private mProductUnit:Ljava/lang/String;

.field private mSign:Ljava/lang/String;

.field private mSignType:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAppid:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mUid:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mOrderId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAmount:Ljava/lang/String;

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mCreateTime:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSignType:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSign:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductSubject:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductBody:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductUnit:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mBuyCount:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mPerPrice:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mCpUserInfo:Ljava/lang/String;

    .line 22
    iput v2, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mPayType:I

    .line 26
    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyCount()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mBuyCount:I

    return v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mCpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getOrderAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mPayType:I

    return v0
.end method

.method public getPerPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mPerPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getProductBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductBody:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getProductUnit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSignType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isInfoValid()Z
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSignType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 29
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAppid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public setAppid(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAppid:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public setBuyCount(I)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 123
    iput p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mBuyCount:I

    .line 124
    return-object p0
.end method

.method public setCpUserInfo(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mCpUserInfo:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setCreateTime(J)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 4

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mCreateTime:J

    .line 58
    return-object p0
.end method

.method public setOrderAmount(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mAmount:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mOrderId:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public setPayType(I)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mPayType:I

    .line 50
    return-object p0
.end method

.method public setPerPrice(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mPerPrice:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setProductBody(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductBody:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductId:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public setProductSubject(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductSubject:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setProductUnit(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mProductUnit:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setSign(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSign:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setSignType(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mSignType:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setUserUid(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->mUid:Ljava/lang/String;

    .line 37
    return-object p0
.end method
