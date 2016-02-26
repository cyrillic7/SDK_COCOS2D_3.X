.class Lcom/tencent/unipay/request/UnipayGameRequest$1;
.super Ljava/lang/Object;
.source "UnipayGameRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayGameRequest;
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
        "Lcom/tencent/unipay/request/UnipayGameRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayGameRequest;
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/16 v4, 0x10

    .line 51
    new-instance v2, Lcom/tencent/unipay/request/UnipayGameRequest;

    invoke-direct {v2}, Lcom/tencent/unipay/request/UnipayGameRequest;-><init>()V

    .line 52
    .local v2, "request":Lcom/tencent/unipay/request/UnipayGameRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->offerId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->openId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->pf:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->pfKey:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->resData:[B

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->acctType:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->saveValue:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 64
    .local v0, "arry":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->isCanChange:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->mallType:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->h5Url:Ljava/lang/String;

    .line 67
    const-class v3, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayMPInfo;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    .line 68
    const-class v3, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayExtendInfo;

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 70
    .local v1, "position":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-le v3, v4, :cond_9f

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->reserv:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-eq v3, v4, :cond_9f

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_9f

    .line 75
    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->reserv:Ljava/lang/String;

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    :cond_9f
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayGameRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayGameRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayGameRequest;
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayGameRequest$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayGameRequest;

    move-result-object v0

    return-object v0
.end method
