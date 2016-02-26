.class Lcom/baidu/wallet/core/eventbus/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/eventbus/d;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 13

    const/4 v3, 0x0

    const-string v5, "onModuleEvent"

    sget-object v1, Lcom/baidu/wallet/core/eventbus/d;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/baidu/wallet/core/eventbus/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    monitor-exit v1

    if-eqz v0, :cond_15

    :goto_11
    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    move-object v4, p1

    move-object v1, v0

    :goto_17
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "javax."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_35
    if-nez v1, :cond_93

    new-instance v0, Lcom/baidu/wallet/core/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no public methods called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_60
    if-ge v2, v7, :cond_a2

    aget-object v0, v6, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_8f

    and-int/lit16 v8, v8, 0x408

    if-nez v8, :cond_8f

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8f

    aget-object v8, v8, v3

    const-class v9, Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    if-ne v8, v9, :cond_8f

    :goto_88
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    goto :goto_17

    :cond_8f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_60

    :cond_93
    sget-object v2, Lcom/baidu/wallet/core/eventbus/d;->a:Ljava/util/Map;

    monitor-enter v2

    :try_start_96
    sget-object v0, Lcom/baidu/wallet/core/eventbus/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_11

    :catchall_9f
    move-exception v0

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_96 .. :try_end_a1} :catchall_9f

    throw v0

    :cond_a2
    move-object v0, v1

    goto :goto_88
.end method
