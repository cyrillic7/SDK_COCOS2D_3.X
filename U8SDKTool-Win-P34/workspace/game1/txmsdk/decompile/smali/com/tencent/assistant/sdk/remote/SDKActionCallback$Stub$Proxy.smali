.class Lcom/tencent/assistant/sdk/remote/SDKActionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/assistant/sdk/remote/SDKActionCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/tencent/assistant/sdk/remote/SDKActionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/assistant/sdk/remote/SDKActionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "com.tencent.assistant.sdk.remote.SDKActionCallback"

    return-object v0
.end method

.method public onActionResult([B)V
    .registers 7

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    :try_start_4
    const-string v0, "com.tencent.assistant.sdk.remote.SDKActionCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 77
    iget-object v0, p0, Lcom/tencent/assistant/sdk/remote/SDKActionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    return-void

    .line 80
    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
