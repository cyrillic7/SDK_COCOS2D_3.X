.class final Lcom/unionpay/mobile/android/utils/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/utils/i;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/utils/i;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/utils/k;->a:Lcom/unionpay/mobile/android/utils/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_4} :catch_33

    const-wide/16 v0, 0x3e8

    :try_start_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_30

    :goto_a
    iget-object v1, p0, Lcom/unionpay/mobile/android/utils/k;->a:Lcom/unionpay/mobile/android/utils/i;

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/unionpay/mobile/android/utils/i;->b()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/unionpay/mobile/android/utils/i;->b()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_1d
    const-string v0, "uppay"

    const-string v2, "se service connection time out"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/k;->a:Lcom/unionpay/mobile/android/utils/i;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/i;->b(Lcom/unionpay/mobile/android/utils/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_4e

    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0

    throw v0
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
