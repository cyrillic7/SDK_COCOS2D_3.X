.class public final Lcom/baidu/wallet/core/beans/BeanRequestCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# static fields
.field private static a:Lcom/baidu/wallet/core/beans/BeanRequestCache;


# instance fields
.field private final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->a:Lcom/baidu/wallet/core/beans/BeanRequestCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;
    .registers 2

    const-class v1, Lcom/baidu/wallet/core/beans/BeanRequestCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->a:Lcom/baidu/wallet/core/beans/BeanRequestCache;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/core/beans/BeanRequestCache;

    invoke-direct {v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->a:Lcom/baidu/wallet/core/beans/BeanRequestCache;

    :cond_e
    sget-object v0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->a:Lcom/baidu/wallet/core/beans/BeanRequestCache;
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
.method public addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V
    .registers 4

    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public clearPaySdkRequestCache()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/wallet/core/beans/BeanRequestBase;

    iget-boolean v1, v1, Lcom/baidu/wallet/core/beans/BeanRequestBase;->mBelongPaySdk:Z

    if-eqz v1, :cond_f

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->removeBeanRequestFromCache(Ljava/lang/String;)V

    goto :goto_2f

    :cond_3f
    return-void
.end method

.method public clearRequestCache()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;
    .registers 3

    if-eqz p1, :cond_13

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/beans/BeanRequestBase;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public removeBeanRequestFromCache(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method
