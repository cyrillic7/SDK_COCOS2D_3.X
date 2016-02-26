.class Lcom/tencent/unipay/request/UnipayGoodsRequest$1;
.super Ljava/lang/Object;
.source "UnipayGoodsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayGoodsRequest;
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
        "Lcom/tencent/unipay/request/UnipayGoodsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayGoodsRequest;
    .registers 5
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 71
    new-instance v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipayGoodsRequest;-><init>()V

    .line 72
    .local v1, "request":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->offerId:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->openId:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->openKey:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->sessionId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->sessionType:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->zoneId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->pf:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->pfKey:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->resData:[B

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->acctType:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->saveValue:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 84
    .local v0, "arry":[Z
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->isCanChange:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mallType:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->h5Url:Ljava/lang/String;

    .line 87
    const-class v2, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/unipay/request/UnipayMPInfo;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    .line 88
    const-class v2, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/unipay/request/UnipayExtendInfo;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->tokenType:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayGoodsRequest;->reserv:Ljava/lang/String;

    .line 94
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayGoodsRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayGoodsRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayGoodsRequest;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 100
    new-array v0, p1, [Lcom/tencent/unipay/request/UnipayGoodsRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayGoodsRequest$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayGoodsRequest;

    move-result-object v0

    return-object v0
.end method
