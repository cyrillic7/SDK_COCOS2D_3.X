.class Lcom/xiaomi/gamecenter/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/h;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Lcom/xiaomi/gamecenter/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Lcom/xiaomi/gamecenter/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/h;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x2

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->service_isntall_ask:I
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1702(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Lcom/xiaomi/gamecenter/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/h;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Lcom/xiaomi/gamecenter/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/h;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    throw v0
.end method
