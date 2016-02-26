.class public Lcom/baidu/wallet/core/restframework/b/a;
.super Lcom/baidu/wallet/core/restframework/b/c;


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/b/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/restframework/b/c;-><init>()V

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/restframework/http/i;)Ljava/nio/charset/Charset;
    .registers 3

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/i;->c()Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/i;->c()Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/j;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/i;->c()Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/j;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, Lcom/baidu/wallet/core/restframework/b/a;->a:Ljava/nio/charset/Charset;

    goto :goto_1a
.end method


# virtual methods
.method protected a(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/f;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lcom/baidu/wallet/core/restframework/http/f;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p2}, Lcom/baidu/wallet/core/restframework/http/f;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/wallet/core/restframework/b/a;->a(Lcom/baidu/wallet/core/restframework/http/i;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copyToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    :try_start_15
    invoke-static {v1, p1}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v0

    new-instance v1, Lcom/baidu/wallet/core/restframework/RestRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Ljava/lang/Class;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/j;)Z
    .registers 4

    invoke-virtual {p0, p2}, Lcom/baidu/wallet/core/restframework/b/a;->a(Lcom/baidu/wallet/core/restframework/http/j;)Z

    move-result v0

    return v0
.end method
