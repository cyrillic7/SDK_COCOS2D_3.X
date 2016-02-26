.class public Lcom/tencent/android/tpush/stat/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static d:Lcom/tencent/android/tpush/stat/a/i;

.field private static volatile e:Lcom/tencent/android/tpush/stat/g;

.field private static f:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Lcom/tencent/android/tpush/stat/a/e;

.field c:Ljava/lang/StringBuilder;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/g;->b()Lcom/tencent/android/tpush/stat/a/i;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    .line 127
    sput-object v1, Lcom/tencent/android/tpush/stat/g;->e:Lcom/tencent/android/tpush/stat/g;

    .line 129
    sput-object v1, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 57
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/g;->b:Lcom/tencent/android/tpush/stat/a/e;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/g;->g:J

    .line 67
    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/g;->g:J

    .line 69
    new-instance v0, Lcom/tencent/android/tpush/stat/a/e;

    invoke-direct {v0}, Lcom/tencent/android/tpush/stat/a/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/g;->b:Lcom/tencent/android/tpush/stat/a/e;

    .line 70
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2e} :catch_8f

    move-result v0

    if-eqz v0, :cond_6a

    .line 72
    :try_start_31
    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 74
    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 78
    const-string v0, "org.apache.commons.logging.Log"

    const-string v1, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    const-string v0, "org.apache.commons.logging.simplelog.showdatetime"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    const-string v0, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_6a} :catch_96

    .line 95
    :cond_6a
    :goto_6a
    :try_start_6a
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 96
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 100
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 103
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 104
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/tencent/android/tpush/stat/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/tencent/android/tpush/stat/h;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/h;-><init>(Lcom/tencent/android/tpush/stat/g;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_8e} :catch_8f

    .line 125
    :goto_8e
    return-void

    .line 120
    :catch_8f
    move-exception v0

    .line 121
    sget-object v1, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    goto :goto_8e

    .line 92
    :catch_96
    move-exception v0

    goto :goto_6a
.end method

.method static a()Landroid/content/Context;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    .line 133
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    .line 164
    :try_start_0
    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 165
    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/stat/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 168
    :cond_13
    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 169
    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 171
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 172
    sget-object v2, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", diff time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 174
    :cond_53
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->s(Landroid/content/Context;)V

    .line 175
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;I)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_5e

    .line 182
    :cond_5d
    :goto_5d
    return-void

    .line 179
    :catch_5e
    move-exception v0

    .line 180
    sget-object v1, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/i;->d(Ljava/lang/Object;)V

    goto :goto_5d
.end method

