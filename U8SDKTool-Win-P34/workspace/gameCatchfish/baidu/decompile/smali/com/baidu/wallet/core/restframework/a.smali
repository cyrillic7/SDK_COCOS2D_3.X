.class public Lcom/baidu/wallet/core/restframework/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/restframework/a$1;,
        Lcom/baidu/wallet/core/restframework/a$b;,
        Lcom/baidu/wallet/core/restframework/a$a;,
        Lcom/baidu/wallet/core/restframework/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Lcom/baidu/wallet/core/restframework/c/c;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/wallet/core/restframework/a;-><init>(ZLandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/wallet/core/restframework/a;->c:Lcom/baidu/wallet/core/restframework/c/c;

    iput-object v1, p0, Lcom/baidu/wallet/core/restframework/a;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/wallet/core/restframework/a;->e:Ljava/lang/String;

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/a$b;->a(Ljava/util/List;)V

    :cond_1f
    iput-object p2, p0, Lcom/baidu/wallet/core/restframework/a;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/wallet/core/restframework/a;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Lcom/baidu/wallet/core/restframework/c/e;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    const-string v0, "#####. execute"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/restframework/a;->a(Ljava/net/URI;Ljava/util/List;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Lcom/baidu/wallet/core/restframework/c/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URI;Ljava/util/List;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Lcom/baidu/wallet/core/restframework/c/e;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "\'url\' must not be null"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\'method\' must not be null"

    invoke-static {p4, v0}, Lcom/baidu/wallet/core/utils/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    new-instance v0, Lcom/baidu/wallet/core/restframework/a/e;

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/wallet/core/restframework/a;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v3}, Lcom/baidu/wallet/core/restframework/a/e;-><init>(Ljava/net/URI;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/baidu/wallet/core/restframework/a/e;->a(Ljava/net/URI;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Ljava/util/List;Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/c/d;
    :try_end_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_17} :catch_f9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_c3
    .catchall {:try_start_b .. :try_end_17} :catchall_e6

    move-result-object v3

    :try_start_18
    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/c/a;

    iget-object v4, p0, Lcom/baidu/wallet/core/restframework/a;->d:Landroid/content/Context;

    invoke-interface {v0, v4, v3}, Lcom/baidu/wallet/core/restframework/c/a;->a(Landroid/content/Context;Lcom/baidu/wallet/core/restframework/c/d;)V
    :try_end_31
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_18 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_31} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_31} :catch_ef
    .catchall {:try_start_18 .. :try_end_31} :catchall_eb

    goto :goto_20

    :catch_32
    move-exception v0

    move-object v2, v1

    :goto_34
    :try_start_34
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    new-instance v4, Lcom/baidu/wallet/core/restframework/RestRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection Timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    :goto_55
    if-eqz v3, :cond_fe

    invoke-interface {v3}, Lcom/baidu/wallet/core/restframework/c/d;->b()V

    :goto_5a
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Lcom/baidu/wallet/core/restframework/c/b;->f()V

    :cond_5f
    throw v0

    :cond_60
    :try_start_60
    invoke-interface {v3}, Lcom/baidu/wallet/core/restframework/c/d;->c()Lcom/baidu/wallet/core/restframework/c/b;
    :try_end_63
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_60 .. :try_end_63} :catch_32
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_ef
    .catchall {:try_start_60 .. :try_end_63} :catchall_eb

    move-result-object v2

    :try_start_64
    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->c()Lcom/baidu/wallet/core/restframework/c/c;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->c()Lcom/baidu/wallet/core/restframework/c/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/baidu/wallet/core/restframework/c/c;->a(Lcom/baidu/wallet/core/restframework/c/b;)Z

    move-result v0

    if-nez v0, :cond_9a

    invoke-direct {p0, p4, p1, v2}, Lcom/baidu/wallet/core/restframework/a;->a(Lcom/baidu/wallet/core/restframework/http/HttpMethod;Ljava/net/URI;Lcom/baidu/wallet/core/restframework/c/b;)V

    if-eqz p5, :cond_8a

    if-eqz v2, :cond_8a

    invoke-interface {p5, v2}, Lcom/baidu/wallet/core/restframework/c/e;->b(Lcom/baidu/wallet/core/restframework/c/b;)Ljava/lang/Object;
    :try_end_7e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_64 .. :try_end_7e} :catch_9e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7e} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7e} :catch_f2
    .catchall {:try_start_64 .. :try_end_7e} :catchall_54

    move-result-object v0

    if-eqz v3, :cond_101

    invoke-interface {v3}, Lcom/baidu/wallet/core/restframework/c/d;->b()V

    :goto_84
    if-eqz v1, :cond_89

    invoke-interface {v1}, Lcom/baidu/wallet/core/restframework/c/b;->f()V

    :cond_89
    :goto_89
    return-object v0

    :cond_8a
    :try_start_8a
    invoke-direct {p0, p4, p1, v2}, Lcom/baidu/wallet/core/restframework/a;->b(Lcom/baidu/wallet/core/restframework/http/HttpMethod;Ljava/net/URI;Lcom/baidu/wallet/core/restframework/c/b;)V
    :try_end_8d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8a .. :try_end_8d} :catch_9e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_f2
    .catchall {:try_start_8a .. :try_end_8d} :catchall_54

    :cond_8d
    :goto_8d
    if-eqz v3, :cond_93

    invoke-interface {v3}, Lcom/baidu/wallet/core/restframework/c/d;->b()V

    move-object v2, v1

    :cond_93
    if-eqz v2, :cond_98

    invoke-interface {v2}, Lcom/baidu/wallet/core/restframework/c/b;->f()V

    :cond_98
    move-object v0, v1

    goto :goto_89

    :cond_9a
    :try_start_9a
    invoke-direct {p0, p4, p1, v2}, Lcom/baidu/wallet/core/restframework/a;->b(Lcom/baidu/wallet/core/restframework/http/HttpMethod;Ljava/net/URI;Lcom/baidu/wallet/core/restframework/c/b;)V
    :try_end_9d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9a .. :try_end_9d} :catch_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_f2
    .catchall {:try_start_9a .. :try_end_9d} :catchall_54

    goto :goto_8d

    :catch_9e
    move-exception v0

    goto :goto_34

    :catch_a0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_a3
    :try_start_a3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Lcom/baidu/wallet/core/restframework/RestRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_c3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_c6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Lcom/baidu/wallet/core/restframework/RestRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestRuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_e6
    .catchall {:try_start_a3 .. :try_end_e6} :catchall_54

    :catchall_e6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_55

    :catchall_eb
    move-exception v0

    move-object v2, v1

    goto/16 :goto_55

    :catch_ef
    move-exception v0

    move-object v2, v1

    goto :goto_c6

    :catch_f2
    move-exception v0

    goto :goto_c6

    :catch_f4
    move-exception v0

    move-object v2, v1

    goto :goto_a3

    :catch_f7
    move-exception v0

    goto :goto_a3

    :catch_f9
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_34

    :cond_fe
    move-object v1, v2

    goto/16 :goto_5a

    :cond_101
    move-object v1, v2

    goto :goto_84
