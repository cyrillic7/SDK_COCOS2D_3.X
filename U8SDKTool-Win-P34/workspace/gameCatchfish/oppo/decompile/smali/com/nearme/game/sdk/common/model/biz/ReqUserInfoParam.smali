.class public Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
.super Ljava/lang/Object;
.source "ReqUserInfoParam.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x61c2c375cedc5b28L


# instance fields
.field private mSsoid:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$1;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$1;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->mToken:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->mSsoid:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;->mSsoid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
