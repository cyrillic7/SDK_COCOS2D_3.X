.class final Lcom/meizu/filetransfer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private synthetic a:Lcom/meizu/filetransfer/MAndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/meizu/filetransfer/MAndroidHttpClient;)V
    .registers 2

    .prologue
    .line 397
    iput-object p1, p0, Lcom/meizu/filetransfer/f;->a:Lcom/meizu/filetransfer/MAndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/filetransfer/MAndroidHttpClient;B)V
    .registers 3

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/meizu/filetransfer/f;-><init>(Lcom/meizu/filetransfer/MAndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/meizu/filetransfer/f;->a:Lcom/meizu/filetransfer/MAndroidHttpClient;

    # getter for: Lcom/meizu/filetransfer/MAndroidHttpClient;->curlConfiguration:Lcom/meizu/filetransfer/g;
    invoke-static {v0}, Lcom/meizu/filetransfer/MAndroidHttpClient;->access$0(Lcom/meizu/filetransfer/MAndroidHttpClient;)Lcom/meizu/filetransfer/g;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_1c

    .line 402
    invoke-static {v0}, Lcom/meizu/filetransfer/g;->a(Lcom/meizu/filetransfer/g;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 403
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1c

    .line 406
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/filetransfer/MAndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/meizu/filetransfer/MAndroidHttpClient;->access$1(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/filetransfer/g;->a(Lcom/meizu/filetransfer/g;Ljava/lang/String;)V

    .line 408
    :cond_1c
    return-void
.end method