.end method

.method private a(Lcom/baidu/wallet/core/restframework/http/HttpMethod;Ljava/net/URI;Lcom/baidu/wallet/core/restframework/c/b;)V
    .registers 8

    const-string v0, "RestTemplate"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    :try_start_9
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" resulted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/baidu/wallet/core/restframework/c/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    const-string v1, "RestTemplate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method private b(Lcom/baidu/wallet/core/restframework/http/HttpMethod;Ljava/net/URI;Lcom/baidu/wallet/core/restframework/c/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RestTemplate"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-eqz p3, :cond_4d

    :try_start_b
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" resulted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/baidu/wallet/core/restframework/c/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); invoking error handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_4d} :catch_55

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->c()Lcom/baidu/wallet/core/restframework/c/c;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/baidu/wallet/core/restframework/c/c;->b(Lcom/baidu/wallet/core/restframework/c/b;)V

    return-void

    :catch_55
    move-exception v0

    const-string v1, "RestTemplate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    new-instance v0, Lcom/baidu/wallet/core/restframework/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/baidu/wallet/core/restframework/a$c;-><init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/a$1;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/baidu/wallet/core/restframework/a/d;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, p4, v0}, Lcom/baidu/wallet/core/restframework/a/d;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    sget-object v4, Lcom/baidu/wallet/core/restframework/http/HttpMethod;->GET:Lcom/baidu/wallet/core/restframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/restframework/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Lcom/baidu/wallet/core/restframework/c/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/baidu/wallet/core/restframework/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a;->c:Lcom/baidu/wallet/core/restframework/c/c;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a;->b:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Lcom/baidu/wallet/core/restframework/http/h;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    new-instance v0, Lcom/baidu/wallet/core/restframework/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/baidu/wallet/core/restframework/a$c;-><init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/a$1;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/baidu/wallet/core/restframework/a$a;

    invoke-direct {v5, p0, p4}, Lcom/baidu/wallet/core/restframework/a$a;-><init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;)V

    sget-object v4, Lcom/baidu/wallet/core/restframework/http/HttpMethod;->GET:Lcom/baidu/wallet/core/restframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/restframework/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Lcom/baidu/wallet/core/restframework/c/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/http/h;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a;->a:Ljava/util/List;

    return-void
.end method

.method public c()Lcom/baidu/wallet/core/restframework/c/c;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a;->c:Lcom/baidu/wallet/core/restframework/c/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Lcom/baidu/wallet/core/restframework/http/h;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#####. postForEntity. url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/wallet/core/restframework/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/baidu/wallet/core/restframework/a$c;-><init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/a$1;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/baidu/wallet/core/restframework/a$a;

    invoke-direct {v5, p0, p4}, Lcom/baidu/wallet/core/restframework/a$a;-><init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;)V

    sget-object v4, Lcom/baidu/wallet/core/restframework/http/HttpMethod;->POST:Lcom/baidu/wallet/core/restframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/restframework/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/baidu/wallet/core/restframework/http/HttpMethod;Lcom/baidu/wallet/core/restframework/c/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/http/h;

    return-object v0
.end method
