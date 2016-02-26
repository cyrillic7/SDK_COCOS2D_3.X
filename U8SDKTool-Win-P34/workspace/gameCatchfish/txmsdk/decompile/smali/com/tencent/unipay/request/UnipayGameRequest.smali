.class public Lcom/tencent/unipay/request/UnipayGameRequest;
.super Lcom/tencent/unipay/request/UnipayPayBaseRequest;
.source "UnipayGameRequest.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayGameRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/tencent/unipay/request/UnipayGameRequest$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayGameRequest$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayGameRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayGameRequest;->reserv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
