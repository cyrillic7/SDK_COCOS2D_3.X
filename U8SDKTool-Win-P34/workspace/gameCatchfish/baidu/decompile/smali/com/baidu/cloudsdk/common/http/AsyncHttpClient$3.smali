.class Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$3;->this$0:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 162
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_2e

    .line 163
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 164
    .local v2, "encoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_2e

    .line 165
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_12
    if-ge v4, v5, :cond_2e

    aget-object v1, v0, v4

    .line 166
    .local v1, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 167
    new-instance v6, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient$InflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 173
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "element":Lorg/apache/http/HeaderElement;
    .end local v2    # "encoding":Lorg/apache/http/Header;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2e
    return-void

    .line 165
    .restart local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v1    # "element":Lorg/apache/http/HeaderElement;
    .restart local v2    # "encoding":Lorg/apache/http/Header;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method
