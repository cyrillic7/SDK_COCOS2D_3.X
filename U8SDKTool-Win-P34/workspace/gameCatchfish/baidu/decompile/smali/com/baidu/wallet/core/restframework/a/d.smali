.class public Lcom/baidu/wallet/core/restframework/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/e;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Class;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/restframework/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\'responseType\' must not be null"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\'messageConverters\' must not be empty"

    invoke-static {p2, v0}, Lcom/baidu/wallet/core/utils/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a/d;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/baidu/wallet/core/restframework/a/d;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/restframework/c/b;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v1

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->NO_CONTENT:Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->NOT_MODIFIED:Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/restframework/http/i;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public b(Lcom/baidu/wallet/core/restframework/c/b;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x3

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/a/d;->a(Lcom/baidu/wallet/core/restframework/c/b;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/i;->c()Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    if-nez v0, :cond_b5

    sget-object v0, Lcom/baidu/wallet/core/restframework/a/d;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/baidu/wallet/core/restframework/a/d;->a:Ljava/lang/String;

    const-string v1, "No Content-Type header found, defaulting to application/octet-stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    sget-object v0, Lcom/baidu/wallet/core/restframework/http/j;->f:Lcom/baidu/wallet/core/restframework/http/j;

    move-object v1, v0

    :goto_25
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/b/c;

    iget-object v3, p0, Lcom/baidu/wallet/core/restframework/a/d;->b:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Lcom/baidu/wallet/core/restframework/b/c;->a(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/j;)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v2, Lcom/baidu/wallet/core/restframework/a/d;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7f

    sget-object v2, Lcom/baidu/wallet/core/restframework/a/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/wallet/core/restframework/a/d;->b:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] as \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" using ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a/d;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/wallet/core/restframework/b/c;->c(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_86
    new-instance v0, Lcom/baidu/wallet/core/restframework/RestRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not extract response: no suitable HttpMessageConverter found for response type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/restframework/a/d;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and content type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    move-object v1, v0

    goto/16 :goto_25
.end method
