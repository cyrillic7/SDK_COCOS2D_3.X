.class final Lcom/nearme/game/sdk/common/model/biz/PayInfo$1;
.super Ljava/lang/Object;
.source "PayInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/common/model/biz/PayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nearme/game/sdk/common/model/biz/PayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    .registers 6

    .prologue
    .line 163
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setCallbackUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductDesc(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setVoucherId(I)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setVoucherType(I)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setVoucherCount(I)V

    .line 171
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    .registers 3

    .prologue
    .line 176
    new-array v0, p1, [Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo$1;->newArray(I)[Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    move-result-object v0

    return-object v0
.end method
