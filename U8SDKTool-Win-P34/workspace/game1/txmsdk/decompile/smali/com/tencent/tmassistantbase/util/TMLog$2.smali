.class final Lcom/tencent/tmassistantbase/util/TMLog$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 450
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 486
    :cond_12
    :goto_12
    return-void

    .line 453
    :cond_13
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$2$1;

    const-string v1, "TMLogInitThread"

    invoke-direct {v0, p0, v1}, Lcom/tencent/tmassistantbase/util/TMLog$2$1;-><init>(Lcom/tencent/tmassistantbase/util/TMLog$2;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/TMLog$2$1;->start()V

    goto :goto_12
.end method
