.class public Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private cardPass:Ljava/lang/String;

.field private cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

.field private cpOrderId:Ljava/lang/String;

.field private cpUserInfo:Ljava/lang/String;

.field private money:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/entry/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/CardType;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardPass:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cpOrderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    iput p6, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->money:I

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardPass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardPass:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Lcom/xiaomi/gamecenter/sdk/entry/CardType;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    return-object v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->money:I

    return v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public setCardPass(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardPass:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Lcom/xiaomi/gamecenter/sdk/entry/CardType;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCpUserInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-void
.end method

.method public setMoney(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->money:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardPass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardType()Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getMoney()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCpUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
