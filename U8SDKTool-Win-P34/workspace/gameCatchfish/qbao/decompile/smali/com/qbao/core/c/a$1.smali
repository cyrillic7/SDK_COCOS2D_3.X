.class Lcom/qbao/core/c/a$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/c/a;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic K:Lcom/qbao/core/c/a;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    new-array v2, v6, [B

    invoke-static {v1, v2}, Lcom/qbao/core/c/a;->a(Lcom/qbao/core/c/a;[B)V

    .line 289
    iget-object v1, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/qbao/core/c/a;->a(Lcom/qbao/core/c/a;I)V

    .line 290
    if-eqz v0, :cond_46

    .line 291
    iget-object v1, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/core/c/a;->a(Lcom/qbao/core/c/a;[B)V

    .line 292
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_43

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iget-object v1, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    invoke-static {v1}, Lcom/qbao/core/c/a;->a(Lcom/qbao/core/c/a;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_43

    .line 293
    iget-object v1, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    invoke-static {v1, v6}, Lcom/qbao/core/c/a;->a(Lcom/qbao/core/c/a;I)V

    .line 295
    :cond_43
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 297
    :cond_46
    iget-object v0, p0, Lcom/qbao/core/c/a$1;->K:Lcom/qbao/core/c/a;

    invoke-static {v0, p1}, Lcom/qbao/core/c/a;->a(Lcom/qbao/core/c/a;Lorg/apache/http/HttpResponse;)V

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method
