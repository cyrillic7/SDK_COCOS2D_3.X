.class final Lcom/meizu/filetransfer/e;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/meizu/filetransfer/MAndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/meizu/filetransfer/MAndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/filetransfer/e;->a:Lcom/meizu/filetransfer/MAndroidHttpClient;

    .line 173
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 4

    .prologue
    .line 188
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 190
    const-string v1, "http.authscheme-registry"

    .line 191
    invoke-virtual {p0}, Lcom/meizu/filetransfer/e;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 189
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v1, "http.cookiespec-registry"

    .line 194
    invoke-virtual {p0}, Lcom/meizu/filetransfer/e;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 192
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v1, "http.auth.credentials-provider"

    .line 197
    invoke-virtual {p0}, Lcom/meizu/filetransfer/e;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 195
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-object v0
.end method

.method protected final createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 5

    .prologue
    .line 177
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 178
    # getter for: Lcom/meizu/filetransfer/MAndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;
    invoke-static {}, Lcom/meizu/filetransfer/MAndroidHttpClient;->access$2()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 179
    new-instance v1, Lcom/meizu/filetransfer/f;

    iget-object v2, p0, Lcom/meizu/filetransfer/e;->a:Lcom/meizu/filetransfer/MAndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/meizu/filetransfer/f;-><init>(Lcom/meizu/filetransfer/MAndroidHttpClient;B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 181
    return-object v0
.end method
