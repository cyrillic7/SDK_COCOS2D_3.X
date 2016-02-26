.class public Lcom/baidu/frontia/a/c/c;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/frontia/a/c/c$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/baidu/frontia/a/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/frontia/a/c/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/frontia/a/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/frontia/a/c/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/frontia/a/c/a;)V
    .registers 10

    const/4 v0, 0x0

    const/16 v3, 0x7530

    const/16 v5, 0xa

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/frontia/a/c/c;->a:Z

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ProxyHttpClient created and never closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/frontia/a/c/c;->b:Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/baidu/frontia/a/c/c;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    if-nez p1, :cond_87

    if-nez p3, :cond_87

    move-object v1, v0

    :goto_28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    :try_start_34
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    const-string v0, "http.route.default-proxy"

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_46} :catch_a1

    :cond_46
    :goto_46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bf

    invoke-virtual {p0}, Lcom/baidu/frontia/a/c/c;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :goto_53
    const-wide/16 v0, 0x7530

    invoke-static {v2, v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    invoke-static {v2, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const-string v0, "compatibility"

    invoke-static {v2, v0}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v0, "http.connection-manager.factory-object"

    new-instance v1, Lcom/baidu/frontia/a/c/d;

    invoke-direct {v1, p0}, Lcom/baidu/frontia/a/c/d;-><init>(Lcom/baidu/frontia/a/c/c;)V

    invoke-interface {v2, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v0, Lcom/baidu/frontia/a/c/e;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/a/c/e;-><init>(Lcom/baidu/frontia/a/c/c;)V

    invoke-virtual {p0, v0}, Lcom/baidu/frontia/a/c/c;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lcom/baidu/frontia/a/c/f;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/a/c/f;-><init>(Lcom/baidu/frontia/a/c/c;)V

    invoke-virtual {p0, v0}, Lcom/baidu/frontia/a/c/c;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    return-void

    :cond_87
    if-nez p3, :cond_90

    if-eqz p1, :cond_90

    new-instance p3, Lcom/baidu/frontia/a/c/a;

    invoke-direct {p3, p1}, Lcom/baidu/frontia/a/c/a;-><init>(Landroid/content/Context;)V

    :cond_90
    if-eqz p3, :cond_c5

    invoke-virtual {p3}, Lcom/baidu/frontia/a/c/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/frontia/a/c/c;->a:Z

    invoke-virtual {p3}, Lcom/baidu/frontia/a/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/frontia/a/c/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :catch_a1
    move-exception v0

    const-string v1, "FrontiaHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_bf
    const-string v0, "Baidu-Frontia-Android"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    goto :goto_53

    :cond_c5
    move-object v1, v0

    goto/16 :goto_28
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/a/c/c;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/baidu/frontia/a/c/c;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/frontia/a/c/c;->b:Ljava/lang/RuntimeException;

    :cond_e
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    return-object v0
.end method
