.class final Lcom/xiaomi/gamecenter/sdk/entry/f;
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .registers 4

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->appId:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->appKey:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->appType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->cpMark:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$302(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->orientation:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$402(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->weakAccount:Z
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$502(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PayMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->payMode:Lcom/xiaomi/gamecenter/sdk/entry/PayMode;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$602(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/PayMode;)Lcom/xiaomi/gamecenter/sdk/entry/PayMode;

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->account:Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$702(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->SDK_INDEX:I
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$802(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->newAppId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$902(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->debugMode:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$1002(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->isSocialGame:Z
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$1102(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    move-result-object v0

    # setter for: Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->miGravity:Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->access$1202(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;)Lcom/xiaomi/gamecenter/sdk/entry/MiGravity;

    return-object v1
.end method

.method public a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .registers 3

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/f;->a(Landroid/os/Parcel;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/f;->a(I)[Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    return-object v0
.end method
