.class public Lcom/duoku/platform/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/apache/http/client/HttpClient;

.field private static b:Lorg/apache/http/params/HttpParams;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    .line 127
    const/4 v0, 0x4

    sput v0, Lcom/duoku/platform/g/c;->d:I

    .line 128
    const/16 v0, 0x80

    sput v0, Lcom/duoku/platform/g/c;->e:I

    .line 129
    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/g/c;->f:I

    .line 130
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/duoku/platform/g/c;->g:Ljava/util/concurrent/BlockingQueue;

    .line 132
    new-instance v0, Lcom/duoku/platform/g/c$1;

    invoke-direct {v0}, Lcom/duoku/platform/g/c$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/g/c;->h:Ljava/util/concurrent/ThreadFactory;

    .line 142
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/duoku/platform/g/c;->d:I

    sget v3, Lcom/duoku/platform/g/c;->e:I

    sget v0, Lcom/duoku/platform/g/c;->f:I

    int-to-long v4, v0

    .line 143
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/duoku/platform/g/c;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/duoku/platform/g/c;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    .line 142
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/duoku/platform/g/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 145
    return-void
.end method

.method public static declared-synchronized a()Lorg/apache/http/client/HttpClient;
    .registers 6

    .prologue
    .line 59
    const-class v1, Lcom/duoku/platform/g/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/g/c;->a:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_71

    .line 60
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    .line 61
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 62
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "ISO-8859-1"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 65
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 66
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 67
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 70
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 72
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v3, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 74
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/duoku/platform/g/c;->a:Lorg/apache/http/client/HttpClient;

    .line 75
    sget-object v0, Lcom/duoku/platform/g/c;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    .line 76
    sget-object v0, Lcom/duoku/platform/g/c;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 77
    const-string v2, "http.protocol.expect-continue"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    :cond_71
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/duoku/platform/g/b;

    invoke-direct {v0}, Lcom/duoku/platform/g/b;-><init>()V

    .line 84
    invoke-virtual {v0}, Lcom/duoku/platform/g/b;->d()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 85
    sget-object v2, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 87
    sget-object v2, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 90
    :cond_94
    invoke-virtual {v0}, Lcom/duoku/platform/g/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Lcom/duoku/platform/g/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    sget-object v3, Lcom/duoku/platform/g/c;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 95
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 105
    :cond_bc
    :goto_bc
    sget-object v0, Lcom/duoku/platform/g/c;->a:Lorg/apache/http/client/HttpClient;
    :try_end_be
    .catchall {:try_start_3 .. :try_end_be} :catchall_d2

    monitor-exit v1

    return-object v0

    .line 98
    :cond_c0
    :try_start_c0
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 99
    sget-object v0, Lcom/duoku/platform/g/c;->b:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_d1
    .catchall {:try_start_c0 .. :try_end_d1} :catchall_d2

    goto :goto_bc

    .line 59
    :catchall_d2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 2

    .prologue
    .line 109
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 149
    sget-object v0, Lcom/duoku/platform/g/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 4

    .prologue
    .line 115
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "Content-Type"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "Accept-Encoding"

    const-string v2, "\"\""

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "encrypttype"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v0
.end method
