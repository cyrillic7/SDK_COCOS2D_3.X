.class final Lcom/nearme/game/sdk/a$7;
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
    .line 416
    iput-object p1, p0, Lcom/nearme/game/sdk/a$7;->a:Lcom/nearme/game/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/nearme/game/sdk/a$7;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 421
    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/a$7;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 422
    const-string v0, "GCInternal"

    const-string v2, "do init timeout release lock."

    invoke-static {v0, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/nearme/game/sdk/a$7;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 425
    :cond_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0
.end method
