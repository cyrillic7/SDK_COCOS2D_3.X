.class final Lcom/xiaomi/gamecenter/sdk/entry/g;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->access$002(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setProductCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCount(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpUserInfo(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setAmount(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setExtraInfo(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/g;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/g;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v0

    return-object v0
.end method
