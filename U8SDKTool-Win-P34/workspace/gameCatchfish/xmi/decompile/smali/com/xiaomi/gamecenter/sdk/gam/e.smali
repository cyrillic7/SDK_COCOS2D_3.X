.class final Lcom/xiaomi/gamecenter/sdk/gam/e;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->access$002(Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->scoreValue:I
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->access$102(Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I)I

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/gam/e;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/gam/e;->a(I)[Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    move-result-object v0

    return-object v0
.end method
