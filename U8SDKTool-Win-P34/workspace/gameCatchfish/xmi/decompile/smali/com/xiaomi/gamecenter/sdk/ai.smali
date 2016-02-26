.class Lcom/xiaomi/gamecenter/sdk/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ah;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ai;->a:Lcom/xiaomi/gamecenter/sdk/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishPayProcess(I)V
    .registers 4

    if-nez p1, :cond_20

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->a:Lcom/xiaomi/gamecenter/sdk/ah;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ah;->c:Lcom/xiaomi/gamecenter/sdk/ag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;I)I

    :goto_a
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->a:Lcom/xiaomi/gamecenter/sdk/ah;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ah;->c:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->a:Lcom/xiaomi/gamecenter/sdk/ah;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ah;->c:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_28

    return-void

    :cond_20
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->a:Lcom/xiaomi/gamecenter/sdk/ah;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ah;->c:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-static {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;I)I

    goto :goto_a

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
