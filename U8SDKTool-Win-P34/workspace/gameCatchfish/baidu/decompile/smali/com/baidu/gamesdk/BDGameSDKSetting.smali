.class public final Lcom/baidu/gamesdk/BDGameSDKSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;,
        Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/gamesdk/BDGameSDKSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

.field private d:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/baidu/gamesdk/BDGameSDKSetting$1;

    invoke-direct {v0}, Lcom/baidu/gamesdk/BDGameSDKSetting$1;-><init>()V

    sput-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    iput-object v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->c:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 25
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->RELEASE:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    iput-object v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->d:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getAppID()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->a:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->d:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    return-object v0
.end method

.method public getOrientation()Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->c:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    return-object v0
.end method

.method public setAppID(I)V
    .registers 2
    .param p1, "appID"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->a:I

    .line 56
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDomain(Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;)V
    .registers 2
    .param p1, "domain"    # Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->d:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    .line 72
    return-void
.end method

.method public setOrientation(Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;)V
    .registers 2
    .param p1, "orientation"    # Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->c:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    iget v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->DEBUG:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    iget-object v3, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->d:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    invoke-virtual {v0, v3}, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    iget-object v3, p0, Lcom/baidu/gamesdk/BDGameSDKSetting;->c:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    invoke-virtual {v0, v3}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void

    :cond_28
    move v0, v2

    .line 91
    goto :goto_17

    :cond_2a
    move v1, v2

    .line 92
    goto :goto_24
.end method
