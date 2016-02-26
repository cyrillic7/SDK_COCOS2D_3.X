.class public Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHECK_INTERVAL:I = 0x2710

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x3

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Baidu-Android-Lib-V1.0"

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field protected static final sThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field protected mLastCheckTime:J

.field protected mNetworkCheckInterval:I

.field protected final mRequestMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->sThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x3a98

    const/16 v4, 0xa

    .line 102
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mLastCheckTime:J

    .line 105
    const/16 v1, 0x2710

    iput v1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mNetworkCheckInterval:I

    .line 107
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 109
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-wide/16 v2, 0x3a98

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 110
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v1, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 112
    invoke-static {v0, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 114
    invoke-static {v0, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 115
    invoke-static {v0, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 117
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 119
    const-string v1, "Baidu-Android-Lib-V1.0"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 121
    const-string v1, "compatibility"

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 123
    const-string v1, "http.connection-manager.factory-object"

    new-instance v2, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$1;

    invoke-direct {v2, p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$1;-><init>(Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 146
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$2;

    invoke-direct {v1, p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$2;-><init>(Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)V

    invoke-virtual {p0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 156
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$3;

    invoke-direct {v1, p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$3;-><init>(Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)V

    invoke-virtual {p0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 176
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mRequestMap:Ljava/util/WeakHashMap;

    .line 177
    return-void
.end method

.method private checkNetworkStateAndAdjust(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    if-eqz p1, :cond_3e

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 479
    .local v2, "currentTime":J
    iget-wide v6, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mLastCheckTime:J

    sub-long v6, v2, v6

    iget v5, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mNetworkCheckInterval:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_3e

    .line 480
    new-instance v0, Lcom/baidu/android/common/net/ConnectManager;

    invoke-direct {v0, p1}, Lcom/baidu/android/common/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 481
    .local v0, "conman":Lcom/baidu/android/common/net/ConnectManager;
    invoke-virtual {v0}, Lcom/baidu/android/common/net/ConnectManager;->isWapNetwork()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 482
    invoke-virtual {v0}, Lcom/baidu/android/common/net/ConnectManager;->getProxy()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/baidu/android/common/net/ConnectManager;->getProxyPort()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 484
    .local v4, "port":I
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    .line 485
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-direct {v6, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v6}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 491
    .end local v1    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    :cond_3c
    :goto_3c
    iput-wide v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mLastCheckTime:J

    .line 494
    .end local v0    # "conman":Lcom/baidu/android/common/net/ConnectManager;
    .end local v2    # "currentTime":J
    :cond_3e
    return-void

    .line 488
    .restart local v0    # "conman":Lcom/baidu/android/common/net/ConnectManager;
    .restart local v2    # "currentTime":J
    :cond_3f
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    goto :goto_3c
.end method

.method public static endEntityViaReflection(Lorg/apache/http/HttpEntity;)V
    .registers 10
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 503
    instance-of v7, p0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v7, :cond_30

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "f":Ljava/lang/reflect/Field;
    :try_start_5
    const-class v7, Lorg/apache/http/entity/HttpEntityWrapper;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 507
    .local v3, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_e
    if-ge v4, v5, :cond_1f

    aget-object v2, v0, v4

    .line 508
    .local v2, "ff":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "wrappedEntity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 509
    move-object v1, v2

    .line 513
    .end local v2    # "ff":Ljava/lang/reflect/Field;
    :cond_1f
    if-eqz v1, :cond_30

    .line 514
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 515
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/HttpEntity;

    .line 516
    .local v6, "wrapped":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_30

    .line 517
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_34

    .line 523
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "wrapped":Lorg/apache/http/HttpEntity;
    :cond_30
    :goto_30
    return-void

    .line 507
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "ff":Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 520
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "ff":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_34
    move-exception v7

    goto :goto_30
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;

    .prologue
    .line 429
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 430
    invoke-virtual {p1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "queryString":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 438
    .end local v0    # "queryString":Ljava/lang/String;
    :cond_27
    :goto_27
    return-object p0

    .line 434
    .restart local v0    # "queryString":Ljava/lang/String;
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_27
.end method

.method public static silentCloseInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 448
    if-eqz p0, :cond_5

    .line 449
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 452
    :cond_5
    :goto_5
    return-void

    .line 451
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public cancelRequests(Landroid/content/Context;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mayInterruptIfRunning"    # Z

    .prologue
    .line 410
    iget-object v4, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mRequestMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 411
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v2, :cond_26

    .line 412
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 413
    .local v3, "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 414
    .local v1, "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v1, :cond_e

    .line 415
    invoke-interface {v1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_e

    .line 419
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v3    # "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    :cond_26
    iget-object v4, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mRequestMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    const/4 v3, 0x0

    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 328
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 339
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 340
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "headers"    # [Lorg/apache/http/Header;
    .param p5, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 352
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p2, p3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p4, :cond_e

    .line 354
    invoke-interface {v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 356
    :cond_e
    invoke-virtual {p0, v0, p5, p1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v3, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mRequestMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 184
    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    goto :goto_a

    .line 186
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;>;"
    :cond_21
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 187
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    const/4 v3, 0x0

    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 247
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 258
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 259
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "headers"    # [Lorg/apache/http/Header;
    .param p5, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 271
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p4, :cond_e

    .line 273
    invoke-interface {v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 275
    :cond_e
    invoke-virtual {p0, v0, p5, p1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    const/4 v3, 0x0

    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 286
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 297
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 298
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "headers"    # [Lorg/apache/http/Header;
    .param p5, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 310
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_e

    .line 312
    invoke-virtual {p3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 314
    :cond_e
    if-eqz p4, :cond_13

    .line 315
    invoke-virtual {v0, p4}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 317
    :cond_13
    invoke-virtual {p0, v0, p5, p1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;Landroid/content/Context;)V

    .line 318
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    const/4 v3, 0x0

    .line 366
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 367
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 378
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 379
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;[Lorg/apache/http/Header;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p4, "headers"    # [Lorg/apache/http/Header;
    .param p5, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 391
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_e

    .line 393
    invoke-virtual {p3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 395
    :cond_e
    if-eqz p4, :cond_13

    .line 396
    invoke-virtual {v0, p4}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 398
    :cond_13
    invoke-virtual {p0, v0, p5, p1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;Landroid/content/Context;)V

    .line 399
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;Landroid/content/Context;)V
    .registers 9
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    invoke-direct {p0, p3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->checkNetworkStateAndAdjust(Landroid/content/Context;)V

    .line 458
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;

    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    invoke-direct {v0, p0, v3, p1, p2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 462
    .local v0, "asyncHttpRequest":Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;
    :try_start_12
    sget-object v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->sThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 463
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p3, :cond_36

    .line 464
    iget-object v3, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mRequestMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 465
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v2, :cond_2e

    .line 466
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 467
    .restart local v2    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    iget-object v3, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mRequestMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_2e
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_12 .. :try_end_36} :catch_37

    .line 474
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_36
    :goto_36
    return-void

    .line 472
    :catch_37
    move-exception v3

    goto :goto_36
.end method

.method public setMaxRetries(I)V
    .registers 4
    .param p1, "maxRetries"    # I

    .prologue
    .line 232
    if-gtz p1, :cond_3

    .line 233
    const/4 p1, 0x3

    .line 235
    :cond_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 236
    return-void
.end method

.method public setNetworkCheckInterval(I)V
    .registers 3
    .param p1, "interval"    # I

    .prologue
    .line 220
    const/16 v0, 0x2710

    if-gt p1, v0, :cond_6

    .line 221
    const/16 p1, 0x2710

    .line 223
    :cond_6
    iput p1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->mNetworkCheckInterval:I

    .line 224
    return-void
.end method

.method public setTimeout(I)V
    .registers 6
    .param p1, "timeout"    # I

    .prologue
    .line 195
    if-gtz p1, :cond_4

    .line 196
    const/16 p1, 0x3a98

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 199
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 200
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 201
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 202
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 211
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 212
    return-void
.end method
