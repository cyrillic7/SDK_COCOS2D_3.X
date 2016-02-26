.class Lcom/tencent/unipay/request/UnipayMonthRequest$1;
.super Ljava/lang/Object;
.source "UnipayMonthRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayMonthRequest;
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
        "Lcom/tencent/unipay/request/UnipayMonthRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayMonthRequest;
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 82
    new-instance v2, Lcom/tencent/unipay/request/UnipayMonthRequest;

    invoke-direct {v2}, Lcom/tencent/unipay/request/UnipayMonthRequest;-><init>()V

    .line 83
    .local v2, "request":Lcom/tencent/unipay/request/UnipayMonthRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->offerId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->openId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->openKey:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->sessionId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->sessionType:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->zoneId:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->pf:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->pfKey:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->resData:[B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->acctType:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->saveValue:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    .line 95
    .local v1, "arry":[Z
    aget-boolean v3, v1, v4

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->isCanChange:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->mallType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->h5Url:Ljava/lang/String;

    .line 98
    const-class v3, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayMPInfo;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    .line 99
    const-class v3, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayExtendInfo;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceCode:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->remark:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 105
    .local v0, "array":[Z
    aget-boolean v3, v0, v4

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->autoPay:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceType:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->reserv:Ljava/lang/String;

    .line 109
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayMonthRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayMonthRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayMonthRequest;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 115
    new-array v0, p1, [Lcom/tencent/unipay/request/UnipayMonthRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayMonthRequest$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayMonthRequest;

    move-result-object v0

    return-object v0
.end method
