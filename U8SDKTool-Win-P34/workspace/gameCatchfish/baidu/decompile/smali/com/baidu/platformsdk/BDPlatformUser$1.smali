.class final Lcom/baidu/platformsdk/BDPlatformUser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/BDPlatformUser;
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
        "Lcom/baidu/platformsdk/BDPlatformUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    new-instance v3, Lcom/baidu/platformsdk/BDPlatformUser;

    invoke-direct {v3}, Lcom/baidu/platformsdk/BDPlatformUser;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    packed-switch v0, :pswitch_data_6e

    .line 158
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    .line 161
    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUid(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_69

    move v0, v1

    :goto_21
    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setGuest(Z)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduOAuthAccessToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setDisplayName(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6b

    :goto_38
    invoke-virtual {v3, v1}, Lcom/baidu/platformsdk/BDPlatformUser;->setThirdPartyUser(Z)V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduOAuthUid(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduBDUSS(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduAccountName(Ljava/lang/String;)V

    .line 169
    return-object v3

    .line 146
    :pswitch_51
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    goto :goto_13

    .line 149
    :pswitch_57
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    goto :goto_13

    .line 152
    :pswitch_5d
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    goto :goto_13

    .line 155
    :pswitch_63
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    goto :goto_13

    :cond_69
    move v0, v2

    .line 162
    goto :goto_21

    :cond_6b
    move v1, v2

    .line 165
    goto :goto_38

    .line 144
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_63
    .end packed-switch
.end method

.method public a(I)[Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 3

    .prologue
    .line 173
    new-array v0, p1, [Lcom/baidu/platformsdk/BDPlatformUser;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/BDPlatformUser$1;->a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/BDPlatformUser$1;->a(I)[Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    return-object v0
.end method
