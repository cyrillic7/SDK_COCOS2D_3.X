.class public Lcom/baidu/platformsdk/OrderStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/OrderStatus$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:I = -0x1

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/baidu/platformsdk/OrderStatus$Status;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Lcom/baidu/platformsdk/OrderStatus$1;

    invoke-direct {v0}, Lcom/baidu/platformsdk/OrderStatus$1;-><init>()V

    sput-object v0, Lcom/baidu/platformsdk/OrderStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getCpOrderSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderStatus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPriceCent()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/baidu/platformsdk/OrderStatus;->b:J

    return-wide v0
.end method

.method public getOrderStatus()Lcom/baidu/platformsdk/OrderStatus$Status;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderStatus;->c:Lcom/baidu/platformsdk/OrderStatus$Status;

    return-object v0
.end method

.method public getStatusDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderStatus;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCpOrderSerial(Ljava/lang/String;)V
    .registers 2
    .param p1, "cpOrderSerial"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/platformsdk/OrderStatus;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setOrderPriceCent(J)V
    .registers 4
    .param p1, "orderPriceCent"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/baidu/platformsdk/OrderStatus;->b:J

    .line 36
    return-void
.end method

.method public setStatus(Lcom/baidu/platformsdk/OrderStatus$Status;)V
    .registers 2
    .param p1, "status"    # Lcom/baidu/platformsdk/OrderStatus$Status;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/platformsdk/OrderStatus;->c:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 42
    return-void
.end method

.method public setStatusDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "statusDesc"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/platformsdk/OrderStatus;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderStatus;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-wide v0, p0, Lcom/baidu/platformsdk/OrderStatus;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    const/4 v0, -0x1

    .line 58
    iget-object v1, p0, Lcom/baidu/platformsdk/OrderStatus;->c:Lcom/baidu/platformsdk/OrderStatus$Status;

    sget-object v2, Lcom/baidu/platformsdk/OrderStatus$Status;->Submit:Lcom/baidu/platformsdk/OrderStatus$Status;

    if-ne v1, v2, :cond_1b

    .line 59
    const/4 v0, 0x0

    .line 66
    :cond_12
    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderStatus;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void

    .line 60
    :cond_1b
    iget-object v1, p0, Lcom/baidu/platformsdk/OrderStatus;->c:Lcom/baidu/platformsdk/OrderStatus$Status;

    sget-object v2, Lcom/baidu/platformsdk/OrderStatus$Status;->Success:Lcom/baidu/platformsdk/OrderStatus$Status;

    if-ne v1, v2, :cond_23

    .line 61
    const/4 v0, 0x1

    goto :goto_12

    .line 62
    :cond_23
    iget-object v1, p0, Lcom/baidu/platformsdk/OrderStatus;->c:Lcom/baidu/platformsdk/OrderStatus$Status;

    sget-object v2, Lcom/baidu/platformsdk/OrderStatus$Status;->Fail:Lcom/baidu/platformsdk/OrderStatus$Status;

    if-ne v1, v2, :cond_12

    .line 63
    const/4 v0, 0x2

    goto :goto_12
.end method
