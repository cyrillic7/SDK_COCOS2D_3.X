.class public final Lcom/baidu/platformsdk/BDPlatformUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/BDPlatformUser$2;,
        Lcom/baidu/platformsdk/BDPlatformUser$UserType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/platformsdk/BDPlatformUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformUser$1;

    invoke-direct {v0}, Lcom/baidu/platformsdk/BDPlatformUser$1;-><init>()V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getBaiduAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getBaiduBDUSS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->h:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 29
    const-string v0, ""

    .line 31
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->h:Ljava/lang/String;

    goto :goto_6
.end method

.method public getBaiduOAuthAccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBaiduOAuthUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->a:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    return-object v0
.end method

.method public isGuest()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->c:Z

    return v0
.end method

.method public isThirdPartyUser()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->d:Z

    return v0
.end method

.method public setBaiduAccountName(Ljava/lang/String;)V
    .registers 2
    .param p1, "baiduAccountName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->i:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setBaiduBDUSS(Ljava/lang/String;)V
    .registers 2
    .param p1, "baiduBDUSS"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->h:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setBaiduOAuthAccessToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->e:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setBaiduOAuthUid(Ljava/lang/String;)V
    .registers 2
    .param p1, "baiduOAuthUid"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->g:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->f:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setGuest(Z)V
    .registers 2
    .param p1, "isGuest"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->c:Z

    .line 76
    return-void
.end method

.method public setThirdPartyUser(Z)V
    .registers 2
    .param p1, "isThirdPartyUser"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->d:Z

    .line 86
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->b:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V
    .registers 2
    .param p1, "userType"    # Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformUser;->a:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    .line 112
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$2;->a:[I

    iget-object v3, p0, Lcom/baidu/platformsdk/BDPlatformUser;->a:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v3}, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_4e

    move v0, v1

    .line 129
    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->c:Z

    if-eqz v0, :cond_49

    move v0, v2

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->d:Z

    if-eqz v0, :cond_4b

    :goto_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformUser;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return-void

    :pswitch_41
    move v0, v1

    .line 115
    goto :goto_10

    :pswitch_43
    move v0, v2

    .line 118
    goto :goto_10

    .line 120
    :pswitch_45
    const/4 v0, 0x2

    .line 121
    goto :goto_10

    .line 123
    :pswitch_47
    const/4 v0, 0x3

    .line 124
    goto :goto_10

    :cond_49
    move v0, v1

    .line 131
    goto :goto_1d

    :cond_4b
    move v2, v1

    .line 134
    goto :goto_2e

    .line 112
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_43
        :pswitch_45
        :pswitch_47
    .end packed-switch
.end method
