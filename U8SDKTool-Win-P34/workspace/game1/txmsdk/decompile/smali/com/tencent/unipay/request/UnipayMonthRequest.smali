.class public Lcom/tencent/unipay/request/UnipayMonthRequest;
.super Lcom/tencent/unipay/request/UnipayPayBaseRequest;
.source "UnipayMonthRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayMonthRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICETYPE_NORMAL:I = 0x1

.field public static final SERVICETYPE_RENEW:I = 0x2

.field public static final SERVICETYPE_UPGRADE:I = 0x3


# instance fields
.field public autoPay:Z

.field public remark:Ljava/lang/String;

.field public serviceCode:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/unipay/request/UnipayMonthRequest$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayMonthRequest$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayMonthRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceCode:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->remark:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->autoPay:Z

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceType:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoPay()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->autoPay:Z

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->autoPay:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 73
    iget v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayMonthRequest;->reserv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
