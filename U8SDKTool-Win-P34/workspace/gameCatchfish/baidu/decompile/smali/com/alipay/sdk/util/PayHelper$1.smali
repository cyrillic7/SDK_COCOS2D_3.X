.class Lcom/alipay/sdk/util/PayHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/PayHelper;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/PayHelper;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/sdk/util/PayHelper$1;->a:Lcom/alipay/sdk/util/PayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper$1;->a:Lcom/alipay/sdk/util/PayHelper;

    invoke-static {v0}, Lcom/alipay/sdk/util/PayHelper;->a(Lcom/alipay/sdk/util/PayHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_7
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper$1;->a:Lcom/alipay/sdk/util/PayHelper;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/PayHelper;->a(Lcom/alipay/sdk/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper$1;->a:Lcom/alipay/sdk/util/PayHelper;

    invoke-static {v0}, Lcom/alipay/sdk/util/PayHelper;->a(Lcom/alipay/sdk/util/PayHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper$1;->a:Lcom/alipay/sdk/util/PayHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Lcom/alipay/sdk/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 43
    return-void
.end method
