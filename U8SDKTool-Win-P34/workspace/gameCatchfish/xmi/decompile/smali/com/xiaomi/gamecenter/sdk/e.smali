.class Lcom/xiaomi/gamecenter/sdk/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/e;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/e;->b:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/e;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/e;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->isValid()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->b:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v1, -0x4653

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_a2
    .catchall {:try_start_1 .. :try_end_16} :catchall_e6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    :goto_26
    return-void

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->b:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v1, -0x4653

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_a2
    .catchall {:try_start_27 .. :try_end_3f} :catchall_e6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_26

    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/e;->d:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miUniPayOnline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/e;->c:Landroid/app/Activity;

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_user_changed(Landroid/app/Activity;I)Z
    invoke-static {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->b:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============Online:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendLogToSDKSerivce(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_91} :catch_a2
    .catchall {:try_start_50 .. :try_end_91} :catchall_e6

    :cond_91
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_26

    :catch_a2
    move-exception v0

    :try_start_a3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============Online ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendLogToSDKSerivce(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_a3 .. :try_end_c2} :catchall_e6

    :try_start_c2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->b:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v1, -0x4653

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cf} :catch_e1
    .catchall {:try_start_c2 .. :try_end_cf} :catchall_e6

    :goto_cf
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto/16 :goto_26

    :catch_e1
    move-exception v0

    :try_start_e2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_cf

    :catchall_e6
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/e;->e:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    throw v0
.end method
