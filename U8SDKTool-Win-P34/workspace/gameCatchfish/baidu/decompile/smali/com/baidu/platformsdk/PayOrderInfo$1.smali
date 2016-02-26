.class final Lcom/baidu/platformsdk/PayOrderInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/PayOrderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/platformsdk/PayOrderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/PayOrderInfo;
    .registers 6

    .prologue
    .line 99
    new-instance v0, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-direct {v0}, Lcom/baidu/platformsdk/PayOrderInfo;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setCooperatorOrderSerial(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setProductName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setRatio(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platformsdk/PayOrderInfo;->setTotalPriceCent(J)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setExtInfo(Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public a(I)[Lcom/baidu/platformsdk/PayOrderInfo;
    .registers 3

    .prologue
    .line 109
    new-array v0, p1, [Lcom/baidu/platformsdk/PayOrderInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/PayOrderInfo$1;->a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/PayOrderInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/PayOrderInfo$1;->a(I)[Lcom/baidu/platformsdk/PayOrderInfo;

    move-result-object v0

    return-object v0
.end method
