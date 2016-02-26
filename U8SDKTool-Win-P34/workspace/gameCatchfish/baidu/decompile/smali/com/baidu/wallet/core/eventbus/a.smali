.class Lcom/baidu/wallet/core/eventbus/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/baidu/wallet/core/eventbus/f;

.field private final b:Lcom/baidu/wallet/core/eventbus/EventBusController;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/eventbus/EventBusController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/wallet/core/eventbus/a;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    new-instance v0, Lcom/baidu/wallet/core/eventbus/f;

    invoke-direct {v0}, Lcom/baidu/wallet/core/eventbus/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/a;->a:Lcom/baidu/wallet/core/eventbus/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 13

    const-wide/16 v2, 0x0

    invoke-static {p1, p2}, Lcom/baidu/wallet/core/eventbus/b;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)Lcom/baidu/wallet/core/eventbus/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/a;->a:Lcom/baidu/wallet/core/eventbus/f;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/eventbus/f;->a(Lcom/baidu/wallet/core/eventbus/b;)V

    const-string v0, "EBTaskManager"

    invoke-static {v0}, Lcom/baidu/wallet/core/a/b;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/a/b;

    move-result-object v1

    new-instance v0, Lcom/baidu/wallet/core/a/b$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncPost_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/wallet/core/a/b$a;-><init>(Lcom/baidu/wallet/core/a/b;JJZLjava/lang/String;Ljava/lang/Runnable;)V

    const-string v2, "AsyncPost"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/wallet/core/a/b;->a(Lcom/baidu/wallet/core/a/b$a;Ljava/lang/String;)Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/a;->a:Lcom/baidu/wallet/core/eventbus/f;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/eventbus/f;->a()Lcom/baidu/wallet/core/eventbus/b;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/a;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;->invokeSubscriber(Lcom/baidu/wallet/core/eventbus/b;)V

    return-void
.end method
