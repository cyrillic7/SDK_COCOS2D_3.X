.class final Lcom/xiaomi/gamecenter/sdk/entry/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;
    .registers 4

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->access$002(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;I)I

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object v1
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/c;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/c;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v0

    return-object v0
.end method
