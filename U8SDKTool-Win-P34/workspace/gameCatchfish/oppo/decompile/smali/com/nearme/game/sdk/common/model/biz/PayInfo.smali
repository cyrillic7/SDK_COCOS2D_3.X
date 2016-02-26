.class public Lcom/nearme/game/sdk/common/model/biz/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nearme/game/sdk/common/model/biz/PayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x608e2245593cf54L


# instance fields
.field private amount:I

.field private attach:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field private order:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field protected voucherCount:I

.field protected voucherId:I

.field protected voucherType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/PayInfo$1;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo$1;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productName:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productDesc:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->callbackUrl:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid order when create PayInfo."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1d
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->order:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->attach:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->amount:I

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->amount:I

    return v0
.end method

.method public getAttach()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->attach:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherCount()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherCount:I

    return v0
.end method

.method public getVoucherId()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherId:I

    return v0
.end method

.method public getVoucherType()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherType:I

    return v0
.end method

.method public setAmount(I)V
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->amount:I

    .line 94
    return-void
.end method

.method public setAttach(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->attach:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->callbackUrl:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->order:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productDesc:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setVoucherCount(I)V
    .registers 2

    .prologue
    .line 141
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherCount:I

    .line 142
    return-void
.end method

.method public setVoucherId(I)V
    .registers 2

    .prologue
    .line 125
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherId:I

    .line 126
    return-void
.end method

.method public setVoucherType(I)V
    .registers 2

    .prologue
    .line 133
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherType:I

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getAttach()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getAmount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getVoucherId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getVoucherType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getVoucherCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
