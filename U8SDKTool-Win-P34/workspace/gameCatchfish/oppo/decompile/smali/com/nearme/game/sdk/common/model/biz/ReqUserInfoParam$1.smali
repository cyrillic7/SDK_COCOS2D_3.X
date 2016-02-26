.class final Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$1;
.super Ljava/lang/Object;
.source "ReqUserInfoParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
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
        "Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    invoke-direct {v2, v0, v1}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;
    .registers 3

    .prologue
    .line 42
    new-array v0, p1, [Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam$1;->newArray(I)[Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;

    move-result-object v0

    return-object v0
.end method
