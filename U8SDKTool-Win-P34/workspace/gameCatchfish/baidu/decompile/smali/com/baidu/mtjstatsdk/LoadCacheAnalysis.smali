.class public Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/h;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->getInstance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->getLoadCacheObject(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/h;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/baidu/mtjstatsdk/h;->a:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->b:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iget-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->b:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    monitor-enter v1

    :try_start_15
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1f
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v1

    goto :goto_2

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_1c

    goto :goto_1a
.end method

.method public static checkStartLoadCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->a:Z

    if-nez v1, :cond_2

    :try_start_14
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/h;->d:Lcom/baidu/mtjstatsdk/g;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/g;->start()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_2

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getInstance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;
    .registers 1

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    :cond_b
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    return-object v0
.end method


# virtual methods
.method public getLoadCacheObject(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/h;
    .registers 4

    new-instance v0, Lcom/baidu/mtjstatsdk/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/h;-><init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public initLoadCacheParams(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->a:Z

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/h;->b:Z

    return-void
.end method

.method public declared-synchronized isFinished(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/h;->b:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStart(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/h;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/h;->a:Z
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_a

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
