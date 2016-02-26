.class Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantbase/network/PostHttpRequest;[B)V
    .registers 3

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object p2, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://masdk.3g.qq.com/"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 60
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v3, "AssistantDownloader"

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    invoke-direct {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 66
    :try_start_25
    invoke-static {}, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->createHttpClient()Lorg/apache/http/client/HttpClient;
    :try_end_28
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_25 .. :try_end_28} :catch_110
    .catch Ljava/net/ConnectException; {:try_start_25 .. :try_end_28} :catch_9f
    .catch Ljava/net/SocketTimeoutException; {:try_start_25 .. :try_end_28} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_d2
    .catchall {:try_start_25 .. :try_end_28} :catchall_ec

    move-result-object v1

    .line 67
    :try_start_29
    invoke-static {v1}, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->setProxy(Lorg/apache/http/client/HttpClient;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_fc

    .line 71
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_fc

    .line 73
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_fc

    .line 76
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 79
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 80
    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 81
    :goto_5a
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_82

    .line 83
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_65
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_29 .. :try_end_65} :catch_66
    .catch Ljava/net/ConnectException; {:try_start_29 .. :try_end_65} :catch_10e
    .catch Ljava/net/SocketTimeoutException; {:try_start_29 .. :try_end_65} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_65} :catch_10a
    .catchall {:try_start_29 .. :try_end_65} :catchall_108

    goto :goto_5a

    .line 96
    :catch_66
    move-exception v0

    .line 97
    :goto_67
    :try_start_67
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 98
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v4, 0x0

    const/16 v5, 0x259

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_108

    .line 112
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_81

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 120
    :cond_81
    return-void

    .line 86
    :cond_82
    :try_start_82
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    .line 87
    if-eqz v0, :cond_fc

    array-length v3, v0

    const/4 v4, 0x4

    if-le v3, v4, :cond_fc

    .line 89
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_94
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_82 .. :try_end_94} :catch_66
    .catch Ljava/net/ConnectException; {:try_start_82 .. :try_end_94} :catch_10e
    .catch Ljava/net/SocketTimeoutException; {:try_start_82 .. :try_end_94} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_94} :catch_10a
    .catchall {:try_start_82 .. :try_end_94} :catchall_108

    .line 112
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_81

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_7e

    .line 99
    :catch_9f
    move-exception v0

    move-object v1, v2

    .line 100
    :goto_a1
    :try_start_a1
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 101
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_108

    .line 112
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_81

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_7e

    .line 103
    :catch_b8
    move-exception v0

    move-object v1, v2

    .line 104
    :goto_ba
    :try_start_ba
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 105
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v4, 0x0

    const/16 v5, 0x25a

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_c7
    .catchall {:try_start_ba .. :try_end_c7} :catchall_108

    .line 112
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_81

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_7e

    .line 107
    :catch_d2
    move-exception v0

    move-object v1, v2

    .line 109
    :goto_d4
    :try_start_d4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v4, 0x0

    const/16 v5, 0x25c

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_e1
    .catchall {:try_start_d4 .. :try_end_e1} :catchall_108

    .line 112
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_81

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_7e

    .line 112
    :catchall_ec
    move-exception v0

    move-object v1, v2

    :goto_ee
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v3, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_fb

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 112
    :cond_fb
    throw v0

    :cond_fc
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 114
    if-eqz v1, :cond_81

    .line 116
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto/16 :goto_7e

    .line 112
    :catchall_108
    move-exception v0

    goto :goto_ee

    .line 107
    :catch_10a
    move-exception v0

    goto :goto_d4

    .line 103
    :catch_10c
    move-exception v0

    goto :goto_ba

    .line 99
    :catch_10e
    move-exception v0

    goto :goto_a1

    .line 96
    :catch_110
    move-exception v0

    move-object v1, v2

    goto/16 :goto_67
.end method
