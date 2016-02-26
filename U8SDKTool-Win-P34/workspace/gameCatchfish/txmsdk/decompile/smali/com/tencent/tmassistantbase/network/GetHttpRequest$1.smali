.class Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantbase/network/GetHttpRequest;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object p2, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->a:Ljava/lang/String;

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v3, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://appicsh.qq.com/cgi-bin/appstage/yyb_get_userapp_info"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 71
    invoke-static {}, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->createHttpClient()Lorg/apache/http/client/HttpClient;
    :try_end_2e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_2e} :catch_cb
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_2e} :catch_e3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_2e} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_113
    .catchall {:try_start_3 .. :try_end_2e} :catchall_12c

    move-result-object v1

    .line 72
    :try_start_2f
    invoke-static {v1}, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->setProxy(Lorg/apache/http/client/HttpClient;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_b8

    .line 76
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_b8

    .line 78
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_b8

    .line 81
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 82
    if-eqz v0, :cond_9e

    array-length v3, v0

    if-lez v3, :cond_9e

    .line 84
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v3, "NetworkTask"

    const-string v4, "success to received data"

    invoke-static {v3, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_76
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2f .. :try_end_76} :catch_144
    .catch Ljava/net/ConnectException; {:try_start_2f .. :try_end_76} :catch_142
    .catch Ljava/net/SocketTimeoutException; {:try_start_2f .. :try_end_76} :catch_140
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_76} :catch_13e
    .catchall {:try_start_2f .. :try_end_76} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 130
    :cond_83
    return-void

    .line 93
    :cond_84
    :try_start_84
    const-string v0, "NetworkTask"

    const-string v3, "failed to convert byte[] to string"

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/16 v4, 0x25e

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_93
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_84 .. :try_end_93} :catch_144
    .catch Ljava/net/ConnectException; {:try_start_84 .. :try_end_93} :catch_142
    .catch Ljava/net/SocketTimeoutException; {:try_start_84 .. :try_end_93} :catch_140
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_93} :catch_13e
    .catchall {:try_start_84 .. :try_end_93} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_80

    .line 98
    :cond_9e
    :try_start_9e
    const-string v0, "NetworkTask"

    const-string v3, "data invalidate"

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/16 v4, 0x2c0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_ad
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9e .. :try_end_ad} :catch_144
    .catch Ljava/net/ConnectException; {:try_start_9e .. :try_end_ad} :catch_142
    .catch Ljava/net/SocketTimeoutException; {:try_start_9e .. :try_end_ad} :catch_140
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ad} :catch_13e
    .catchall {:try_start_9e .. :try_end_ad} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_80

    .line 105
    :cond_b8
    :try_start_b8
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/16 v4, 0x2c0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_c0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b8 .. :try_end_c0} :catch_144
    .catch Ljava/net/ConnectException; {:try_start_b8 .. :try_end_c0} :catch_142
    .catch Ljava/net/SocketTimeoutException; {:try_start_b8 .. :try_end_c0} :catch_140
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c0} :catch_13e
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_80

    .line 106
    :catch_cb
    move-exception v0

    move-object v1, v2

    .line 107
    :goto_cd
    :try_start_cd
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 108
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/16 v4, 0x259

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_80

    .line 109
    :catch_e3
    move-exception v0

    move-object v1, v2

    .line 110
    :goto_e5
    :try_start_e5
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 111
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_80

    .line 113
    :catch_fa
    move-exception v0

    move-object v1, v2

    .line 114
    :goto_fc
    :try_start_fc
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 115
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/16 v4, 0x25a

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto/16 :goto_80

    .line 117
    :catch_113
    move-exception v0

    move-object v1, v2

    .line 119
    :goto_115
    :try_start_115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v3, 0x0

    const/16 v4, 0x25c

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_120
    .catchall {:try_start_115 .. :try_end_120} :catchall_13c

    .line 122
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_83

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    goto/16 :goto_80

    .line 122
    :catchall_12c
    move-exception v0

    move-object v1, v2

    :goto_12e
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v2, v3, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    if-eqz v1, :cond_13b

    .line 126
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 122
    :cond_13b
    throw v0

    :catchall_13c
    move-exception v0

    goto :goto_12e

    .line 117
    :catch_13e
    move-exception v0

    goto :goto_115

    .line 113
    :catch_140
    move-exception v0

    goto :goto_fc

    .line 109
    :catch_142
    move-exception v0

    goto :goto_e5

    .line 106
    :catch_144
    move-exception v0

    goto :goto_cd
.end method
