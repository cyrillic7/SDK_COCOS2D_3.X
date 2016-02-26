.class public Lcom/tencent/unipay/request/UnipayGoodsRequest;
.super Lcom/tencent/unipay/request/UnipayPayBaseRequest;
.source "UnipayGoodsRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayGoodsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final GETTOKENTYPE_CLIENT:I = 0x3

.field public static final GETTOKENTYPE_SDK:I = 0x2

.field public static final GETTOKENTYPE_SERVER:I = 0x1


# instance fields
.field public goodsTokenUrl:Ljava/lang/String;

.field public prodcutId:Ljava/lang/String;

.field public tokenType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/tencent/unipay/request/UnipayGoodsRequest$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayGoodsRequest$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->tokenType:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->reserv:Ljava/lang/String;

    .line 47
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

.method public getGoodsTokenUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProdcutId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->prodcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->tokenType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->tokenType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->prodcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayGoodsRequest;->reserv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
