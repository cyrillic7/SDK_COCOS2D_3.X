.class Lcom/tencent/unipay/request/UnipayExtendInfo$1;
.super Ljava/lang/Object;
.source "UnipayExtendInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayExtendInfo;
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
        "Lcom/tencent/unipay/request/UnipayExtendInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayExtendInfo;
    .registers 5
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 46
    new-instance v1, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-direct {v1}, Lcom/tencent/unipay/request/UnipayExtendInfo;-><init>()V

    .line 47
    .local v1, "extendInfo":Lcom/tencent/unipay/request/UnipayExtendInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 49
    .local v0, "array":[Z
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 50
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    iput-boolean v2, v1, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 52
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayExtendInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayExtendInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayExtendInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 58
    new-array v0, p1, [Lcom/tencent/unipay/request/UnipayExtendInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayExtendInfo$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayExtendInfo;

    move-result-object v0

    return-object v0
.end method
