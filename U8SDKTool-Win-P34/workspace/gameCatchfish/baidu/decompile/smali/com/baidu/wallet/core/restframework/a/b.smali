.class public Lcom/baidu/wallet/core/restframework/a/b;
.super Lcom/baidu/wallet/core/restframework/http/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/restframework/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/wallet/core/restframework/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/a/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/a/h;)V
    .registers 8

    const v3, 0xea60

    invoke-direct {p0}, Lcom/baidu/wallet/core/restframework/http/b;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProxyHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->e:Ljava/lang/RuntimeException;

    if-nez p3, :cond_16

    new-instance p3, Lcom/baidu/wallet/core/restframework/a/h;

    invoke-direct {p3, p1}, Lcom/baidu/wallet/core/restframework/a/h;-><init>(Landroid/content/Context;)V

    :cond_16
    invoke-virtual {p3}, Lcom/baidu/wallet/core/restframework/a/h;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->d:Z

    invoke-virtual {p3}, Lcom/baidu/wallet/core/restframework/a/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/wallet/core/restframework/a/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4e

    :try_start_34
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/a/b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4e} :catch_73

    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_72
    return-void

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/restframework/a/b;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->e:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/b;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/b;->e:Ljava/lang/RuntimeException;

    :cond_e
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/restframework/http/b;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    return-object v0
.end method
