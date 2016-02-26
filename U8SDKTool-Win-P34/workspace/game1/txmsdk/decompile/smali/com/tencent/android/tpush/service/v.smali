.class Lcom/tencent/android/tpush/service/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/XGServiceMonitor;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a(Lcom/tencent/android/tpush/service/XGServiceMonitor;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 215
    iget-object v0, p0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V

    .line 222
    :goto_d
    return-void

    .line 217
    :cond_e
    iget-object v0, p0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_d

    .line 219
    :catch_14
    move-exception v0

    .line 220
    invoke-static {}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "monotor error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
