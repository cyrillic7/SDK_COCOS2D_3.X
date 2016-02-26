.class public Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
.super Ljava/lang/Object;
.source "GameCenterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5d51e6151f2bee12L


# instance fields
.field public app_key:Ljava/lang/String;

.field public app_secret:Ljava/lang/String;

.field public isDebugModel:Z

.field public isOrientationPort:Z

.field public isSingleGame:Z

.field public pkgName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings$1;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings$1;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 15
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 21
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 15
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 25
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    .line 26
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 29
    iput-boolean p5, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getApp_key()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_secret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugModel()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    return v0
.end method

.method public isOrientationPort()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    return v0
.end method

.method public isSingleGame()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    return v0
.end method

.method public setApp_key(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setApp_secret(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDebugModel(Z)V
    .registers 2

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 93
    return-void
.end method

.method public setOrientationPort(Z)V
    .registers 2

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 101
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSingleGame(Z)V
    .registers 2

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    .line 133
    return-void
.end method

.method public setVersionCode(I)V
    .registers 2

    .prologue
    .line 116
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    .line 117
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-eqz v0, :cond_33

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    if-eqz v0, :cond_35

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    if-eqz v0, :cond_37

    :goto_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void

    :cond_33
    move v0, v2

    .line 39
    goto :goto_7

    :cond_35
    move v0, v2

    .line 42
    goto :goto_19

    :cond_37
    move v1, v2

    .line 43
    goto :goto_20
.end method
