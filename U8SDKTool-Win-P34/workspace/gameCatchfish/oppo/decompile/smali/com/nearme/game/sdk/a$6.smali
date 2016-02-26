.class final Lcom/nearme/game/sdk/a$6;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nearme/game/sdk/a;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/a;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 400
    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_36

    .line 402
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->b(Lcom/nearme/game/sdk/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 403
    const-string v0, "GCInternal"

    const-string v2, "retry bind service."

    invoke-static {v0, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    iget-object v2, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    iget-object v2, v2, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Landroid/content/Context;)V

    .line 405
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    :cond_36
    :goto_36
    monitor-exit v1

    return-void

    .line 407
    :cond_38
    const-string v0, "GCInternal"

    const-string v2, "waitService time out after retry release lock."

    invoke-static {v0, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 409
    iget-object v0, p0, Lcom/nearme/game/sdk/a$6;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->b(Lcom/nearme/game/sdk/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_36

    .line 412
    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_53

    throw v0
.end method
