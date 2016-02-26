.class final Lcom/xiaomi/gamecenter/sdk/entry/h;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->setProductCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->setCount(I)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/h;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/h;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    move-result-object v0

    return-object v0
.end method
