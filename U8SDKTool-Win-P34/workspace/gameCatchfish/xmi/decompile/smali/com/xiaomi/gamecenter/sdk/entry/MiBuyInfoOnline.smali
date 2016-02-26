.class public Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private cpOrderId:Ljava/lang/String;

.field private cpUserInfo:Ljava/lang/String;

.field private mili:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/i;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/i;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMili()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    return v0
.end method

.method public isValid()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCpUserInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpUserInfo:Ljava/lang/String;

    return-void
.end method

.method public setMiBi(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getMili()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getCpUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
