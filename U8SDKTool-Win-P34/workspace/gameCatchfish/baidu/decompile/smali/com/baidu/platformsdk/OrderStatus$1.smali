.class final Lcom/baidu/platformsdk/OrderStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/OrderStatus;
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
        "Lcom/baidu/platformsdk/OrderStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/OrderStatus;
    .registers 6

    .prologue
    .line 72
    new-instance v1, Lcom/baidu/platformsdk/OrderStatus;

    invoke-direct {v1}, Lcom/baidu/platformsdk/OrderStatus;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/OrderStatus;->setCpOrderSerial(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platformsdk/OrderStatus;->setOrderPriceCent(J)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Unknown:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 77
    if-nez v2, :cond_28

    .line 78
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Submit:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 84
    :cond_1d
    :goto_1d
    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/OrderStatus;->setStatus(Lcom/baidu/platformsdk/OrderStatus$Status;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/OrderStatus;->setStatusDesc(Ljava/lang/String;)V

    .line 86
    return-object v1

    .line 79
    :cond_28
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 80
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Success:Lcom/baidu/platformsdk/OrderStatus$Status;

    goto :goto_1d

    .line 81
    :cond_2e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 82
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Fail:Lcom/baidu/platformsdk/OrderStatus$Status;

    goto :goto_1d
.end method

.method public a(I)[Lcom/baidu/platformsdk/OrderStatus;
    .registers 3

    .prologue
    .line 90
    new-array v0, p1, [Lcom/baidu/platformsdk/OrderStatus;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/OrderStatus$1;->a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/OrderStatus;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/OrderStatus$1;->a(I)[Lcom/baidu/platformsdk/OrderStatus;

    move-result-object v0

    return-object v0
.end method
