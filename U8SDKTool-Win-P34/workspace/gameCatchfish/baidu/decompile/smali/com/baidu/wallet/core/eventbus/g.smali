.class final Lcom/baidu/wallet/core/eventbus/g;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lcom/baidu/wallet/core/eventbus/f;

.field private final b:I

.field private final c:Lcom/baidu/wallet/core/eventbus/EventBusController;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/eventbus/EventBusController;Landroid/os/Looper;I)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/baidu/wallet/core/eventbus/g;->c:Lcom/baidu/wallet/core/eventbus/EventBusController;

    iput p3, p0, Lcom/baidu/wallet/core/eventbus/g;->b:I

    new-instance v0, Lcom/baidu/wallet/core/eventbus/f;

    invoke-direct {v0}, Lcom/baidu/wallet/core/eventbus/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/g;->a:Lcom/baidu/wallet/core/eventbus/f;

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/baidu/wallet/core/eventbus/b;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)Lcom/baidu/wallet/core/eventbus/b;

    move-result-object v0

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/g;->a:Lcom/baidu/wallet/core/eventbus/f;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/eventbus/f;->a(Lcom/baidu/wallet/core/eventbus/b;)V

    iget-boolean v0, p0, Lcom/baidu/wallet/core/eventbus/g;->d:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/eventbus/g;->d:Z

    invoke-virtual {p0}, Lcom/baidu/wallet/core/eventbus/g;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/eventbus/g;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusException;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/g;->a:Lcom/baidu/wallet/core/eventbus/f;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/eventbus/f;->a()Lcom/baidu/wallet/core/eventbus/b;

    move-result-object v0

    if-nez v0, :cond_1e

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_41

    :try_start_e
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/g;->a:Lcom/baidu/wallet/core/eventbus/f;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/eventbus/f;->a()Lcom/baidu/wallet/core/eventbus/b;

    move-result-object v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/eventbus/g;->d:Z

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_45

    iput-boolean v6, p0, Lcom/baidu/wallet/core/eventbus/g;->d:Z

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_45

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/g;->c:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;->invokeSubscriber(Lcom/baidu/wallet/core/eventbus/b;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget v4, p0, Lcom/baidu/wallet/core/eventbus/g;->b:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/baidu/wallet/core/eventbus/g;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/eventbus/g;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_48

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusException;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    iput-boolean v6, p0, Lcom/baidu/wallet/core/eventbus/g;->d:Z

    throw v0

    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_41

    :cond_48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/eventbus/g;->d:Z

    goto :goto_1c
.end method
