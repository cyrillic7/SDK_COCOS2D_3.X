.class public Lcom/baidu/wallet/core/eventbus/EventBusController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/eventbus/EventBusController$1;,
        Lcom/baidu/wallet/core/eventbus/EventBusController$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Lcom/baidu/wallet/core/eventbus/g;

.field private final d:Lcom/baidu/wallet/core/eventbus/a;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;

.field private final g:Lcom/baidu/wallet/core/eventbus/d;

.field private final h:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/eventbus/EventBusController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/eventbus/EventBusController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/wallet/core/eventbus/c;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/eventbus/c;-><init>(Lcom/baidu/wallet/core/eventbus/EventBusController;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    new-instance v0, Lcom/baidu/wallet/core/eventbus/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/wallet/core/eventbus/g;-><init>(Lcom/baidu/wallet/core/eventbus/EventBusController;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->c:Lcom/baidu/wallet/core/eventbus/g;

    new-instance v0, Lcom/baidu/wallet/core/eventbus/a;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/eventbus/a;-><init>(Lcom/baidu/wallet/core/eventbus/EventBusController;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->d:Lcom/baidu/wallet/core/eventbus/a;

    new-instance v0, Lcom/baidu/wallet/core/eventbus/d;

    invoke-direct {v0}, Lcom/baidu/wallet/core/eventbus/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->g:Lcom/baidu/wallet/core/eventbus/d;

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/eventbus/EventBus$Event;Lcom/baidu/wallet/core/eventbus/EventBusController$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->e:Ljava/util/Map;

    iget-object v2, p1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;->mEventKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3d

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/eventbus/e;

    iput-object p1, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->d:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    iput-object v0, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->c:Lcom/baidu/wallet/core/eventbus/e;

    :try_start_2a
    iget-boolean v3, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->b:Z

    invoke-direct {p0, v0, p1, v3}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;Z)V

    iget-boolean v0, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->e:Z
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_40

    iput-object v4, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->d:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    iput-object v4, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->c:Lcom/baidu/wallet/core/eventbus/e;

    iput-boolean v1, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->e:Z

    if-eqz v0, :cond_1a

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    if-nez v0, :cond_3c

    :cond_3c
    return-void

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    :catchall_40
    move-exception v0

    iput-object v4, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->d:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    iput-object v4, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->c:Lcom/baidu/wallet/core/eventbus/e;

    iput-boolean v1, p2, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->e:Z

    throw v0

    :cond_48
    move v0, v1

    goto :goto_3a
.end method

.method private a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/baidu/wallet/core/eventbus/e;->b:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lcom/baidu/wallet/core/eventbus/e;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_40

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/eventbus/EventBusController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/wallet/core/eventbus/e;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_40
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;Z)V
    .registers 7

    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBusController$1;->a:[I

    iget-object v1, p1, Lcom/baidu/wallet/core/eventbus/e;->e:Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/wallet/core/eventbus/e;->e:Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    :goto_2b
    return-void

    :pswitch_2c
    if-eqz p3, :cond_32

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    goto :goto_2b

    :cond_32
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->c:Lcom/baidu/wallet/core/eventbus/g;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/core/eventbus/g;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    goto :goto_2b

    :pswitch_38
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->d:Lcom/baidu/wallet/core/eventbus/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/wallet/core/eventbus/a;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    goto :goto_2b

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2c
        :pswitch_38
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v4

    :goto_10
    if-ge v2, v3, :cond_2a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/core/eventbus/e;

    iget-object v5, v1, Lcom/baidu/wallet/core/eventbus/e;->a:Ljava/lang/Object;

    if-ne v5, p1, :cond_2b

    iput-boolean v4, v1, Lcom/baidu/wallet/core/eventbus/e;->f:Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v2, v3, -0x1

    :goto_25
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_10

    :cond_2a
    return-void

    :cond_2b
    move v1, v2

    move v2, v3

    goto :goto_25
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;ZILjava/lang/String;Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 15

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->e:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_70

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->e:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    :goto_16
    new-instance v0, Lcom/baidu/wallet/core/eventbus/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/eventbus/e;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;ILcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8d

    move v2, v7

    :goto_27
    if-gt v2, v3, :cond_3a

    if-eq v2, v3, :cond_37

    iget v4, v0, Lcom/baidu/wallet/core/eventbus/e;->c:I

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/core/eventbus/e;

    iget v1, v1, Lcom/baidu/wallet/core/eventbus/e;->c:I

    if-le v4, v1, :cond_89

    :cond_37
    invoke-virtual {v6, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6f

    iget-object v2, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_56
    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_91

    if-eqz v1, :cond_6f

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_94

    const/4 v2, 0x1

    :goto_6c
    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;Z)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/core/eventbus/e;

    iget-object v1, v1, Lcom/baidu/wallet/core/eventbus/e;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_6f

    :cond_89
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_27

    :cond_8d
    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0

    :cond_94
    move v2, v7

    goto :goto_6c

    :cond_96
    move-object v6, v0

    goto/16 :goto_16
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;ZI[Ljava/lang/String;Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 16

    array-length v8, p5

    const/4 v0, 0x0

    move v7, v0

    :goto_3
    if-ge v7, v8, :cond_14

    aget-object v5, p5, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;ZILjava/lang/String;Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_14
    return-void
.end method


# virtual methods
.method public cancelEventDelivery(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;

    iget-boolean v1, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->a:Z

    if-nez v1, :cond_14

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusException;

    const-string v1, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p1, :cond_1e

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusException;

    const-string v1, "Event may not be null"

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v1, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->d:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    if-eq v1, p1, :cond_2a

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusException;

    const-string v1, "Only the currently handled event may be aborted"

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->e:Z

    return-void
.end method

.method protected invokeSubscriber(Lcom/baidu/wallet/core/eventbus/b;)V
    .registers 5

    iget-object v0, p1, Lcom/baidu/wallet/core/eventbus/b;->a:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    iget-object v1, p1, Lcom/baidu/wallet/core/eventbus/b;->b:Lcom/baidu/wallet/core/eventbus/e;

    iget-boolean v2, v1, Lcom/baidu/wallet/core/eventbus/e;->f:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    :cond_b
    return-void
.end method

.method public post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;

    iget-boolean v1, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->a:Z

    if-eqz v1, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_25

    move v1, v2

    :goto_1a
    iput-boolean v1, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->b:Z

    iput-boolean v2, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->a:Z

    iget-boolean v1, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->e:Z

    if-eqz v1, :cond_27

    iput-boolean v3, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->a:Z

    goto :goto_e

    :cond_25
    move v1, v3

    goto :goto_1a

    :cond_27
    :try_start_27
    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Lcom/baidu/wallet/core/eventbus/EventBus$Event;Lcom/baidu/wallet/core/eventbus/EventBusController$a;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    iput-boolean v3, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->a:Z

    iput-boolean v3, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->b:Z

    goto :goto_e

    :catchall_2f
    move-exception v1

    iput-boolean v3, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->a:Z

    iput-boolean v3, v0, Lcom/baidu/wallet/core/eventbus/EventBusController$a;->b:Z

    throw v1
.end method

.method public postSticky(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    .registers 5

    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/baidu/wallet/core/eventbus/EventBus$Event;->mEventKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/eventbus/EventBusController;->post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;IZLcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->g:Lcom/baidu/wallet/core/eventbus/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/eventbus/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;ZILjava/lang/String;Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/Object;[Ljava/lang/String;IZLcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->g:Lcom/baidu/wallet/core/eventbus/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/eventbus/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;ZI[Ljava/lang/String;Lcom/baidu/wallet/core/eventbus/EventBus$ThreadMode;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllStickyEvents()V
    .registers 3

    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeStickyEvent(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provide at least one event class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2c
    iget-object v0, p0, Lcom/baidu/wallet/core/eventbus/EventBusController;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_b

    :goto_31
    monitor-exit p0

    return-void

    :cond_33
    :try_start_33
    sget-object v0, Lcom/baidu/wallet/core/eventbus/EventBusController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_b

    goto :goto_31
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provide at least one event class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/eventbus/EventBusController;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    monitor-exit p0

    return-void
.end method
