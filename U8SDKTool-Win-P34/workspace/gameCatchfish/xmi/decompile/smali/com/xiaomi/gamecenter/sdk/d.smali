.class Lcom/xiaomi/gamecenter/sdk/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/c;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, -0x2

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->ConnServiceNew(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$302(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->registCallback(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    :goto_42
    const-string v0, ">>>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_62} :catch_8b

    :goto_62
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6b
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_9d

    return-void

    :cond_78
    const/4 v1, 0x2

    if-ne v0, v1, :cond_94

    :try_start_7b
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, -0x2

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$302(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8a} :catch_8b

    goto :goto_42

    :catch_8b
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I
    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$302(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I

    goto :goto_62

    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/d;->a:Lcom/xiaomi/gamecenter/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/c;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, -0x2

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$302(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_9c} :catch_8b

    goto :goto_42

    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0
.end method
