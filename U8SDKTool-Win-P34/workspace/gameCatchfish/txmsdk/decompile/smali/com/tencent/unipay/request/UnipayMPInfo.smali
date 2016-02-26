.class public Lcom/tencent/unipay/request/UnipayMPInfo;
.super Ljava/lang/Object;
.source "UnipayMPInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayMPInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public discountType:Ljava/lang/String;

.field public discountUrl:Ljava/lang/String;

.field public discoutId:Ljava/lang/String;

.field public drmInfo:Ljava/lang/String;

.field public extras:Ljava/lang/String;

.field public payChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/tencent/unipay/request/UnipayMPInfo$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayMPInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayMPInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
