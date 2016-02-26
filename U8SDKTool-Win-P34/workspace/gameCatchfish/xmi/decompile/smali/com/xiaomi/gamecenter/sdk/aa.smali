.class Lcom/xiaomi/gamecenter/sdk/aa;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_a8
    .catchall {:try_start_1 .. :try_end_1a} :catchall_f8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    :goto_2a
    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miLogin(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    if-eqz v0, :cond_9f

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v1

    const/16 v2, -0x4658

    if-ne v1, v2, :cond_74

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_63} :catch_a8
    .catchall {:try_start_2b .. :try_end_63} :catchall_f8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2a

    :cond_74
    :try_start_74
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8e} :catch_a8
    .catchall {:try_start_74 .. :try_end_8e} :catchall_f8

    :goto_8e
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2a

    :cond_9f
    :try_start_9f
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a7} :catch_a8
    .catchall {:try_start_9f .. :try_end_a7} :catchall_f8

    goto :goto_8e

    :catch_a8
    move-exception v0

    :try_start_a9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_c4
    .catchall {:try_start_a9 .. :try_end_c4} :catchall_f8

    :goto_c4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto/16 :goto_2a

    :cond_d6
    :goto_d6
    :try_start_d6
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isTopActivity(Landroid/app/Activity;)Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1400(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_dd} :catch_eb
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_f8

    move-result v0

    if-nez v0, :cond_10a

    const-wide/16 v0, 0x1f4

    :try_start_e2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e5
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_e5} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_eb
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_f8

    goto :goto_d6

    :catch_e6
    move-exception v0

    :try_start_e7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_eb
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_f8

    goto :goto_d6

    :catch_eb
    move-exception v0

    :try_start_ec
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v2, -0x66

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f7
    .catchall {:try_start_ec .. :try_end_f7} :catchall_f8

    goto :goto_c4

    :catchall_f8
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    throw v0

    :cond_10a
    :try_start_10a
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    goto :goto_c4

    :cond_11e
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_126} :catch_eb
    .catchall {:try_start_10a .. :try_end_126} :catchall_f8

    goto :goto_c4
.end method
