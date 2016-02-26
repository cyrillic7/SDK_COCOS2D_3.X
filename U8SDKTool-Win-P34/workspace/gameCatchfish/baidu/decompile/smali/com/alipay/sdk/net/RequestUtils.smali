.class public Lcom/alipay/sdk/net/RequestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/sdk/net/MspClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 56
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 58
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 59
    const/4 v0, 0x0

    .line 61
    :try_start_d
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_3c
    .catchall {:try_start_d .. :try_end_10} :catchall_9b

    move-result-object v0

    .line 62
    :try_start_11
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1b

    if-nez v0, :cond_4b

    .line 64
    :cond_1b
    new-instance v3, Lcom/alipay/sdk/exception/NetErrorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_a0

    .line 95
    :catch_3c
    move-exception v1

    :try_start_3d
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    .line 98
    :catchall_43
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 99
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_99

    .line 101
    :goto_4a
    throw v0

    .line 68
    :cond_4b
    :try_start_4b
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_63

    .line 71
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 72
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_62} :catch_3c
    .catchall {:try_start_4b .. :try_end_62} :catchall_a0

    move-object v0, v1

    .line 76
    :cond_63
    :try_start_63
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 77
    if-gez v1, :cond_a5

    .line 78
    const/16 v1, 0x1000

    move v2, v1

    .line 81
    :goto_6d
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-nez v1, :cond_75

    .line 84
    const-string v1, "UTF-8"

    .line 86
    :cond_75
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 88
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 90
    :goto_83
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8f

    .line 91
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_83

    .line 93
    :cond_8f
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_92} :catch_3c
    .catchall {:try_start_63 .. :try_end_92} :catchall_43

    move-result-object v1

    .line 99
    :try_start_93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    .line 101
    :goto_96
    return-object v1

    :catch_97
    move-exception v0

    goto :goto_96

    :catch_99
    move-exception v1

    goto :goto_4a

    .line 98
    :catchall_9b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_47

    :catchall_a0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_47

    :cond_a5
    move v2, v1

    goto :goto_6d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    if-nez v0, :cond_14

    .line 37
    new-instance v0, Lcom/alipay/sdk/net/MspClient;

    invoke-direct {v0, p0, p1}, Lcom/alipay/sdk/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    .line 44
    :cond_b
    :goto_b
    if-eqz p3, :cond_26

    .line 45
    sget-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/sdk/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 50
    :goto_13
    return-object v0

    .line 38
    :cond_14
    sget-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    invoke-virtual {v0}, Lcom/alipay/sdk/net/MspClient;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    sget-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/net/MspClient;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 47
    :cond_26
    sget-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/net/MspClient;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_13
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/net/RequestUtils;->a:Lcom/alipay/sdk/net/MspClient;

    .line 109
    return-void
.end method
