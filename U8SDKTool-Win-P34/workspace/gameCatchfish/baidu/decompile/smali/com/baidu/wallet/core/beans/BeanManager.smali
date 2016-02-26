.class public final Lcom/baidu/wallet/core/beans/BeanManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/wallet/core/beans/BeanManager;


# instance fields
.field private final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/core/beans/BeanManager;->a:Lcom/baidu/wallet/core/beans/BeanManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/wallet/core/beans/BeanManager;
    .registers 2

    const-class v1, Lcom/baidu/wallet/core/beans/BeanManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/beans/BeanManager;->a:Lcom/baidu/wallet/core/beans/BeanManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/core/beans/BeanManager;

    invoke-direct {v0}, Lcom/baidu/wallet/core/beans/BeanManager;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/beans/BeanManager;->a:Lcom/baidu/wallet/core/beans/BeanManager;

    :cond_e
    sget-object v0, Lcom/baidu/wallet/core/beans/BeanManager;->a:Lcom/baidu/wallet/core/beans/BeanManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBean(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BaseBean;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllBeans(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BaseBean;->destroyBean()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    :cond_27
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeBean(Lcom/baidu/wallet/core/beans/BaseBean;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v0, ""

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BeanManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/core/beans/BaseBean;

    if-ne p1, v1, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/baidu/wallet/core/beans/BaseBean;->destroyBean()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3a

    goto :goto_d

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3d
    monitor-exit p0

    return-void
.end method
