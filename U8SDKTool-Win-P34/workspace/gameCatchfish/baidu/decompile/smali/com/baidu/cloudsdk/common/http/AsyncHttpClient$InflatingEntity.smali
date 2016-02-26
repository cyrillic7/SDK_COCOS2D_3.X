.class Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatingEntity"
.end annotation


# instance fields
.field gzipStream:Ljava/util/zip/GZIPInputStream;

.field wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .param p1, "wrapped"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 529
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 549
    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->gzipStream:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 550
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 551
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    .line 537
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->gzipStream:Ljava/util/zip/GZIPInputStream;

    .line 538
    iget-object v0, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;->gzipStream:Ljava/util/zip/GZIPInputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 543
    const-wide/16 v0, -0x1

    return-wide v0
.end method
