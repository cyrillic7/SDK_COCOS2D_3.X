.class public final Lcom/baidu/platformsdk/BDPlatformSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/BDPlatformSetting$Domain;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/platformsdk/BDPlatformSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformSetting$1;

    invoke-direct {v0}, Lcom/baidu/platformsdk/BDPlatformSetting$1;-><init>()V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->c:I

    .line 14
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    iput-object v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->d:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getAppID()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->a:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Lcom/baidu/platformsdk/BDPlatformSetting$Domain;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->d:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->c:I

    return v0
.end method

.method public setAppID(I)V
    .registers 2
    .param p1, "appID"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->a:I

    .line 64
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDomain(Lcom/baidu/platformsdk/BDPlatformSetting$Domain;)V
    .registers 2
    .param p1, "domain"    # Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->d:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 56
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_8

    .line 88
    :goto_3
    :pswitch_3
    return-void

    .line 83
    :pswitch_4
    iput p1, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->c:I

    goto :goto_3

    .line 79
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->d:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/baidu/platformsdk/BDPlatformSetting;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void

    .line 30
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method
