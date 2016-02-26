.class public Lcom/tencent/unipay/request/UnipayNetRequest;
.super Lcom/tencent/unipay/request/UnipayPayBaseRequest;
.source "UnipayNetRequest.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayNetRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static NET_REQ_MP:Ljava/lang/String;


# instance fields
.field public reqType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "mp"

    sput-object v0, Lcom/tencent/unipay/request/UnipayNetRequest;->NET_REQ_MP:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/tencent/unipay/request/UnipayNetRequest$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayNetRequest$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayNetRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayNetRequest;->reqType:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getReqType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayNetRequest;->reqType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayNetRequest;->reqType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayNetRequest;->reserv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
