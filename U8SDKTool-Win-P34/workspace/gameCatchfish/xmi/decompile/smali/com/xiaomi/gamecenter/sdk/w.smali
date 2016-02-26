.class Lcom/xiaomi/gamecenter/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/w;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/w;->b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/w;->a:Landroid/app/Activity;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->appExit()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/w;->b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

    invoke-interface {v1, v0}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_33} :catch_3f
    .catchall {:try_start_11 .. :try_end_33} :catchall_4f

    :cond_33
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_10

    :catch_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4f

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_10

    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/w;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    throw v0
.end method
