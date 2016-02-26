.class final Lcom/xiaomi/gamecenter/sdk/entry/e;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    .registers 5

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/e;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appId:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appKey:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->cpMark:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->weakAccount:Z
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/PayMode;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$902(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pkgLabel:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->pid:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->uid:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "com.xiaomi.gamecenter.sdk.IServiceCallback"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->callback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/IServiceCallback;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->SDK_INDEX:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->newAppId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->isSocialGame:Z
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->access$1802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    return-object v1
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/e;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/e;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v0

    return-object v0
.end method
