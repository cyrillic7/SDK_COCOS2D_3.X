.class public Lcom/tencent/beacon/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/b/a$a;,
        Lcom/tencent/beacon/b/a$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)J
    .registers 11

    .prologue
    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    .line 39
    if-eqz p0, :cond_7

    if-gtz p1, :cond_9

    :cond_7
    move-wide v0, v2

    .line 63
    :goto_8
    return-wide v0

    .line 41
    :cond_9
    const/4 v1, 0x0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 44
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 46
    :try_start_13
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_49
    .catchall {:try_start_13 .. :try_end_18} :catchall_89

    .line 47
    const/16 v1, 0x7530

    :try_start_1a
    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " s conn:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_37} :catch_a1
    .catchall {:try_start_1a .. :try_end_37} :catchall_9e

    .line 56
    :try_start_37
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_8

    .line 58
    :catch_3b
    move-exception v2

    .line 59
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 50
    :catch_49
    move-exception v0

    .line 51
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " exception:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_89

    .line 56
    if-eqz v1, :cond_78

    .line 57
    :try_start_75
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7a

    :cond_78
    move-wide v0, v2

    .line 61
    goto :goto_8

    .line 58
    :catch_7a
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    .line 62
    goto :goto_8

    .line 55
    :catchall_89
    move-exception v0

    .line 56
    :goto_8a
    if-eqz v1, :cond_8f

    .line 57
    :try_start_8c
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 61
    :cond_8f
    :goto_8f
    throw v0

    .line 58
    :catch_90
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8f

    .line 55
    :catchall_9e
    move-exception v0

    move-object v1, v4

    goto :goto_8a

    .line 50
    :catch_a1
    move-exception v0

    move-object v1, v4

    goto :goto_4a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/b/a$b;
    .registers 22

    .prologue
    .line 274
    if-eqz p0, :cond_c

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 275
    :cond_c
    const/4 v2, 0x0

    .line 341
    :goto_d
    return-object v2

    .line 277
    :cond_e
    new-instance v3, Lcom/tencent/beacon/b/a$b;

    invoke-direct {v3}, Lcom/tencent/beacon/b/a$b;-><init>()V

    .line 278
    const/4 v6, 0x0

    .line 279
    const/4 v5, 0x0

    .line 280
    const/4 v4, 0x0

    .line 282
    :try_start_16
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    if-eqz v8, :cond_34

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_34

    if-gtz v7, :cond_1b6

    :cond_34
    const-string v7, " no default proxy!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_48

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_12c

    :cond_48
    const/4 v7, 0x0

    :cond_49
    :goto_49
    if-nez v7, :cond_1b2

    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-nez v2, :cond_1fa

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v6, v2

    .line 283
    :goto_55
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 285
    const/16 v2, 0x7530

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 286
    const/16 v2, 0x7530

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 290
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 294
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 298
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 302
    :cond_82
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_82

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 307
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/tencent/beacon/b/a$b;->a:J

    .line 308
    const-string v2, ""

    iput-object v2, v3, Lcom/tencent/beacon/b/a$b;->f:Ljava/lang/String;

    .line 309
    sub-long v8, v10, v8

    iput-wide v8, v3, Lcom/tencent/beacon/b/a$b;->b:J

    .line 310
    sub-long v8, v12, v10

    iput-wide v8, v3, Lcom/tencent/beacon/b/a$b;->c:J

    .line 311
    sub-long v8, v14, v12

    iput-wide v8, v3, Lcom/tencent/beacon/b/a$b;->d:J

    .line 312
    sub-long v8, v16, v14

    iput-wide v8, v3, Lcom/tencent/beacon/b/a$b;->e:J

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " dns:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/tencent/beacon/b/a$b;->a:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " connetionElapse:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/tencent/beacon/b/a$b;->b:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " requestElapse:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/tencent/beacon/b/a$b;->c:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " waitElapse:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/tencent/beacon/b/a$b;->d:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " readResponeElapse:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/tencent/beacon/b/a$b;->e:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_11a} :catch_14f
    .catchall {:try_start_16 .. :try_end_11a} :catchall_187

    .line 323
    if-eqz v4, :cond_11f

    .line 325
    :try_start_11c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_20a

    .line 330
    :cond_11f
    :goto_11f
    if-eqz v5, :cond_124

    .line 332
    :try_start_121
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_210

    .line 337
    :cond_124
    :goto_124
    if-eqz v6, :cond_129

    .line 338
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_129
    :goto_129
    move-object v2, v3

    .line 341
    goto/16 :goto_d

    .line 282
    :cond_12c
    :try_start_12c
    new-instance v7, Lcom/tencent/beacon/b/a$a;

    invoke-direct {v7}, Lcom/tencent/beacon/b/a$a;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ctwap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16d

    const-string v8, " search ctwap"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "10.0.0.200"

    iput-object v8, v7, Lcom/tencent/beacon/b/a$a;->a:Ljava/lang/String;

    const/16 v8, 0x50

    iput v8, v7, Lcom/tencent/beacon/b/a$a;->b:I
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_14d} :catch_14f
    .catchall {:try_start_12c .. :try_end_14d} :catchall_187

    goto/16 :goto_49

    .line 319
    :catch_14f
    move-exception v2

    .line 320
    :try_start_150
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15d
    .catchall {:try_start_150 .. :try_end_15d} :catchall_187

    .line 323
    if-eqz v4, :cond_162

    .line 325
    :try_start_15f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_216

    .line 330
    :cond_162
    :goto_162
    if-eqz v5, :cond_167

    .line 332
    :try_start_164
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_21c

    .line 337
    :cond_167
    :goto_167
    if-eqz v6, :cond_129

    .line 338
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_129

    .line 282
    :cond_16d
    :try_start_16d
    const-string v10, "cmwap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_198

    const-string v8, " search cmwap"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "10.0.0.172"

    iput-object v8, v7, Lcom/tencent/beacon/b/a$a;->a:Ljava/lang/String;

    const/16 v8, 0x50

    iput v8, v7, Lcom/tencent/beacon/b/a$a;->b:I
    :try_end_185
    .catch Ljava/lang/Throwable; {:try_start_16d .. :try_end_185} :catch_14f
    .catchall {:try_start_16d .. :try_end_185} :catchall_187

    goto/16 :goto_49

    .line 323
    :catchall_187
    move-exception v2

    if-eqz v4, :cond_18d

    .line 325
    :try_start_18a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18d} :catch_222

    .line 330
    :cond_18d
    :goto_18d
    if-eqz v5, :cond_192

    .line 332
    :try_start_18f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_228

    .line 337
    :cond_192
    :goto_192
    if-eqz v6, :cond_197

    .line 338
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_197
    throw v2

    .line 282
    :cond_198
    :try_start_198
    const-string v10, "uniwap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_49

    const-string v8, " search uniwap"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "10.0.0.172"

    iput-object v8, v7, Lcom/tencent/beacon/b/a$a;->a:Ljava/lang/String;

    const/16 v8, 0x50

    iput v8, v7, Lcom/tencent/beacon/b/a$a;->b:I

    goto/16 :goto_49

    :cond_1b2
    iget-object v8, v7, Lcom/tencent/beacon/b/a$a;->a:Ljava/lang/String;

    iget v7, v7, Lcom/tencent/beacon/b/a$a;->b:I

    :cond_1b6
    if-eqz v8, :cond_4c

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4c

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " apn }"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  find proxy [}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4c

    :cond_1fa
    new-instance v7, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v7, v8, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v9, v7}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_207
    .catch Ljava/lang/Throwable; {:try_start_198 .. :try_end_207} :catch_14f
    .catchall {:try_start_198 .. :try_end_207} :catchall_187

    move-object v6, v2

    goto/16 :goto_55

    .line 326
    :catch_20a
    move-exception v2

    .line 327
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11f

    .line 333
    :catch_210
    move-exception v2

    .line 334
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_124

    .line 326
    :catch_216
    move-exception v2

    .line 327
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_162

    .line 333
    :catch_21c
    move-exception v2

    .line 334
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_167

    .line 326
    :catch_222
    move-exception v3

    .line 327
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_18d

    .line 333
    :catch_228
    move-exception v3

    .line 334
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_192
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/b/a$b;
    .registers 16

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 173
    if-eqz p0, :cond_20

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    if-eqz p2, :cond_20

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    move-object v0, v1

    .line 268
    :cond_21
    :goto_21
    return-object v0

    .line 176
    :cond_22
    new-instance v0, Lcom/tencent/beacon/b/a$b;

    invoke-direct {v0}, Lcom/tencent/beacon/b/a$b;-><init>()V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    :try_start_3a
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_42} :catch_98
    .catchall {:try_start_3a .. :try_end_42} :catchall_239

    move-result-wide v8

    .line 187
    :try_start_43
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_91
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_98
    .catchall {:try_start_43 .. :try_end_46} :catchall_239

    move-result-object v2

    .line 188
    :try_start_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    iput-wide v8, v0, Lcom/tencent/beacon/b/a$b;->a:J
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_27c
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4f} :catch_98
    .catchall {:try_start_47 .. :try_end_4f} :catchall_239

    .line 192
    :goto_4f
    :try_start_4f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " dns: }"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/beacon/b/a$b;->a:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    move v3, v5

    .line 196
    :goto_70
    array-length v2, v7

    if-ge v3, v2, :cond_ce

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, v7, v3

    if-gez v2, :cond_cb

    aget-byte v2, v7, v3

    add-int/lit16 v2, v2, 0x100

    :goto_82
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_70

    .line 190
    :catch_91
    move-exception v2

    move-object v2, v1

    :goto_93
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/tencent/beacon/b/a$b;->a:J
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_97} :catch_98
    .catchall {:try_start_4f .. :try_end_97} :catchall_239

    goto :goto_4f

    .line 242
    :catch_98
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 243
    :goto_9e
    :try_start_9e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_269

    .line 246
    if-eqz v3, :cond_b0

    .line 248
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_22d

    .line 253
    :cond_b0
    :goto_b0
    if-eqz v2, :cond_b5

    .line 255
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_233

    .line 261
    :cond_b5
    :goto_b5
    if-eqz v4, :cond_21

    .line 262
    :try_start_b7
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bc

    goto/16 :goto_21

    .line 263
    :catch_bc
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 197
    :cond_cb
    :try_start_cb
    aget-byte v2, v7, v3

    goto :goto_82

    .line 199
    :cond_ce
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/beacon/b/a$b;->f:Ljava/lang/String;

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 201
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 208
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_f7} :catch_98
    .catchall {:try_start_cb .. :try_end_f7} :catchall_239

    .line 209
    const/16 v2, 0x7530

    :try_start_f9
    invoke-virtual {v4, v3, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v0, Lcom/tencent/beacon/b/a$b;->b:J

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " conn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/beacon/b/a$b;->b:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "HEAD "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP/1.1 \r\nHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 217
    const-string v2, "IP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "host test: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_17e
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_17e} :catch_26c
    .catchall {:try_start_f9 .. :try_end_17e} :catchall_264

    move-result-object v3

    .line 219
    :try_start_17f
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_17f .. :try_end_182} :catch_273
    .catchall {:try_start_17f .. :try_end_182} :catchall_267

    move-result-object v2

    .line 221
    :try_start_183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 222
    const-string v1, "UTF-8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 223
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/tencent/beacon/b/a$b;->c:J

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, " re: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/beacon/b/a$b;->c:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iput-wide v6, v0, Lcom/tencent/beacon/b/a$b;->d:J

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, " wait: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/beacon/b/a$b;->d:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const/16 v1, 0x1f4

    new-array v1, v1, [B

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 235
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iput-wide v6, v0, Lcom/tencent/beacon/b/a$b;->e:J

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, " readp: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/beacon/b/a$b;->e:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_201
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_201} :catch_279
    .catchall {:try_start_183 .. :try_end_201} :catchall_269

    .line 246
    if-eqz v3, :cond_206

    .line 248
    :try_start_203
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_206} :catch_223

    .line 253
    :cond_206
    :goto_206
    if-eqz v2, :cond_20b

    .line 255
    :try_start_208
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_20b} :catch_228

    .line 261
    :cond_20b
    :goto_20b
    :try_start_20b
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_20e} :catch_210

    goto/16 :goto_21

    .line 263
    :catch_210
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 213
    :cond_21f
    :try_start_21f
    const-string v2, ""
    :try_end_221
    .catch Ljava/lang/Throwable; {:try_start_21f .. :try_end_221} :catch_26c
    .catchall {:try_start_21f .. :try_end_221} :catchall_264

    goto/16 :goto_140

    .line 249
    :catch_223
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_206

    .line 256
    :catch_228
    move-exception v1

    .line 257
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20b

    .line 249
    :catch_22d
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b0

    .line 256
    :catch_233
    move-exception v1

    .line 257
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b5

    .line 246
    :catchall_239
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_23c
    if-eqz v3, :cond_241

    .line 248
    :try_start_23e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_241
    .catch Ljava/io/IOException; {:try_start_23e .. :try_end_241} :catch_24c

    .line 253
    :cond_241
    :goto_241
    if-eqz v1, :cond_246

    .line 255
    :try_start_243
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_246} :catch_251

    .line 261
    :cond_246
    :goto_246
    if-eqz v4, :cond_24b

    .line 262
    :try_start_248
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_24b
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24b} :catch_256

    .line 266
    :cond_24b
    :goto_24b
    throw v0

    .line 249
    :catch_24c
    move-exception v2

    .line 250
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_241

    .line 256
    :catch_251
    move-exception v1

    .line 257
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_246

    .line 263
    :catch_256
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24b

    .line 246
    :catchall_264
    move-exception v0

    move-object v3, v1

    goto :goto_23c

    :catchall_267
    move-exception v0

    goto :goto_23c

    :catchall_269
    move-exception v0

    move-object v1, v2

    goto :goto_23c

    .line 242
    :catch_26c
    move-exception v2

    move-object v3, v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto/16 :goto_9e

    :catch_273
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_9e

    :catch_279
    move-exception v1

    goto/16 :goto_9e

    .line 190
    :catch_27c
    move-exception v3

    goto/16 :goto_93
