.class final Lcom/baidu/platformsdk/BDPlatformSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/BDPlatformSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/platformsdk/BDPlatformSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/BDPlatformSetting;
    .registers 5

    .prologue
    .line 37
    new-instance v1, Lcom/baidu/platformsdk/BDPlatformSetting;

    invoke-direct {v1}, Lcom/baidu/platformsdk/BDPlatformSetting;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformSetting;->setAppID(I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformSetting;->setAppKey(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformSetting;->setDomain(Lcom/baidu/platformsdk/BDPlatformSetting$Domain;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformSetting;->setOrientation(I)V

    .line 42
    return-object v1

    .line 40
    :cond_27
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    goto :goto_1c
.end method

.method public a(I)[Lcom/baidu/platformsdk/BDPlatformSetting;
    .registers 3

    .prologue
    .line 46
    new-array v0, p1, [Lcom/baidu/platformsdk/BDPlatformSetting;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/BDPlatformSetting$1;->a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/BDPlatformSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/BDPlatformSetting$1;->a(I)[Lcom/baidu/platformsdk/BDPlatformSetting;

    move-result-object v0

    return-object v0
.end method
