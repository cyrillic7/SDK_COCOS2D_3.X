.class Lcom/tencent/unipay/request/UnipayMPInfo$1;
.super Ljava/lang/Object;
.source "UnipayMPInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayMPInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/unipay/request/UnipayMPInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayMPInfo;
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayMPInfo;-><init>()V

    .line 73
    .local v0, "unipayMPInfo":Lcom/tencent/unipay/request/UnipayMPInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayMPInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayMPInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayMPInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Lcom/tencent/unipay/request/UnipayMPInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayMPInfo$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayMPInfo;

    move-result-object v0

    return-object v0
.end method
