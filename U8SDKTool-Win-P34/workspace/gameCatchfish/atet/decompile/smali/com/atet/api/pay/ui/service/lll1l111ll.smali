.class final Lcom/atet/api/pay/ui/service/lll1l111ll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;


# direct methods
.method constructor <init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V
    .registers 2

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/lll1l111ll;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/lll1l111ll;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/lll1l111ll;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {p2}, Lcom/atet/api/pay/ui/service/IAtetPayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atet/api/pay/ui/service/IAtetPayService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;Lcom/atet/api/pay/ui/service/IAtetPayService;)V

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/lll1l111ll;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/lll1l111ll;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;Lcom/atet/api/pay/ui/service/IAtetPayService;)V

    return-void
.end method
