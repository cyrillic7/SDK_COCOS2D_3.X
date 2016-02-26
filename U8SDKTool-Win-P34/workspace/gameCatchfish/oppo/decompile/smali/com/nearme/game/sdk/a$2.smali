.class final Lcom/nearme/game/sdk/a$2;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 156
    iput-object p1, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 160
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected service = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 162
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Z)Z

    .line 163
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_2b
    const-string v0, "GCInternal"

    const-string v2, "onServiceConnected release lock."

    invoke-static {v0, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_4c

    .line 168
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->b(Lcom/nearme/game/sdk/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->c(Lcom/nearme/game/sdk/a;)V

    .line 170
    return-void

    .line 166
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 174
    const-string v0, "GCInternal"

    const-string v1, "onServiceDisconnected."

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/nearme/game/sdk/a$2;->a:Lcom/nearme/game/sdk/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 176
    return-void
.end method
