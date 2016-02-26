.class public Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private amount:I

.field private count:I

.field private cpOrderId:Ljava/lang/String;

.field private cpUserInfo:Ljava/lang/String;

.field private extraInfo:Landroid/os/Bundle;

.field private miBuyInfoVersion:I

.field private productCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/g;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/g;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    return v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    return v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->extraInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    const/16 v1, 0x270f

    if-gt v0, v1, :cond_14

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public setAmount(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    return-void
.end method

.method public setCount(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCpUserInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->extraInfo:Landroid/os/Bundle;

    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->productCode:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->productCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpUserInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->extraInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
