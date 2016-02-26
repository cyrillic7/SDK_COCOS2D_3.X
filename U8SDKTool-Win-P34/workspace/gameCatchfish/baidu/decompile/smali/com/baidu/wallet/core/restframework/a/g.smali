.class final Lcom/baidu/wallet/core/restframework/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/b;


# instance fields
.field private final a:Lorg/apache/http/HttpResponse;

.field private b:Lcom/baidu/wallet/core/restframework/http/i;

.field private c:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a/g;->a:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->c:Ljava/io/InputStream;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->c:Ljava/io/InputStream;

    :cond_b
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method private g()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_8
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method

.method private i()Z
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/g;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/http/c;

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/c;->c:Lcom/baidu/wallet/core/restframework/http/c;

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/restframework/http/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public a()Lcom/baidu/wallet/core/restframework/http/i;
    .registers 7

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->b:Lcom/baidu/wallet/core/restframework/http/i;

    if-nez v0, :cond_27

    new-instance v0, Lcom/baidu/wallet/core/restframework/http/i;

    invoke-direct {v0}, Lcom/baidu/wallet/core/restframework/http/i;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->b:Lcom/baidu/wallet/core/restframework/http/i;

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_27

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/baidu/wallet/core/restframework/a/g;->b:Lcom/baidu/wallet/core/restframework/http/i;

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/baidu/wallet/core/restframework/http/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->b:Lcom/baidu/wallet/core/restframework/http/i;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/wallet/core/restframework/a/g;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/wallet/core/restframework/a/g;->i()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/restframework/a/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public c()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a/g;->c()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->valueOf(I)Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/g;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-direct {p0}, Lcom/baidu/wallet/core/restframework/a/g;->h()V

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method
