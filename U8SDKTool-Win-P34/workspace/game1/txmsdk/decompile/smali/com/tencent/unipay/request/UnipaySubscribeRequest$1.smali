.class Lcom/tencent/unipay/request/UnipaySubscribeRequest$1;
.super Ljava/lang/Object;
.source "UnipaySubscribeRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipaySubscribeRequest;
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
        "Lcom/tencent/unipay/request/UnipaySubscribeRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 89
    new-instance v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    invoke-direct {v2}, Lcom/tencent/unipay/request/UnipaySubscribeRequest;-><init>()V

    .line 90
    .local v2, "request":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->offerId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->openId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->openKey:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->sessionId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->sessionType:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->zoneId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->pf:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->pfKey:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->resData:[B

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->acctType:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->saveValue:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    .line 102
    .local v1, "arry":[Z
    aget-boolean v3, v1, v4

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->isCanChange:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mallType:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->h5Url:Ljava/lang/String;

    .line 105
    const-class v3, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayMPInfo;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    .line 106
    const-class v3, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayExtendInfo;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceCode:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->remark:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 112
    .local v0, "array":[Z
    aget-boolean v3, v0, v4

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->autoPay:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->productId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->reserv:Ljava/lang/String;

    .line 117
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipaySubscribeRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 123
    new-array v0, p1, [Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipaySubscribeRequest$1;->newArray(I)[Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    move-result-object v0

    return-object v0
.end method
