.class Lcom/xiaomi/gamecenter/sdk/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ag;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .registers 7

    if-nez p1, :cond_11

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;Ljava/lang/String;)Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Lcom/xiaomi/gamecenter/sdk/ag;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v0
.end method
