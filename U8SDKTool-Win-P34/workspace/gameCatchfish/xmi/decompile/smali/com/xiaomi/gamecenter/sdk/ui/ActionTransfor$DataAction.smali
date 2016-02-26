.class public Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

.field public c:Landroid/os/Bundle;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