.end method

.method public static a(Ljava/lang/String;Z)Lcom/tencent/beacon/b/a$b;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 72
    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move-object v0, v1

    .line 167
    :cond_d
    :goto_d
    return-object v0

    .line 74
    :cond_e
    new-instance v0, Lcom/tencent/beacon/b/a$b;

    invoke-direct {v0}, Lcom/tencent/beacon/b/a$b;-><init>()V

    .line 79
    :try_start_13
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    iput-wide v2, v0, Lcom/tencent/beacon/b/a$b;->a:J

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " dns: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/beacon/b/a$b;->a:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    move v3, v5

    .line 89
    :goto_4d
    array-length v2, v9

    if-ge v3, v2, :cond_71

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, v9, v3

    if-gez v2, :cond_6e

    aget-byte v2, v9, v3

    add-int/lit16 v2, v2, 0x100

    :goto_5f
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4d

    .line 90
    :cond_6e
    aget-byte v2, v9, v3

    goto :goto_5f

    .line 92
    :cond_71
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/beacon/b/a$b;->f:Ljava/lang/String;

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 94
    if-nez p1, :cond_d

    .line 100
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 101
    if-ltz v2, :cond_1bc

    .line 102
    :goto_84
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 105
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_92} :catch_1ce
    .catchall {:try_start_13 .. :try_end_92} :catchall_20b

    .line 106
    const/16 v2, 0x7530

    :try_start_94
    invoke-virtual {v4, v3, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v0, Lcom/tencent/beacon/b/a$b;->b:J

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " conn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/beacon/b/a$b;->b:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "?"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_db
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "HEAD "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP/1.1 \r\nHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_105} :catch_23e
    .catchall {:try_start_94 .. :try_end_105} :catchall_236

    move-result-object v3

    .line 115
    :try_start_106
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_109} :catch_244
    .catchall {:try_start_106 .. :try_end_109} :catchall_239

    move-result-object v2

    .line 117
    :try_start_10a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 118
    const-string v1, "UTF-8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 119
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/tencent/beacon/b/a$b;->c:J

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, " re: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/beacon/b/a$b;->c:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iput-wide v6, v0, Lcom/tencent/beacon/b/a$b;->d:J

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, " wait: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/beacon/b/a$b;->d:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/16 v1, 0x1f4

    new-array v1, v1, [B

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 135
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iput-wide v6, v0, Lcom/tencent/beacon/b/a$b;->e:J

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " readp: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/beacon/b/a$b;->e:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " datasize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_19e} :catch_249
    .catchall {:try_start_10a .. :try_end_19e} :catchall_23b

    .line 145
    if-eqz v3, :cond_1a3

    .line 147
    :try_start_1a0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_1c4

    .line 152
    :cond_1a3
    :goto_1a3
    if-eqz v2, :cond_1a8

    .line 154
    :try_start_1a5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1c9

    .line 160
    :cond_1a8
    :goto_1a8
    :try_start_1a8
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_d

    .line 162
    :catch_1ad
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 101
    :cond_1bc
    const/16 v2, 0x50

    goto/16 :goto_84

    .line 110
    :cond_1c0
    :try_start_1c0
    const-string v2, ""
    :try_end_1c2
    .catch Ljava/lang/Throwable; {:try_start_1c0 .. :try_end_1c2} :catch_23e
    .catchall {:try_start_1c0 .. :try_end_1c2} :catchall_236

    goto/16 :goto_db

    .line 148
    :catch_1c4
    move-exception v1

    .line 149
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a3

    .line 155
    :catch_1c9
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a8

    .line 141
    :catch_1ce
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 142
    :goto_1d4
    :try_start_1d4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e1
    .catchall {:try_start_1d4 .. :try_end_1e1} :catchall_23b

    .line 145
    if-eqz v3, :cond_1e6

    .line 147
    :try_start_1e3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e6} :catch_201

    .line 152
    :cond_1e6
    :goto_1e6
    if-eqz v2, :cond_1eb

    .line 154
    :try_start_1e8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_206

    .line 160
    :cond_1eb
    :goto_1eb
    if-eqz v4, :cond_d

    .line 161
    :try_start_1ed
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f0} :catch_1f2

    goto/16 :goto_d

    .line 162
    :catch_1f2
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 148
    :catch_201
    move-exception v1

    .line 149
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e6

    .line 155
    :catch_206
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1eb

    .line 145
    :catchall_20b
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_20e
    if-eqz v3, :cond_213

    .line 147
    :try_start_210
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_21e

    .line 152
    :cond_213
    :goto_213
    if-eqz v1, :cond_218

    .line 154
    :try_start_215
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_218} :catch_223

    .line 160
    :cond_218
    :goto_218
    if-eqz v4, :cond_21d

    .line 161
    :try_start_21a
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_228

    .line 165
    :cond_21d
    :goto_21d
    throw v0

    .line 148
    :catch_21e
    move-exception v2

    .line 149
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_213

    .line 155
    :catch_223
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_218

    .line 162
    :catch_228
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21d

    .line 145
    :catchall_236
    move-exception v0

    move-object v3, v1

    goto :goto_20e

    :catchall_239
    move-exception v0

    goto :goto_20e

    :catchall_23b
    move-exception v0

    move-object v1, v2

    goto :goto_20e

    .line 141
    :catch_23e
    move-exception v2

    move-object v3, v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    goto :goto_1d4

    :catch_244
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_1d4

    :catch_249
    move-exception v1

    goto :goto_1d4
