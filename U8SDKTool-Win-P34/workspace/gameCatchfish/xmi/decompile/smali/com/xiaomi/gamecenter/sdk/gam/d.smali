.class final Lcom/xiaomi/gamecenter/sdk/gam/d;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$002(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->gameid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$102(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->appname:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$202(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownerid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$302(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlownername:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$402(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mltitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$502(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlcontent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$602(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourcename:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$702(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlsourceurl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$802(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->mlaltmsg:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$902(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->rootMiliaoInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->access$1002(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/gam/d;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/gam/d;->a(I)[Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v0

    return-object v0
.end method
