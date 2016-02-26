.class Lcom/tencent/android/tpush/service/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/XGWatchdog;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGWatchdog;)V
    .registers 2

    .prologue
    .line 400
    iput-object p1, p0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const-string v1, "ver:"

    # invokes: Lcom/tencent/android/tpush/service/XGWatchdog;->directSendContent(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_48

    move-result-object v0

    .line 407
    if-eqz v1, :cond_2b

    .line 409
    :try_start_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 410
    const-string v1, "TpnsWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive wd version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_2b} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2b} :catch_48

    .line 414
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_42

    .line 415
    iget-object v0, p0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const-string v1, "exit:"

    # invokes: Lcom/tencent/android/tpush/service/XGWatchdog;->directSendContent(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 417
    iget-object v0, p0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    # invokes: Lcom/tencent/android/tpush/service/XGWatchdog;->directStartWatchdog()V
    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$100(Lcom/tencent/android/tpush/service/XGWatchdog;)V

    .line 419
    :cond_42
    iget-object v0, p0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/android/tpush/service/XGWatchdog;->isStarted:Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_47} :catch_48

    .line 423
    :goto_47
    return-void

    .line 420
    :catch_48
    move-exception v0

    .line 421
    const-string v1, "TpnsWatchdog"

    const-string v2, "jniStartWatchdog error:"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    .line 411
    :catch_51
    move-exception v1

    goto :goto_2b
.end method
