.class final Lcom/xiaomi/gamecenter/sdk/gam/b;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
    .registers 4

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->index:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->access$002(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->sdkStatus:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->access$102(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->msgResult:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->access$202(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->heartToken:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->access$302(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;Ljava/lang/String;)Ljava/lang/String;

    const-class v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->access$402(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    return-object v1
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/gam/b;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/gam/b;->a(I)[Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    return-object v0
.end method
