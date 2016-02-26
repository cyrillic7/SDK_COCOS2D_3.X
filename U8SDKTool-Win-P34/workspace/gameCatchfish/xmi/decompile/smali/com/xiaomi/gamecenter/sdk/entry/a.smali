.class final Lcom/xiaomi/gamecenter/sdk/entry/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/a;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->setCardNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->setCardPass(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->setCardType(Lcom/xiaomi/gamecenter/sdk/entry/CardType;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->setMoney(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->setCpUserInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/a;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/a;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;

    move-result-object v0

    return-object v0
.end method
