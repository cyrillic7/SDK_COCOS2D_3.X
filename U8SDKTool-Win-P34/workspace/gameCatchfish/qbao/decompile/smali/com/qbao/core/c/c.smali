.class public Lcom/qbao/core/c/c;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/c/c$a;,
        Lcom/qbao/core/c/c$b;,
        Lcom/qbao/core/c/c$c;
    }
.end annotation


# static fields
.field private static final L:I = 0x2

.field private static final M:I = 0x4

.field private static final N:I = 0x1e

.field private static Q:Lorg/apache/http/conn/ClientConnectionManager;


# instance fields
.field private O:Lcom/qbao/core/c/g;

.field final P:Ljava/util/concurrent/ExecutorService;

.field private R:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 155
    invoke-static {}, Lcom/qbao/core/c/c;->A()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 156
    new-instance v0, Lcom/qbao/core/c/c$a;

    invoke-direct {v0, p0}, Lcom/qbao/core/c/c$a;-><init>(Lcom/qbao/core/c/c;)V

    iput-object v0, p0, Lcom/qbao/core/c/c;->P:Ljava/util/concurrent/ExecutorService;

    .line 157
    iput-object p1, p0, Lcom/qbao/core/c/c;->R:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/qbao/core/c/c$1;

    invoke-direct {v0, p0}, Lcom/qbao/core/c/c$1;-><init>(Lcom/qbao/core/c/c;)V

    invoke-virtual {p0, v0}, Lcom/qbao/core/c/c;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 168
    new-instance v0, Lcom/qbao/core/c/c$2;

    invoke-direct {v0, p0}, Lcom/qbao/core/c/c$2;-><init>(Lcom/qbao/core/c/c;)V

    invoke-virtual {p0, v0}, Lcom/qbao/core/c/c;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 187
    return-void
.end method

.method static final A()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 86
    new-instance v1, Lcom/qbao/core/c/c$c;

    invoke-direct {v1, v0}, Lcom/qbao/core/c/c$c;-><init>(Ljava/security/KeyStore;)V

    .line 88
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 90
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 91
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 92
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 93
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v1, Lcom/qbao/core/c/c;->Q:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_47

    .line 98
    :goto_44
    sget-object v0, Lcom/qbao/core/c/c;->Q:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0

    .line 94
    :catch_47
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method static synthetic a(Lcom/qbao/core/c/c;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qbao/core/c/c;->R:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/qbao/core/c/a;J)V
    .registers 12

    .prologue
    .line 194
    new-instance v7, Lcom/qbao/core/c/c$3;

    invoke-direct {v7, p0, p1}, Lcom/qbao/core/c/c$3;-><init>(Lcom/qbao/core/c/c;Lcom/qbao/core/c/a;)V

    .line 200
    new-instance v3, Lcom/qbao/core/c/c$4;

    invoke-direct {v3, p0, p1, v7}, Lcom/qbao/core/c/c$4;-><init>(Lcom/qbao/core/c/c;Lcom/qbao/core/c/a;Ljava/lang/Runnable;)V

    .line 207
    new-instance v1, Lcom/qbao/core/c/c$5;

    move-object v2, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/qbao/core/c/c$5;-><init>(Lcom/qbao/core/c/c;Ljava/lang/Runnable;JLcom/qbao/core/c/a;Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/qbao/core/c/c;->P:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 218
    return-void
.end method

.method public final b(Lcom/qbao/core/c/a;)V
    .registers 4

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/qbao/core/c/a;->timeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qbao/core/c/c;->a(Lcom/qbao/core/c/a;J)V

    .line 191
    return-void
.end method
