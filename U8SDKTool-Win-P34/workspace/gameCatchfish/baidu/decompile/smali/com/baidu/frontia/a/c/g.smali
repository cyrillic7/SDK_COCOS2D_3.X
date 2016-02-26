.class public Lcom/baidu/frontia/a/c/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    new-instance v3, Lcom/baidu/frontia/a/c/c;

    invoke-direct {v3}, Lcom/baidu/frontia/a/c/c;-><init>()V

    const/4 v1, 0x0

    :goto_9
    if-nez v0, :cond_3f

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3f

    :try_start_e
    invoke-virtual {v3, p0}, Lcom/baidu/frontia/a/c/c;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1e

    move-result-object v2

    :goto_12
    if-nez v2, :cond_19

    const-wide/16 v4, 0x3e8

    :try_start_16
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_3d

    :cond_19
    :goto_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_9

    :catch_1e
    move-exception v2

    const-string v4, "HttpRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_12

    :catch_3d
    move-exception v0

    goto :goto_19

    :cond_3f
    return-object v0
.end method
