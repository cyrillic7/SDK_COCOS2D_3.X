.class final Lcom/xiaomi/gamecenter/sdk/entry/d;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .registers 6

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->uid:J
    invoke-static {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->access$002(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->sessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->nikename:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/d;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/d;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    return-object v0
.end method
