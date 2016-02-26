.class final Lcom/xiaomi/gamecenter/sdk/entry/i;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->setMiBi(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->setCpUserInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/i;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/i;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    move-result-object v0

    return-object v0
.end method
