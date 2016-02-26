.class Lcom/tencent/tmassistantbase/util/TMLog$2$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantbase/util/TMLog$2;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantbase/util/TMLog$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 453
    iput-object p1, p0, Lcom/tencent/tmassistantbase/util/TMLog$2$1;->a:Lcom/tencent/tmassistantbase/util/TMLog$2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 457
    :try_start_10
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->a()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_4e

    .line 459
    :try_start_13
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_48

    .line 463
    :goto_1b
    :try_start_1b
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x3a98

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 464
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/tencent/tmassistantbase/util/TMLog;->myProcessId:I

    .line 465
    const-string v1, "TMLog"

    const-string v2, "TMLog init start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->b()V

    .line 467
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->d:Ljava/lang/Thread;

    const-string v2, "logWriteThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 468
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 469
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    :cond_47
    :goto_47
    return-void

    .line 460
    :catch_48
    move-exception v1

    .line 461
    const-string v1, "unknow"

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4d} :catch_4e

    goto :goto_1b

    .line 470
    :catch_4e
    move-exception v1

    .line 471
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 472
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 474
    const-string v2, "TMLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TMLog init post retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times, interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    sget-object v4, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    aget v4, v4, v1

    const v5, 0xea60

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    add-int/lit8 v1, v1, 0x1

    .line 478
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    array-length v2, v2

    if-lt v1, v2, :cond_a7

    .line 481
    :goto_a1
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_47

    :cond_a7
    move v0, v1

    goto :goto_a1
.end method
