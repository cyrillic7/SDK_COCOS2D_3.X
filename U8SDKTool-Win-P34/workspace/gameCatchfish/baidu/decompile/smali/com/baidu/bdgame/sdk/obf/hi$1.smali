.class final Lcom/baidu/bdgame/sdk/obf/hi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/hi;
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
        "Lcom/baidu/bdgame/sdk/obf/hi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/hi;
    .registers 4

    .prologue
    .line 65
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hi;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/hi;-><init>()V

    .line 66
    const-class v1, Lcom/baidu/bdgame/sdk/obf/hh;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hi;->a(Lcom/baidu/bdgame/sdk/obf/hi;Ljava/util/List;)Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hi;->a(Lcom/baidu/bdgame/sdk/obf/hi;I)I

    .line 68
    return-object v0
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/hi;
    .registers 3

    .prologue
    .line 59
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/hi;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hi$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/hi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hi$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/hi;

    move-result-object v0

    return-object v0
.end method
