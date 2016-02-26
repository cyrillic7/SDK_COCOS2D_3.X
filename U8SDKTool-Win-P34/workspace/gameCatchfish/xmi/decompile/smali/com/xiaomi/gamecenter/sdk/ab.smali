.class Lcom/xiaomi/gamecenter/sdk/ab;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x67

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_67
    .catchall {:try_start_1 .. :try_end_1e} :catchall_8a

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miLogout(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x68

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_56} :catch_67
    .catchall {:try_start_2f .. :try_end_56} :catchall_8a

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2e

    :catch_67
    move-exception v0

    :try_start_68
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v2, -0x67

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_8a

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2e

    :catchall_8a
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ab;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    throw v0
.end method
