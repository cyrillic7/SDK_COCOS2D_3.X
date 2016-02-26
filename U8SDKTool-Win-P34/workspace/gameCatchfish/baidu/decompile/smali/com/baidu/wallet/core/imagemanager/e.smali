.class Lcom/baidu/wallet/core/imagemanager/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/imagemanager/e$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;

.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x7

    new-instance v0, Lcom/baidu/wallet/core/imagemanager/ImageMemoryCache$1;

    const/high16 v1, 0x3f400000

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/baidu/wallet/core/imagemanager/ImageMemoryCache$1;-><init>(IFZ)V

    sput-object v0, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/baidu/wallet/core/imagemanager/i;

    invoke-direct {v0}, Lcom/baidu/wallet/core/imagemanager/i;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/imagemanager/e;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Lcom/baidu/wallet/core/imagemanager/e;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .registers 1

    sput-object p0, Lcom/baidu/wallet/core/imagemanager/e;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/baidu/wallet/core/imagemanager/e;->e()V

    return-void
.end method

.method static synthetic d()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static e()V
    .registers 6

    sget-object v1, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_44

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_64
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_7a
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v1, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    monitor-exit v1

    :goto_e
    return-object v0

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_26

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/core/imagemanager/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_e

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method a()V
    .registers 5

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->d:Landroid/os/Handler;

    if-nez v0, :cond_a

    new-instance v0, Lcom/baidu/wallet/core/imagemanager/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/imagemanager/e$a;-><init>(Lcom/baidu/wallet/core/imagemanager/ImageMemoryCache$1;)V

    :cond_a
    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->d:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/wallet/core/imagemanager/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->d:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/wallet/core/imagemanager/e;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p2, :cond_b

    sget-object v1, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/baidu/wallet/core/imagemanager/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
