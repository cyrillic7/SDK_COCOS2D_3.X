.class final Lcom/unionpay/mobile/android/pro/pboc/engine/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    monitor-enter v1

    :try_start_3
    const-string v0, "UPCardEngine"

    const-string v2, " ic_return : 4"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->d(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Lcom/unionpay/mobile/android/pboctransaction/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method
