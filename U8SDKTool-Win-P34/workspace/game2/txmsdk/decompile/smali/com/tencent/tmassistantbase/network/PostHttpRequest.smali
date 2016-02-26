.class public abstract Lcom/tencent/tmassistantbase/network/PostHttpRequest;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized cancleRequest()V
    .registers 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_33

    .line 139
    const-string v0, "BaseHttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseHttpRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancleRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_3d

    .line 141
    :try_start_2b
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_35
    .catchall {:try_start_2b .. :try_end_30} :catchall_40

    .line 145
    const/4 v0, 0x0

    :try_start_31
    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_3d

    .line 148
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 142
    :catch_35
    move-exception v0

    .line 143
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 145
    const/4 v0, 0x0

    :try_start_3a
    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3d

    goto :goto_33

    .line 138
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :catchall_40
    move-exception v0

    const/4 v1, 0x0

    :try_start_42
    iput-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    throw v0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3d
.end method

.method protected abstract onFinished([B[BI)V
.end method

.method protected declared-synchronized sendRequest([B)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 44
    monitor-enter p0

    if-nez p1, :cond_6

    .line 123
    :cond_4
    :goto_4
    monitor-exit p0

    return v2

    .line 49
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_4

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;-><init>(Lcom/tencent/tmassistantbase/network/PostHttpRequest;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    goto :goto_4

    .line 44
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