.end method

.method public static a(ILcom/tencent/beacon/a/e;[BII)Lcom/tencent/beacon/c/a/b;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 277
    const-string v1, "en2Req"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-nez p1, :cond_13

    .line 279
    const-string v1, "error no com info! "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :goto_12
    return-object v0

    .line 285
    :cond_13
    :try_start_13
    new-instance v1, Lcom/tencent/beacon/c/a/b;

    invoke-direct {v1}, Lcom/tencent/beacon/c/a/b;-><init>()V

    .line 287
    monitor-enter p1
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_16d

    .line 288
    :try_start_19
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->j:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->k:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->c()B

    move-result v2

    iput-byte v2, v1, Lcom/tencent/beacon/c/a/b;->a:B

    .line 291
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->b:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->c:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->d:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->e:Ljava/lang/String;

    .line 295
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->l:Ljava/lang/String;

    .line 297
    const/16 v2, 0x64

    if-ne p0, v2, :cond_14c

    .line 298
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 299
    const-string v3, "A1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v3, "A2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/beacon/event/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/event/e;

    move-result-object v3

    .line 302
    const-string v4, "A4"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/beacon/event/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v4, "A6"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/beacon/event/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v4, "A7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/beacon/event/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v4, "A3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/beacon/a/j;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/beacon/a/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v4, "A23"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/beacon/event/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v3, "A33"

    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/beacon/a/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/beacon/a/a;->g(Landroid/content/Context;)Z

    move-result v3

    .line 310
    if-eqz v3, :cond_162

    .line 311
    const-string v3, "A66"

    const-string v4, "F"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :goto_11f
    const-string v3, "A67"

    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/beacon/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v3, "A68"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/beacon/a/e;->l()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/beacon/a/a;->h(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {v2}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/beacon/c/a/b;->l:Ljava/lang/String;

    .line 321
    :cond_14c
    monitor-exit p1
    :try_end_14d
    .catchall {:try_start_19 .. :try_end_14d} :catchall_16a

    .line 323
    :try_start_14d
    iput p0, v1, Lcom/tencent/beacon/c/a/b;->f:I

    .line 324
    int-to-byte v2, p4

    iput-byte v2, v1, Lcom/tencent/beacon/c/a/b;->h:B

    .line 325
    int-to-byte v2, p3

    iput-byte v2, v1, Lcom/tencent/beacon/c/a/b;->i:B

    .line 327
    if-nez p2, :cond_15d

    .line 329
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 331
    :cond_15d
    iput-object p2, v1, Lcom/tencent/beacon/c/a/b;->g:[B
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15f} :catch_16d

    move-object v0, v1

    .line 333
    goto/16 :goto_12

    .line 313
    :cond_162
    :try_start_162
    const-string v3, "A66"

    const-string v4, "B"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_169
    .catchall {:try_start_162 .. :try_end_169} :catchall_16a

    goto :goto_11f

    .line 321
    :catchall_16a
    move-exception v1

    :try_start_16b
    monitor-exit p1

    throw v1
    :try_end_16d
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_16d} :catch_16d

    .line 334
    :catch_16d
    move-exception v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_12
.end method

.method public static a([B)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 169
    const-string v1, "de byte 2 obj "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    if-eqz p0, :cond_e

    array-length v1, p0

    if-gez v1, :cond_f

    .line 205
    :cond_e
    :goto_e
    return-object v0

    .line 175
    :cond_f
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 181
    :try_start_14
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_2e
    .catchall {:try_start_14 .. :try_end_19} :catchall_50

    .line 182
    :try_start_19
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_68
    .catchall {:try_start_19 .. :try_end_1c} :catchall_66

    move-result-object v0

    .line 192
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_29

    .line 200
    :goto_20
    :try_start_20
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_e

    .line 203
    :catch_24
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 195
    :catch_29
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 184
    :catch_2e
    move-exception v1

    move-object v2, v0

    .line 186
    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_66

    .line 188
    if-eqz v2, :cond_42

    .line 194
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4b

    .line 200
    :cond_42
    :goto_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_e

    .line 203
    :catch_46
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 195
    :catch_4b
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 192
    :catchall_50
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_53
    if-eqz v2, :cond_58

    .line 194
    :try_start_55
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5c

    .line 200
    :cond_58
    :goto_58
    :try_start_58
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_61

    .line 205
    :goto_5b
    throw v0

    .line 195
    :catch_5c
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 203
    :catch_61
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 192
    :catchall_66
    move-exception v0

    goto :goto_53

    .line 184
    :catch_68
    move-exception v1

    goto :goto_30
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 740
    :try_start_0
    invoke-static {p0}, Lcom/tencent/beacon/event/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/event/e;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lcom/tencent/beacon/event/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {v0}, Lcom/tencent/beacon/event/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->h(Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v0

    .line 746
    :goto_44
    return-object v0

    :catch_45
    move-exception v0

    const/4 v0, 0x0

    goto :goto_44
.end method

.method public static a([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 641
    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 648
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_88
    .catchall {:try_start_6 .. :try_end_1c} :catchall_6c

    .line 650
    :goto_1c
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 651
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_83

    goto :goto_1c

    .line 659
    :catch_26
    move-exception v0

    move-object v2, v1

    .line 660
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_85

    .line 661
    if-eqz v3, :cond_30

    .line 665
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_62

    .line 671
    :cond_30
    :goto_30
    if-eqz v2, :cond_35

    .line 673
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_67

    :cond_35
    :goto_35
    move-object v0, v1

    .line 679
    :goto_36
    return-object v0

    .line 654
    :cond_37
    :try_start_37
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_45} :catch_26
    .catchall {:try_start_37 .. :try_end_45} :catchall_83

    .line 656
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 657
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4e} :catch_4f
    .catchall {:try_start_45 .. :try_end_4e} :catchall_85

    goto :goto_45

    .line 659
    :catch_4f
    move-exception v0

    goto :goto_28

    .line 663
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5d

    .line 671
    :goto_54
    :try_start_54
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_36

    .line 674
    :catch_58
    move-exception v1

    .line 675
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 666
    :catch_5d
    move-exception v1

    .line 667
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 666
    :catch_62
    move-exception v0

    .line 667
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    .line 674
    :catch_67
    move-exception v0

    .line 675
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 663
    :catchall_6c
    move-exception v0

    move-object v3, v1

    :goto_6e
    if-eqz v3, :cond_73

    .line 665
    :try_start_70
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_79

    .line 671
    :cond_73
    :goto_73
    if-eqz v1, :cond_78

    .line 673
    :try_start_75
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7e

    .line 676
    :cond_78
    :goto_78
    throw v0

    .line 666
    :catch_79
    move-exception v2

    .line 667
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    .line 674
    :catch_7e
    move-exception v1

    .line 675
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    .line 663
    :catchall_83
    move-exception v0

    goto :goto_6e

    :catchall_85
    move-exception v0

    move-object v1, v2

    goto :goto_6e

    .line 659
    :catch_88
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_28
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 751
    if-eqz p0, :cond_23

    if-lez v0, :cond_23

    .line 752
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 753
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 754
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_21
    move-object v0, v1

    .line 758
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static a(Ljava/lang/Object;)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 123
    const-string v1, "en obj 2 bytes "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    if-eqz p0, :cond_13

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 126
    :cond_13
    const-string v1, "not serial obj "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :goto_1a
    return-object v0

    .line 130
    :cond_1b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    :try_start_20
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_40
    .catchall {:try_start_20 .. :try_end_25} :catchall_62

    .line 136
    :try_start_25
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 139
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_7a
    .catchall {:try_start_25 .. :try_end_2e} :catchall_78

    move-result-object v0

    .line 150
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3b

    .line 158
    :goto_32
    :try_start_32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1a

    .line 161
    :catch_36
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 153
    :catch_3b
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 141
    :catch_40
    move-exception v1

    move-object v2, v0

    .line 143
    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_78

    .line 146
    if-eqz v2, :cond_54

    .line 152
    :try_start_51
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5d

    .line 158
    :cond_54
    :goto_54
    :try_start_54
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_1a

    .line 161
    :catch_58
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 153
    :catch_5d
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 150
    :catchall_62
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_65
    if-eqz v2, :cond_6a

    .line 152
    :try_start_67
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6e

    .line 158
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_73

    .line 163
    :goto_6d
    throw v0

    .line 153
    :catch_6e
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 161
    :catch_73
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    .line 150
    :catchall_78
    move-exception v0

    goto :goto_65

    .line 141
    :catch_7a
    move-exception v1

    goto :goto_42
.end method

.method public static a([BI)[B
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    if-eqz p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 254
    :cond_7
    :goto_7
    return-object p0

    .line 247
    :cond_8
    const-string v0, "zp: %s len: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :try_start_1d
    invoke-static {p1, p0}, Lcom/tencent/beacon/applog/a;->a(I[B)[B
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_22

    move-result-object p0

    goto :goto_7

    .line 251
    :catch_22
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    const-string v1, "err zp : %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    const/4 p0, 0x0

    goto :goto_7
.end method

.method public static a([BIILjava/lang/String;)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p0, :cond_4

    .line 354
    :goto_3
    return-object v0

    .line 347
    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Lcom/tencent/beacon/b/a;->a([BI)[B

    move-result-object v1

    .line 349
    invoke-static {v1, p2, p3}, Lcom/tencent/beacon/b/a;->a([BILjava/lang/String;)[B
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    .line 352
    :catch_d
    move-exception v1

    .line 353
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static a([BILjava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    if-eqz p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 223
    :cond_7
    :goto_7
    return-object p0

    .line 216
    :cond_8
    const-string v0, "enD:} %d %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :try_start_1d
    invoke-static {p1, p2, p0}, Lcom/tencent/beacon/applog/a;->b(ILjava/lang/String;[B)[B
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_22

    move-result-object p0

    goto :goto_7

    .line 220
    :catch_22
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    const-string v1, "err enD: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    const/4 p0, 0x0

    goto :goto_7
.end method

.method public static b([BI)[B
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 260
    if-eqz p0, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 270
    :cond_6
    :goto_6
    return-object p0

    .line 263
    :cond_7
    const-string v0, "unzp: %s len: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :try_start_1d
    invoke-static {p1, p0}, Lcom/tencent/beacon/applog/a;->b(I[B)[B
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_22

    move-result-object p0

    goto :goto_6

    .line 267
    :catch_22
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "err unzp}"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static b([BIILjava/lang/String;)[B
    .registers 5

    .prologue
    .line 362
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/tencent/beacon/b/a;->b([BILjava/lang/String;)[B

    move-result-object v0

    .line 364
    invoke-static {v0, p1}, Lcom/tencent/beacon/b/a;->b([BI)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 368
    :goto_8
    return-object v0

    .line 366
    :catch_9
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static b([BILjava/lang/String;)[B
    .registers 7

    .prologue
    .line 230
    if-eqz p0, :cond_5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 238
    :cond_5
    :goto_5
    return-object p0

    .line 234
    :cond_6
    :try_start_6
    invoke-static {p1, p2, p0}, Lcom/tencent/beacon/applog/a;->a(ILjava/lang/String;[B)[B
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object p0

    goto :goto_5

    .line 235
    :catch_b
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    const-string v1, "err unD: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const/4 p0, 0x0

    goto :goto_5
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 623
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_12

    .line 626
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 631
    :goto_10
    return-object v0

    .line 629
    :catch_11
    move-exception v0

    .line 631
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 703
    .line 705
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 707
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 708
    array-length v3, v1

    :goto_15
    if-ge v0, v3, :cond_2d

    aget-byte v4, v1, v0

    .line 709
    and-int/lit16 v4, v4, 0xff

    .line 710
    const/16 v5, 0x10

    if-ge v4, v5, :cond_23

    .line 711
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 713
    :cond_23
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 715
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    move-result-object p0

    .line 719
    :goto_31
    return-object p0

    .line 716
    :catch_32
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 728
    invoke-static {p0}, Lcom/tencent/beacon/b/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_e

    .line 731
    const/16 v1, 0x8

    const/16 v2, 0x18

    :try_start_a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    .line 735
    :cond_e
    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static j()J
    .registers 3

    .prologue
    .line 374
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 376
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-wide v0

    .line 381
    :goto_1a
    return-wide v0

    .line 378
    :catch_1b
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    const-wide/16 v0, -0x1

    goto :goto_1a
.end method

.method public static k()Ljava/lang/String;
    .registers 3

    .prologue
    .line 409
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 411
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 416
    :goto_12
    return-object v0

    .line 413
    :catch_13
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    const-string v0, ""

    goto :goto_12
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/tencent/beacon/b/a;->a:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 72
    iput p1, p0, Lcom/tencent/beacon/b/a;->b:I

    .line 73
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/tencent/beacon/b/a;->a:J

    .line 23
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/beacon/b/a;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/beacon/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/tencent/beacon/b/a;->d:J

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/beacon/b/a;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/tencent/beacon/b/a;->d:J

    return-wide v0
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/tencent/beacon/b/a;->e:J

    .line 53
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/beacon/b/a;->g:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/tencent/beacon/b/a;->e:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/beacon/b/a;->h:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/beacon/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/beacon/b/a;->i:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/tencent/beacon/b/a;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/beacon/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/beacon/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/beacon/b/a;->i:Ljava/lang/String;

    return-object v0
.end method
