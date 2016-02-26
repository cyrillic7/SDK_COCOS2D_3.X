.class Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private mIsBinaryRequest:Z

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    .registers 6
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "responseHandler"    # Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 26
    iput-object p2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 27
    iput-object p3, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 28
    iput-object p4, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    .line 29
    instance-of v0, p4, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;

    iput-boolean v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mIsBinaryRequest:Z

    .line 30
    return-void
.end method

.method private makeRequest()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_27

    .line 62
    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mHttpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 63
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_28

    .line 64
    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    if-eqz v1, :cond_27

    .line 65
    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    invoke-virtual {v1, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 74
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    :cond_27
    return-void

    .line 71
    .restart local v0    # "response":Lorg/apache/http/HttpResponse;
    :cond_28
    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "the request has been cancelled"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    if-eqz v2, :cond_a

    .line 36
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    invoke-virtual {v2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendStartMessage()V

    .line 39
    :cond_a
    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->makeRequest()V

    .line 41
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    if-eqz v2, :cond_16

    .line 42
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    invoke-virtual {v2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFinishMessage()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_16} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    .line 58
    :cond_16
    :goto_16
    return-void

    .line 47
    :catch_17
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    if-eqz v2, :cond_16

    .line 50
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    invoke-virtual {v2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFinishMessage()V

    .line 51
    iget-boolean v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mIsBinaryRequest:Z

    if-eqz v2, :cond_2d

    .line 52
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    check-cast v1, [B

    invoke-virtual {v2, v0, v1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_16

    .line 54
    :cond_2d
    iget-object v2, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpRequest;->mResponseHandler:Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_16

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v1

    goto :goto_16
.end method
