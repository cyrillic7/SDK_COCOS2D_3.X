.class public Lcom/tencent/unipay/request/UnipaySubscribeRequest;
.super Lcom/tencent/unipay/request/UnipayPayBaseRequest;
.source "UnipaySubscribeRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipaySubscribeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICETYPE_NORMAL:I = 0x1

.field public static final SERVICETYPE_RENEW:I = 0x2

.field public static final SERVICETYPE_UPGRADE:I = 0x3


# instance fields
.field public autoPay:Z

.field public productId:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public serviceCode:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lcom/tencent/unipay/request/UnipaySubscribeRequest$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipaySubscribeRequest$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->productId:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceCode:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->remark:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->autoPay:Z

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceType:I

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoPay()Z
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->autoPay:Z

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->autoPay:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 79
    iget v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->reserv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
