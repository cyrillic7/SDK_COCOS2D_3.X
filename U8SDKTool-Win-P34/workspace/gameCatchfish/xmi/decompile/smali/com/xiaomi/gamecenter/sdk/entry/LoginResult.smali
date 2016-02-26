.class public Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

.field private errcode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/c;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/c;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    return p1
.end method

.method static synthetic access$102(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-object v0
.end method

.method public getErrcode()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    return v0
.end method

.method public setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    return-void
.end method

.method public setErrcode(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->errcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
