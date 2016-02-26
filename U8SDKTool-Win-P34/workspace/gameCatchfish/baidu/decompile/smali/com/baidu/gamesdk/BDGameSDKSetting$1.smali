.class final Lcom/baidu/gamesdk/BDGameSDKSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/gamesdk/BDGameSDKSetting;
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
        "Lcom/baidu/gamesdk/BDGameSDKSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/gamesdk/BDGameSDKSetting;
    .registers 4

    .prologue
    .line 97
    new-instance v1, Lcom/baidu/gamesdk/BDGameSDKSetting;

    invoke-direct {v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppID(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->DEBUG:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    :goto_1b
    invoke-virtual {v1, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setDomain(Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    :goto_26
    invoke-virtual {v1, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setOrientation(Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;)V

    .line 102
    return-object v1

    .line 100
    :cond_2a
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->RELEASE:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    goto :goto_1b

    .line 101
    :cond_2d
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    goto :goto_26
.end method

.method public a(I)[Lcom/baidu/gamesdk/BDGameSDKSetting;
    .registers 3

    .prologue
    .line 106
    new-array v0, p1, [Lcom/baidu/gamesdk/BDGameSDKSetting;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/baidu/gamesdk/BDGameSDKSetting$1;->a(Landroid/os/Parcel;)Lcom/baidu/gamesdk/BDGameSDKSetting;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/baidu/gamesdk/BDGameSDKSetting$1;->a(I)[Lcom/baidu/gamesdk/BDGameSDKSetting;

    move-result-object v0

    return-object v0
.end method
