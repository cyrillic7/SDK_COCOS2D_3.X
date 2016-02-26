.class public Lcom/baidu/wallet/core/restframework/b/b;
.super Lcom/baidu/wallet/core/restframework/b/c;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/wallet/core/restframework/http/j;

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/wallet/core/restframework/http/j;

    const-string v3, "application"

    const-string v4, "octet-stream"

    invoke-direct {v2, v3, v4}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/j;->a:Lcom/baidu/wallet/core/restframework/http/j;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/restframework/b/c;-><init>([Lcom/baidu/wallet/core/restframework/http/j;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/baidu/wallet/core/restframework/RestRuntimeException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/core/restframework/b/b;->b(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/f;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Z
    .registers 3

    const-class v0, [B

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/f;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/baidu/wallet/core/restframework/http/f;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/i;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_20

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-interface {p2}, Lcom/baidu/wallet/core/restframework/http/f;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    invoke-interface {p2}, Lcom/baidu/wallet/core/restframework/http/f;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copyToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_1f
.end method
