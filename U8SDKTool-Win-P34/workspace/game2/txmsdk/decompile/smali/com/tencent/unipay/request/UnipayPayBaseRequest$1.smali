.class Lcom/tencent/unipay/request/UnipayPayBaseRequest$1;
.super Ljava/lang/Object;
.source "UnipayPayBaseRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/request/UnipayPayBaseRequest;
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
        "Lcom/tencent/unipay/request/UnipayPayBaseRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayPayBaseRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/unipay/request/UnipayPayBaseRequest$1;->newArray(I)[Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    move-result-object v0

    return-object v0
.end method
