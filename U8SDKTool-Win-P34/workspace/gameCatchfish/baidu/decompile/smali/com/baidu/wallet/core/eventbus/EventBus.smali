.class public final Lcom/baidu/wallet/core/eventbus/EventBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;,
        Lcom/baidu/wallet/core/eventbus/EventBus$Event;
    }
.end annotation


# static fields
.field public static final DEFAULT_METHOD_NAME:Ljava/lang/String; = "onModuleEvent"

.field private static a:Lcom/baidu/wallet/core/eventbus/EventBus;

.field private static b:Lcom/baidu/wallet/core/eventbus/EventBusController;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-direct {v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    return-void
.end method

.method public static getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->a:Lcom/baidu/wallet/core/eventbus/EventBus;

    if-nez v0, :cond_13

    const-class v1, Lcom/baidu/wallet/core/eventbus/EventBus;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->a:Lcom/baidu/wallet/core/eventbus/EventBus;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBus;

    invoke-direct {v0}, Lcom/baidu/wallet/core/eventbus/EventBus;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->a:Lcom/baidu/wallet/core/eventbus/EventBus;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->a:Lcom/baidu/wallet/core/eventbus/EventBus;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public cancelEventDelivery(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 3

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/eventbus/EventBusController;->cancelEventDelivery(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    return-void
.end method

.method public post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 3

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/eventbus/EventBusController;->post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    return-void
.end method

.method public postStickyEvent(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 3

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/eventbus/EventBusController;->postSticky(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    return-void
.end method

.method public register(Ljava/lang/Object;Ljava/lang/String;ILcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 11

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/eventbus/EventBusController;->register(Ljava/lang/Object;Ljava/lang/String;IZLcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    return-void
.end method

.method public register(Ljava/lang/Object;[Ljava/lang/String;ILcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 11

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/eventbus/EventBusController;->register(Ljava/lang/Object;[Ljava/lang/String;IZLcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    return-void
.end method

.method public registerSticky(Ljava/lang/Object;Ljava/lang/String;ILcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 11

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/eventbus/EventBusController;->register(Ljava/lang/Object;Ljava/lang/String;IZLcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    return-void
.end method

.method public removeAllStickyEvents()V
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;->removeAllStickyEvents()V

    return-void
.end method

.method public removeStickyEvent(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/eventbus/EventBusController;->removeStickyEvent(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/eventbus/EventBusController;->unregister(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBus;->b:Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/core/eventbus/EventBusController;->unregister(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
