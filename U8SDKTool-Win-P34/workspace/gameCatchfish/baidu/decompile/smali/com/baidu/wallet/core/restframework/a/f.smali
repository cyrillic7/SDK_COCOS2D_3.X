.class final Lcom/baidu/wallet/core/restframework/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/d;


# instance fields
.field private final a:Lcom/baidu/wallet/core/restframework/http/b;

.field private final b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final c:Lcom/baidu/wallet/core/restframework/http/i;

.field private final d:Z

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/lang/String;

.field private g:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/baidu/wallet/core/restframework/http/b;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/wallet/core/restframework/http/i;

    invoke-direct {v0}, Lcom/baidu/wallet/core/restframework/http/i;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->c:Lcom/baidu/wallet/core/restframework/http/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->d:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->f:Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->g:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a/f;->a:Lcom/baidu/wallet/core/restframework/http/b;

    iput-object p2, p0, Lcom/baidu/wallet/core/restframework/a/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/baidu/wallet/core/restframework/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/restframework/http/i;[B)Lcom/baidu/wallet/core/restframework/c/b;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Content-Length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/wallet/core/restframework/a/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_46
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->a:Lcom/baidu/wallet/core/restframework/http/b;

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a/f;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/restframework/http/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_56

    new-instance v0, Lcom/baidu/wallet/core/restframework/a/g;

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/restframework/a/g;-><init>(Lorg/apache/http/HttpResponse;)V

    :goto_55
    return-object v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method private e()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const-string v1, "ClientHttpRequest already executed"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/wallet/core/restframework/http/i;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->c:Lcom/baidu/wallet/core/restframework/http/i;

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->a:Lcom/baidu/wallet/core/restframework/http/b;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/b;->a()V

    return-void
.end method

.method public c()Lcom/baidu/wallet/core/restframework/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/wallet/core/restframework/a/f;->e()V

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_c
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a/f;->c:Lcom/baidu/wallet/core/restframework/http/i;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/restframework/http/i;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a/f;->c:Lcom/baidu/wallet/core/restframework/http/i;

    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/wallet/core/restframework/http/i;->a(J)V

    :cond_25
    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a/f;->c:Lcom/baidu/wallet/core/restframework/http/i;

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/restframework/a/f;->a(Lcom/baidu/wallet/core/restframework/http/i;[B)Lcom/baidu/wallet/core/restframework/c/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/wallet/core/restframework/a/f;->g:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/f;->f:Ljava/lang/String;

    return-object v0
.end method
