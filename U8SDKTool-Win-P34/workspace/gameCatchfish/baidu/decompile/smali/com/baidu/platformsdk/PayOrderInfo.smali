.class public Lcom/baidu/platformsdk/PayOrderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lcom/baidu/platformsdk/PayOrderInfo$1;

    invoke-direct {v0}, Lcom/baidu/platformsdk/PayOrderInfo$1;-><init>()V

    sput-object v0, Lcom/baidu/platformsdk/PayOrderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getCooperatorOrderSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->c:I

    return v0
.end method

.method public getTotalPriceCent()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->d:J

    return-wide v0
.end method

.method public isCooperatorOrderSerialValid()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    :cond_9
    :goto_9
    return v1

    .line 29
    :cond_a
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x80

    if-gt v0, v2, :cond_9

    move v0, v1

    .line 32
    :goto_15
    iget-object v2, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 33
    iget-object v2, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_31

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_9

    .line 32
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 40
    :cond_34
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public setCooperatorOrderSerial(Ljava/lang/String;)V
    .registers 3
    .param p1, "cooperatorOrderSerial"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    .line 45
    if-eqz p1, :cond_a

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    .line 48
    :cond_a
    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "extInfo"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/platformsdk/PayOrderInfo;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/platformsdk/PayOrderInfo;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRatio(I)V
    .registers 2
    .param p1, "ratio"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/baidu/platformsdk/PayOrderInfo;->c:I

    .line 64
    return-void
.end method

.method public setTotalPriceCent(J)V
    .registers 4
    .param p1, "totalPriceCent"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/baidu/platformsdk/PayOrderInfo;->d:J

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-wide v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/baidu/platformsdk/PayOrderInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method
