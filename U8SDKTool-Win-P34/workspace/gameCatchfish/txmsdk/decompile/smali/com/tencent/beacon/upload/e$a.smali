.class public final Lcom/tencent/beacon/upload/e$a;
.super Lcom/tencent/beacon/upload/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/upload/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tencent/beacon/upload/e;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/tencent/beacon/upload/e$a;->a:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 173
    if-nez p1, :cond_c

    .line 174
    const-string v1, "no destUrl!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_b
    :goto_b
    return-object v0

    .line 182
    :cond_c
    if-eqz p2, :cond_3c

    :try_start_e
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 186
    :goto_13
    invoke-direct {p0, p3}, Lcom/tencent/beacon/upload/e$a;->a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 187
    if-nez v3, :cond_51

    .line 188
    const-string v1, "no httpClient!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_21} :catch_22
    .catchall {:try_start_e .. :try_end_21} :catchall_48

    goto :goto_b

    .line 206
    :catch_22
    move-exception v1

    move-object v2, v0

    .line 207
    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    const-string v3, "execute error:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_91

    .line 211
    if-eqz v2, :cond_b

    .line 212
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_b

    .line 182
    :cond_3c
    :try_start_3c
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_22
    .catchall {:try_start_3c .. :try_end_47} :catchall_48

    goto :goto_13

    .line 211
    :catchall_48
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4b
    if-eqz v2, :cond_50

    .line 212
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_50
    throw v0

    .line 193
    :cond_51
    :try_start_51
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_56} :catch_22
    .catchall {:try_start_51 .. :try_end_56} :catchall_48

    .line 195
    :try_start_56
    const-string v4, "wup_version"

    const-string v5, "3.0"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v4, "TYPE_COMPRESS"

    const-string v5, "2"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 198
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 201
    invoke-interface {v3, v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_6f} :catch_93
    .catchall {:try_start_56 .. :try_end_6f} :catchall_91

    move-result-object v1

    .line 202
    :try_start_70
    const-string v0, "http.request"

    invoke-interface {v4, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 204
    const-string v3, "execute request:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_8b} :catch_95
    .catchall {:try_start_70 .. :try_end_8b} :catchall_91

    .line 211
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    move-object v0, v1

    goto/16 :goto_b

    :catchall_91
    move-exception v0

    goto :goto_4b

    .line 206
    :catch_93
    move-exception v1

    goto :goto_24

    :catch_95
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_24
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 276
    :try_start_1
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 277
    const/16 v0, 0x7530

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 278
    const/16 v0, 0x4e20

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 279
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 282
    const-string v0, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/params/BasicHttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 284
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 287
    new-instance v1, Lcom/tencent/beacon/upload/e$a$1;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/upload/e$a$1;-><init>(Lcom/tencent/beacon/upload/e$a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 297
    if-eqz p1, :cond_5a

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 298
    const-string v1, "use proxy: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 301
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 302
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 316
    :goto_59
    return-object v0

    .line 305
    :cond_5a
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_63} :catch_64

    goto :goto_59

    .line 311
    :catch_64
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    const-string v0, "httpclient error!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    const/4 v0, 0x0

    goto :goto_59
.end method

.method private static a(Lorg/apache/http/HttpResponse;)[B
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 224
    if-nez p0, :cond_6

    .line 266
    :cond_5
    :goto_5
    return-object v0

    .line 228
    :cond_6
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 229
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_27

    .line 230
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 231
    const-string v3, "request failure code:%d , line:%s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 235
    :cond_27
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 236
    if-nez v1, :cond_35

    .line 237
    const-string v1, "no response datas!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 244
    :cond_35
    :try_start_35
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_43} :catch_91
    .catchall {:try_start_35 .. :try_end_43} :catchall_81

    .line 246
    :try_start_43
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    :goto_48
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_71

    .line 249
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_52} :catch_53
    .catchall {:try_start_43 .. :try_end_52} :catchall_8f

    goto :goto_48

    .line 253
    :catch_53
    move-exception v1

    .line 254
    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    const-string v3, "read error %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_8f

    .line 258
    if-eqz v2, :cond_5

    .line 259
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_5

    .line 261
    :catch_6c
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 251
    :cond_71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 252
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_77} :catch_53
    .catchall {:try_start_71 .. :try_end_77} :catchall_8f

    move-result-object v0

    .line 258
    :try_start_78
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_5

    .line 261
    :catch_7c
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 257
    :catchall_81
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 258
    :goto_84
    if-eqz v2, :cond_89

    .line 259
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8a

    .line 263
    :cond_89
    :goto_89
    throw v0

    .line 261
    :catch_8a
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_89

    .line 257
    :catchall_8f
    move-exception v0

    goto :goto_84

    .line 253
    :catch_91
    move-exception v1

    move-object v2, v0

    goto :goto_54
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/beacon/upload/d;Lcom/tencent/beacon/upload/a;)[B
    .registers 19

    .prologue
    .line 74
    if-nez p1, :cond_c

    .line 75
    const-string v2, "no destUrl!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const/4 v2, 0x0

    .line 160
    :goto_b
    return-object v2

    .line 80
    :cond_c
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    if-nez p2, :cond_75

    const-wide/16 v2, 0x0

    .line 83
    :goto_12
    const-string v4, "start req: %s sz:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 v4, 0x0

    .line 86
    :goto_25
    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x3

    if-ge v6, v8, :cond_12d

    const/4 v6, 0x2

    if-ge v5, v6, :cond_12d

    .line 88
    if-eqz v4, :cond_7a

    .line 89
    const/4 v4, 0x0

    .line 103
    :cond_30
    :goto_30
    iget-object v6, p0, Lcom/tencent/beacon/upload/e$a;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/beacon/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 105
    if-eqz p3, :cond_3d

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, p1, v2, v3, v6}, Lcom/tencent/beacon/upload/d;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 109
    :cond_3d
    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v6}, Lcom/tencent/beacon/upload/e$a;->a(Ljava/lang/String;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_121

    .line 113
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 114
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 115
    const-string v6, "response code:%d "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v6, v11}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const/16 v6, 0xc8

    if-ne v10, v6, :cond_b0

    .line 118
    invoke-static {v8}, Lcom/tencent/beacon/upload/e$a;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object v4

    .line 119
    if-eqz p3, :cond_73

    .line 120
    if-nez v4, :cond_ad

    const-wide/16 v2, 0x0

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/upload/d;->a(J)V

    :cond_73
    move-object v2, v4

    .line 122
    goto :goto_b

    .line 81
    :cond_75
    move-object/from16 v0, p2

    array-length v2, v0

    int-to-long v2, v2

    goto :goto_12

    .line 90
    :cond_7a
    const/4 v6, 0x1

    if-le v7, v6, :cond_30

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "try time:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const/4 v6, 0x2

    if-ne v7, v6, :cond_a2

    .line 94
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/beacon/upload/a;->c()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_a2

    .line 95
    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/tencent/beacon/upload/a;->a(Z)V

    .line 99
    :cond_a2
    const-wide/16 v8, 0x1388

    :try_start_a4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_30

    :catch_a8
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_30

    .line 120
    :cond_ad
    array-length v2, v4

    int-to-long v2, v2

    goto :goto_6e

    .line 123
    :cond_b0
    const/16 v6, 0x12d

    if-eq v10, v6, :cond_c0

    const/16 v6, 0x12e

    if-eq v10, v6, :cond_c0

    const/16 v6, 0x12f

    if-eq v10, v6, :cond_c0

    const/16 v6, 0x133

    if-ne v10, v6, :cond_ea

    :cond_c0
    const/4 v6, 0x1

    :goto_c1
    if-eqz v6, :cond_130

    .line 124
    const/4 v6, 0x1

    .line 125
    const-string v4, "Location"

    invoke-interface {v8, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 126
    if-nez v4, :cond_ec

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "redirect code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Location is null! return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 123
    :cond_ea
    const/4 v6, 0x0

    goto :goto_c1

    .line 133
    :cond_ec
    add-int/lit8 v7, v5, 0x1

    .line 134
    const/4 v8, 0x0

    .line 135
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 136
    const-string v4, "redirect code:%d , to:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v11

    const/4 v10, 0x1

    aput-object p1, v5, v10

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :goto_105
    const-wide/16 v4, 0x0

    .line 144
    if-eqz v9, :cond_115

    .line 145
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 146
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gez v9, :cond_115

    const-wide/16 v4, 0x0

    .line 149
    :cond_115
    if-eqz p3, :cond_11c

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/upload/d;->a(J)V

    :cond_11c
    move v4, v6

    move v5, v7

    move v6, v8

    .line 152
    goto/16 :goto_25

    .line 154
    :cond_121
    if-eqz p3, :cond_12a

    .line 155
    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lcom/tencent/beacon/upload/d;->a(J)V

    :cond_12a
    move v6, v7

    .line 157
    goto/16 :goto_25

    .line 160
    :cond_12d
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_130
    move v6, v4

    move v8, v7

    move v7, v5

    goto :goto_105
.end method
