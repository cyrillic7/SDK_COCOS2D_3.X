.class final Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings$1;
.super Ljava/lang/Object;
.source "GameCenterSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    new-instance v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    invoke-direct {v3}, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_40

    move v0, v1

    :goto_e
    iput-boolean v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_42

    move v0, v1

    :goto_23
    iput-boolean v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_44

    :goto_2b
    iput-boolean v1, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;

    .line 62
    return-object v3

    :cond_40
    move v0, v2

    .line 54
    goto :goto_e

    :cond_42
    move v0, v2

    .line 57
    goto :goto_23

    :cond_44
    move v1, v2

    .line 58
    goto :goto_2b
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
    .registers 3

    .prologue
    .line 67
    new-array v0, p1, [Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings$1;->newArray(I)[Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    move-result-object v0

    return-object v0
.end method
