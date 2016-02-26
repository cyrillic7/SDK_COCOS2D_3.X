.class Lcom/tencent/unipay/plugsdk/UnipayResponse$1;
.super Ljava/lang/Object;
.source "UnipayResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/plugsdk/UnipayResponse;
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
        "Lcom/tencent/unipay/plugsdk/UnipayResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/plugsdk/UnipayResponse;
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 185
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;

    invoke-direct {v0}, Lcom/tencent/unipay/plugsdk/UnipayResponse;-><init>()V

    .line 186
    .local v0, "response":Lcom/tencent/unipay/plugsdk/UnipayResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultInerCode:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->realSaveNum:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    .line 198
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/plugsdk/UnipayResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/plugsdk/UnipayResponse;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 204
    new-array v0, p1, [Lcom/tencent/unipay/plugsdk/UnipayResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/plugsdk/UnipayResponse$1;->newArray(I)[Lcom/tencent/unipay/plugsdk/UnipayResponse;

    move-result-object v0

    return-object v0
.end method