.method public static b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/g;
    .registers 3

    .prologue
    .line 142
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->e:Lcom/tencent/android/tpush/stat/g;

    if-nez v0, :cond_13

    .line 143
    const-class v1, Lcom/tencent/android/tpush/stat/g;

    monitor-enter v1

    .line 144
    :try_start_7
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->e:Lcom/tencent/android/tpush/stat/g;

    if-nez v0, :cond_12

    .line 145
    new-instance v0, Lcom/tencent/android/tpush/stat/g;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/g;->e:Lcom/tencent/android/tpush/stat/g;

    .line 147
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 149
    :cond_13
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->e:Lcom/tencent/android/tpush/stat/g;

    return-object v0

    .line 147
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;)V
    .registers 6

    .prologue
    .line 644
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/event/d;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/android/tpush/stat/g;->b(Ljava/util/List;Lcom/tencent/android/tpush/stat/f;)V

    .line 645
    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/android/tpush/stat/f;)V
    .registers 15

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 193
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 387
    :cond_c
    :goto_c
    return-void

    .line 196
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 200
    :try_start_11
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v4, "rc4"

    move v0, v2

    .line 204
    :goto_27
    if-ge v0, v3, :cond_44

    .line 205
    iget-object v5, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v5, v3, -0x1

    if-eq v0, v5, :cond_41

    .line 207
    iget-object v5, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 210
    :cond_44
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/?index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/android/tpush/stat/g;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    iget-wide v6, p0, Lcom/tencent/android/tpush/stat/g;->g:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/android/tpush/stat/g;->g:J

    .line 216
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 217
    sget-object v6, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]Send request("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes), content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 223
    :cond_ab
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 227
    const-string v5, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "Cache-Control"

    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 230
    sget-object v5, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v5

    .line 232
    const-string v7, "Content-Encoding"

    invoke-virtual {v6, v7, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-nez v5, :cond_1ed

    .line 234
    iget-object v7, p0, Lcom/tencent/android/tpush/stat/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 248
    :goto_db
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 249
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 250
    array-length v8, v0

    .line 253
    const/16 v9, 0x200

    if-le v3, v9, :cond_ec

    const/4 v2, 0x1

    .line 254
    :cond_ec
    if-eqz v2, :cond_164

    .line 257
    const-string v2, "Content-Encoding"

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gzip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v3, "Content-Encoding"

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v5, :cond_117

    .line 261
    const-string v3, "X-Content-Encoding"

    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 262
    const-string v3, "X-Content-Encoding"

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_117
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 265
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 267
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 268
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 269
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 271
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v2

    if-eqz v2, :cond_164

    .line 272
    sget-object v2, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before Gzip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, after Gzip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/stat/a/i;->h(Ljava/lang/Object;)V

    .line 277
    :cond_164
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/f;->a([B)[B

    move-result-object v0

    .line 278
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 279
    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 284
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 285
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 286
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 287
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v6

    if-eqz v6, :cond_1ae

    .line 288
    sget-object v6, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http recv response status code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", content length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 293
    :cond_1ae
    cmp-long v6, v4, v10

    if-gtz v6, :cond_238

    .line 299
    sget-object v2, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    const-string v3, "Server response no data."

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/stat/a/i;->f(Ljava/lang/Object;)V

    .line 300
    if-eqz p2, :cond_1be

    .line 301
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/f;->b()V

    .line 304
    :cond_1be
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1c1
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c1} :catch_1c3
    .catchall {:try_start_11 .. :try_end_1c1} :catchall_236

    goto/16 :goto_c

    .line 362
    :catch_1c3
    move-exception v0

    .line 367
    :goto_1c4
    if-eqz v0, :cond_c

    .line 368
    sget-object v2, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/i;->a(Ljava/lang/Throwable;)V

    .line 369
    if-eqz p2, :cond_1d0

    .line 371
    :try_start_1cd
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/f;->b()V
    :try_end_1d0
    .catch Ljava/lang/Throwable; {:try_start_1cd .. :try_end_1d0} :catch_32d

    .line 376
    :cond_1d0
    :goto_1d0
    instance-of v2, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_335

    .line 377
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 378
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/g;->c:Ljava/lang/StringBuilder;

    .line 385
    :cond_1e2
    :goto_1e2
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->c()V

    goto/16 :goto_c

    .line 237
    :cond_1ed
    :try_start_1ed
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v7

    if-eqz v7, :cond_20f

    .line 238
    sget-object v7, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "proxy:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/android/tpush/stat/a/i;->h(Ljava/lang/Object;)V

    .line 240
    :cond_20f
    const-string v7, "X-Content-Encoding"

    invoke-virtual {v6, v7, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lcom/tencent/android/tpush/stat/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 243
    const-string v7, "X-Online-Host"

    sget-object v8, Lcom/tencent/android/tpush/stat/d;->g:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v7, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v7, "Content-Type"

    const-string v8, "json"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_234
    .catch Ljava/lang/Throwable; {:try_start_1ed .. :try_end_234} :catch_1c3
    .catchall {:try_start_1ed .. :try_end_234} :catchall_236

    goto/16 :goto_db

    .line 364
    :catchall_236
    move-exception v0

    throw v0

    .line 306
    :cond_238
    cmp-long v4, v4, v10

    if-lez v4, :cond_329

    .line 307
    :try_start_23c
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 308
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 309
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v0, v8

    new-array v0, v0, [B

    .line 310
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 311
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 313
    const-string v5, "Content-Encoding"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_271

    .line 317
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip,rc4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b8

    .line 318
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->a([B)[B

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/f;->b([B)[B

    move-result-object v0

    .line 333
    :cond_271
    :goto_271
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/tencent/android/tpush/stat/d;->b()Z

    move-result v5

    if-eqz v5, :cond_296

    .line 335
    sget-object v5, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http get response data:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Object;)V

    .line 337
    :cond_296
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_2fa

    .line 340
    invoke-direct {p0, v5}, Lcom/tencent/android/tpush/stat/g;->a(Lorg/json/JSONObject;)V

    .line 341
    if-eqz p2, :cond_2af

    .line 342
    const-string v0, "ret"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2ef

    .line 343
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/f;->a()V

    .line 357
    :cond_2af
    :goto_2af
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 361
    :goto_2b2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    .line 365
    goto/16 :goto_1c4

    .line 320
    :cond_2b8
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rc4,gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2cd

    .line 322
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/f;->b([B)[B

    move-result-object v0

    .line 323
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->a([B)[B

    move-result-object v0

    goto :goto_271

    .line 324
    :cond_2cd
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2de

    .line 326
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->a([B)[B

    move-result-object v0

    goto :goto_271

    .line 327
    :cond_2de
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rc4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 329
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/f;->b([B)[B

    move-result-object v0

    goto :goto_271

    .line 345
    :cond_2ef
    sget-object v0, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    const-string v2, "response error data."

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/i;->e(Ljava/lang/Object;)V

    .line 346
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/f;->b()V

    goto :goto_2af

    .line 350
    :cond_2fa
    sget-object v2, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server response error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", error:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/i;->e(Ljava/lang/Object;)V

    .line 353
    if-eqz p2, :cond_2af

    .line 354
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/f;->b()V

    goto :goto_2af

    .line 359
    :cond_329
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_32c
    .catch Ljava/lang/Throwable; {:try_start_23c .. :try_end_32c} :catch_1c3
    .catchall {:try_start_23c .. :try_end_32c} :catchall_236

    goto :goto_2b2

    .line 372
    :catch_32d
    move-exception v2

    .line 373
    sget-object v3, Lcom/tencent/android/tpush/stat/g;->d:Lcom/tencent/android/tpush/stat/a/i;

    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/stat/a/i;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_1d0

    .line 380
    :cond_335
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_1e2

    .line 382
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1e2

    goto/16 :goto_1e2
.end method

.method public b(Ljava/util/List;Lcom/tencent/android/tpush/stat/f;)V
    .registers 5

    .prologue
    .line 621
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->b:Lcom/tencent/android/tpush/stat/a/e;

    if-eqz v0, :cond_e

    .line 622
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/g;->b:Lcom/tencent/android/tpush/stat/a/e;

    new-instance v1, Lcom/tencent/android/tpush/stat/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/stat/i;-><init>(Lcom/tencent/android/tpush/stat/g;Ljava/util/List;Lcom/tencent/android/tpush/stat/f;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/e;->a(Ljava/lang/Runnable;)V

    .line 633
    :cond_e
    return-void
.end method
