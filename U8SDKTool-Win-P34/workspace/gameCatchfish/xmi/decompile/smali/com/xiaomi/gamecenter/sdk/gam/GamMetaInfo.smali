.class public Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private executeurl:Ljava/lang/String;

.field private os:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/gam/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/gam/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->os:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->executeurl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExecuteurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->executeurl:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public setExecuteurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->executeurl:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->os:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->os:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->executeurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
