.class public abstract Lcom/tencent/unipay/request/UnipayPayBaseRequest;
.super Ljava/lang/Object;
.source "UnipayPayBaseRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayPayBaseRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final MALL_TYPE_DEFAULT:I = 0x0

.field public static final MALL_TYPE_GROUPBUY:I = 0x1

.field public static final MALL_TYPE_VMALL:I = 0x2

.field protected static createBundle:Landroid/os/Bundle;


# instance fields
.field public acctType:Ljava/lang/String;

.field protected bundle:Landroid/os/Bundle;

.field public extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

.field public h5Url:Ljava/lang/String;

.field public isCanChange:Z

.field public mallType:I

.field public mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

.field public offerId:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public openKey:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public resData:[B

.field public resId:I

.field public reserv:Ljava/lang/String;

.field public saveValue:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public sessionType:Ljava/lang/String;

.field public zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 150
    new-instance v0, Lcom/tencent/unipay/request/UnipayPayBaseRequest$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayPayBaseRequest$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mallType:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->h5Url:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->offerId:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->openId:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->openKey:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->sessionId:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->sessionType:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->zoneId:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->pf:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->pfKey:Ljava/lang/String;

    .line 138
    iput v1, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    .line 140
    const-string v0, "common"

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->acctType:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->saveValue:Ljava/lang/String;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->isCanChange:Z

    .line 143
    iput v1, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mallType:I

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->h5Url:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayMPInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    .line 146
    new-instance v0, Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayExtendInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    .line 147
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAcctType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->acctType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->discountUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoutId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->discoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->drmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCanChange()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->isCanChange:Z

    return v0
.end method

.method public getMallType()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mallType:I

    return v0
.end method

.method public getOfferId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->openKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayMPInfo;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    return-object v0
.end method

.method public getResId()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resId:I

    return v0
.end method

.method public getReserv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->reserv:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->saveValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->sessionType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowListOtherNum()Z
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v0, v0, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    return v0
.end method

.method public getShowNum()Z
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-boolean v0, v0, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    iget-object v0, v0, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->openId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->openKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->sessionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->zoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->pf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->pfKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->resData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->acctType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->saveValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->isCanChange:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 193
    iget v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->h5Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->mpInfo:Lcom/tencent/unipay/request/UnipayMPInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 196
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->extendInfo:Lcom/tencent/unipay/request/UnipayExtendInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    return-void
.end method
