.class final Lcom/baidu/bdgame/sdk/obf/ah$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ah;
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
        "Lcom/baidu/bdgame/sdk/obf/ah;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ah;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ah;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ah;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ah;->b(Ljava/lang/String;)V

    .line 55
    return-object v0
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/ah;
    .registers 3

    .prologue
    .line 59
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/ah;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ah$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ah$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v0

    return-object v0
.end method
