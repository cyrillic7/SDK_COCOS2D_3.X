.class final Lcom/baidu/bdgame/sdk/obf/fx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/fx;
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
        "Lcom/baidu/bdgame/sdk/obf/fx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/fx;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/fx;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;-><init>(Lcom/baidu/bdgame/sdk/obf/fx$1;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;I)I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->b(Lcom/baidu/bdgame/sdk/obf/fx;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_24
    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/fx;Z)Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3a

    :goto_2d
    invoke-static {v3, v1}, Lcom/baidu/bdgame/sdk/obf/fx;->b(Lcom/baidu/bdgame/sdk/obf/fx;Z)Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    return-object v3

    :cond_38
    move v0, v2

    .line 132
    goto :goto_24

    :cond_3a
    move v1, v2

    .line 133
    goto :goto_2d
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/fx;
    .registers 3

    .prologue
    .line 139
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/fx;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fx$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/fx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fx$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/fx;

    move-result-object v0

    return-object v0
.end method
