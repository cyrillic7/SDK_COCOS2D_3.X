.class Lcom/tencent/unipay/request/UnipayNetRequest$1;
.super Ljava/lang/Object;
.source "UnipayNetRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayNetRequest;
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
        "Lcom/tencent/unipay/request/UnipayNetRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayNetRequest;
    .registers 5
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 45
    new-instance v1, Lcom/tencent/unipay/request/UnipayNetRequest;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipayNetRequest;-><init>()V

    .line 46
    .local v1, "request":Lcom/tencent/unipay/request/UnipayNetRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->offerId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->openId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->openKey:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->sessionId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->sessionType:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->zoneId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->pf:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->pfKey:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->resData:[B

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->acctType:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->saveValue:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 58
    .local v0, "arry":[Z
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->isCanChange:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mallType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->h5Url:Ljava/lang/String;

    .line 61
    const-class v2, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/unipay/request/UnipayMPInfo;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    .line 62
    const-class v2, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/unipay/request/UnipayExtendInfo;

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->reqType:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayNetRequest;->reserv:Ljava/lang/String;

    .line 65
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayNetRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayNetRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayNetRequest;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 72
    new-array v0, p1, [Lcom/tencent/unipay/request/UnipayNetRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayNetRequest$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayNetRequest;

    move-result-object v0

    return-object v0
.end method
