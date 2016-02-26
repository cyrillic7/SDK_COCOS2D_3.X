.class Lcom/baidu/mtjstatsdk/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/g;->a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    if-eqz p2, :cond_d

    invoke-virtual {p1, p3}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->isStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iput-object p3, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "**************load caceh**start********"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .registers 4

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->loadStatData(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->loadLastSession(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getCacheLogWithCoreDataLock()Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mtjstatsdk/GameCacheLoadListener;->readLogFromFileDataCoreHash(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    :cond_32
    invoke-static {}, Lcom/baidu/mtjstatsdk/i;->a()Lcom/baidu/mtjstatsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_48
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_45 .. :try_end_48} :catch_6d
    .catchall {:try_start_45 .. :try_end_48} :catchall_7c

    :cond_48
    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_7c

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**************load caceh**end********appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    :cond_69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/g;->c:Landroid/content/Context;

    return-void

    :catch_6d
    move-exception v0

    :try_start_6e
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :catchall_7c
    move-exception v0

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7c

    throw v0
.end method
