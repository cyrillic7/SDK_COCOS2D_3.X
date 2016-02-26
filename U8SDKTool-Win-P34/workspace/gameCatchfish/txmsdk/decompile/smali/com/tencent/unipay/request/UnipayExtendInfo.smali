.class public Lcom/tencent/unipay/request/UnipayExtendInfo;
.super Ljava/lang/Object;
.source "UnipayExtendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/request/UnipayExtendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isShowListOtherNum:Z

.field public isShowNum:Z

.field public unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/unipay/request/UnipayExtendInfo$1;

    invoke-direct {v0}, Lcom/tencent/unipay/request/UnipayExtendInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/request/UnipayExtendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    .line 24
    iput-boolean v1, p0, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/unipay/request/UnipayExtendInfo;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowNum:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tencent/unipay/request/UnipayExtendInfo;->isShowListOtherNum:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 39
    return-void
.end method
