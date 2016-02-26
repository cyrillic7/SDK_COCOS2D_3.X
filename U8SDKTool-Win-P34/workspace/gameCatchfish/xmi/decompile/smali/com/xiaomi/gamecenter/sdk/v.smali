.class Lcom/xiaomi/gamecenter/sdk/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/v;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/v;->b:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->b:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    const/16 v1, -0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_72
    .catchall {:try_start_1 .. :try_end_1a} :catchall_9a

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    :goto_2a
    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->getVipList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/v;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getSdkStatus()I

    move-result v3

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_user_changed(Landroid/app/Activity;I)Z
    invoke-static {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->b:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getSdkStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getMsgResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_58} :catch_72
    .catchall {:try_start_2b .. :try_end_58} :catchall_9a

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2a

    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->b:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    const/16 v1, -0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_72
    .catchall {:try_start_69 .. :try_end_71} :catchall_9a

    goto :goto_58

    :catch_72
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_9a

    :try_start_76
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->b:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    const/16 v1, -0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_84} :catch_95
    .catchall {:try_start_76 .. :try_end_84} :catchall_9a

    :goto_84
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2a

    :catch_95
    move-exception v0

    :try_start_96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_84

    :catchall_9a
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/v;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    throw v0
.end method
