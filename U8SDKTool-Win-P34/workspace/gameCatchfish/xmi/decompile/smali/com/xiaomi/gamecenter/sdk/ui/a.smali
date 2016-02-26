.class final Lcom/xiaomi/gamecenter/sdk/ui/a;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;
    .registers 4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/a;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/a;->a(I)[Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v0

    return-object v0
.end method
