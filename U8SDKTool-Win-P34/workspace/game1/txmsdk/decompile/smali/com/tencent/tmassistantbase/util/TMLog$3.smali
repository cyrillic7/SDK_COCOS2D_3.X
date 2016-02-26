.class final Lcom/tencent/tmassistantbase/util/TMLog$3;
.super Ljava/lang/Thread;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 584
    :cond_2
    :goto_2
    :try_start_2
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    if-eqz v0, :cond_2

    .line 586
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->a(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_f} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_2a

    goto :goto_2

    .line 588
    :catch_10
    move-exception v0

    .line 589
    const-string v1, "TMLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write log file error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 590
    :catch_2a
    move-exception v0

    .line 591
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENOSPC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 592
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 593
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 607
    :cond_46
    :goto_46
    return-void

    .line 596
    :cond_47
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 597
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 599
    :try_start_4f
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->b()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_46

    .line 600
    :catch_53
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46
.end method
