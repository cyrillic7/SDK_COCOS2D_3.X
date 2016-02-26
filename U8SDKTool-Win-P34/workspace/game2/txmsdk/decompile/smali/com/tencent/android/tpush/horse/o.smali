.class public Lcom/tencent/android/tpush/horse/o;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/nio/channels/SocketChannel;

.field private b:Ljava/util/concurrent/ArrayBlockingQueue;

.field private c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/o;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 44
    return-void
.end method

.method private b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Ljava/net/InetSocketAddress;
    .registers 5

    .prologue
    .line 95
    const-string v0, "XGService"

    const-string v1, "@@ getSocketAddress()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 99
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 104
    :goto_21
    return-object v0

    :cond_22
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_21
.end method

.method private d()V
    .registers 3

    .prologue
    .line 164
    const-string v0, "XGService"

    const-string v1, "@@ notifyFail()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_7
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/p;

    .line 168
    if-eqz v0, :cond_16

    .line 169
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v0, v1}, Lcom/tencent/android/tpush/horse/p;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_1d

    .line 174
    :cond_16
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/o;->e:J

    .line 179
    return-void

    .line 171
    :catch_1d
    move-exception v0

    .line 172
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;)V
    .registers 8

    .prologue
    const/16 v3, 0xa

    .line 113
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ send("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 115
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 117
    new-instance v1, Lcom/tencent/android/tpush/service/channel/b/h;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 118
    invoke-virtual {v1, v3}, Lcom/tencent/android/tpush/service/channel/b/h;->b(S)V

    .line 119
    invoke-virtual {v1, v3}, Lcom/tencent/android/tpush/service/channel/b/h;->a(S)V

    .line 120
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a([B)V

    .line 122
    :try_start_44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v2

    if-nez v2, :cond_6e

    .line 124
    :goto_51
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/b/h;->b()Z

    move-result v2

    if-nez v2, :cond_f8

    .line 125
    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a(Ljava/io/OutputStream;)I
    :try_end_5a
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_44 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5a} :catch_e5
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_44 .. :try_end_5a} :catch_109
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5a} :catch_11c

    goto :goto_51

    .line 145
    :catch_5b
    move-exception v0

    .line 146
    const-string v1, "XGService"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/InnerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 148
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 128
    :cond_6e
    :try_start_6e
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/b;

    iget-object v3, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/service/channel/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 133
    const-string v3, "X-Online-Host"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_d8
    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Lcom/tencent/android/tpush/service/channel/b/e;)V

    .line 139
    :goto_db
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/b;->b()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 140
    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Ljava/io/OutputStream;)I
    :try_end_e4
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_6e .. :try_end_e4} :catch_5b
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_e4} :catch_e5
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_6e .. :try_end_e4} :catch_109
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_e4} :catch_11c

    goto :goto_db

    .line 149
    :catch_e5
    move-exception v0

    .line 150
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 152
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 143
    :cond_f8
    :try_start_f8
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_108
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_f8 .. :try_end_108} :catch_5b
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_108} :catch_e5
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_f8 .. :try_end_108} :catch_109
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_108} :catch_11c

    .line 161
    :goto_108
    return-void

    .line 153
    :catch_109
    move-exception v0

    .line 154
    const-string v1, "XGService"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 156
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 157
    :catch_11c
    move-exception v0

    .line 158
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    goto :goto_108
.end method

.method public a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .registers 9

    .prologue
    .line 47
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ connect to server ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/o;->d:J

    .line 50
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 53
    :try_start_26
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getDebugServerInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 56
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    array-length v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8a

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_8a

    .line 58
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 65
    iput-object v0, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 66
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ connect to debug server ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_8a} :catch_b7

    .line 75
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    .line 76
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 77
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/horse/o;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 80
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_b6
    .catch Ljava/lang/AssertionError; {:try_start_8a .. :try_end_b6} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b6} :catch_d9

    .line 92
    return-void

    .line 71
    :catch_b7
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8a

    .line 81
    :catch_bc
    move-exception v0

    move-object v1, v0

    .line 82
    const-string v0, "XGService"

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 84
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    if-nez p1, :cond_d4

    const-string v0, "null"

    :goto_d0
    invoke-direct {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_d4
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    .line 86
    :catch_d9
    move-exception v0

    move-object v1, v0

    .line 87
    const-string v0, "XGService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 89
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    if-nez p1, :cond_f1

    const-string v0, "null"

    :goto_ed
    invoke-direct {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f1
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ed
.end method

.method public a(Lcom/tencent/android/tpush/horse/p;)V
    .registers 5

    .prologue
    .line 325
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ register("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :try_start_1e
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 331
    :goto_23
    return-void

    .line 328
    :catch_24
    move-exception v0

    .line 329
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public b()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 182
    const-string v2, "XGService"

    const-string v3, "@@ recv()"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-nez v2, :cond_18

    .line 186
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 187
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    const-string v1, "Recv() fail,because mStrategyItem is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_18
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v2

    if-nez v2, :cond_ae

    .line 192
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/b/g;-><init>()V

    .line 194
    :try_start_29
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 196
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 198
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    :goto_3c
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/g;->b()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 200
    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 202
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/service/channel/b/g;->a(Ljava/io/InputStream;)I
    :try_end_4b
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_29 .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4b} :catch_6e
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_29 .. :try_end_4b} :catch_7f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_4b} :catch_90
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4b} :catch_a1

    goto :goto_3c

    .line 205
    :catch_4c
    move-exception v0

    .line 206
    const-string v1, "XGService"

    const-string v2, "recv error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 208
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 204
    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/g;->i()[B
    :try_end_60
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_5d .. :try_end_60} :catch_4c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_6e
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_5d .. :try_end_60} :catch_7f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_60} :catch_90
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_a1

    move-result-object v0

    .line 268
    :goto_61
    if-nez v0, :cond_15b

    .line 269
    const-string v0, "XGService"

    const-string v1, ">> dataBuffer is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 312
    :goto_6d
    return-void

    .line 209
    :catch_6e
    move-exception v0

    .line 210
    const-string v1, "XGService"

    const-string v2, "recv error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 212
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 213
    :catch_7f
    move-exception v0

    .line 214
    const-string v1, "XGService"

    const-string v2, "recv error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 216
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 217
    :catch_90
    move-exception v0

    .line 218
    const-string v1, "XGService"

    const-string v2, "recv error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 220
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 221
    :catch_a1
    move-exception v0

    .line 222
    const-string v2, "XGService"

    const-string v3, "recv error"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    :goto_ac
    move-object v0, v1

    goto :goto_61

    .line 226
    :cond_ae
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/a;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/b/a;-><init>()V

    .line 228
    :try_start_b3
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 230
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 232
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 233
    :goto_c6
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/a;->b()Z

    move-result v6

    if-nez v6, :cond_ea

    .line 234
    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v0, v6

    .line 236
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/service/channel/b/a;->a(Ljava/io/InputStream;)I
    :try_end_d6
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_b3 .. :try_end_d6} :catch_d7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_d6} :catch_113
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_b3 .. :try_end_d6} :catch_126
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b3 .. :try_end_d6} :catch_139
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d6} :catch_14c

    goto :goto_c6

    .line 247
    :catch_d7
    move-exception v0

    .line 248
    const-string v1, "XGService"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 250
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 238
    :cond_ea
    if-eqz v2, :cond_107

    :try_start_ec
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_107

    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_107

    .line 240
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/g;->i()[B

    move-result-object v0

    goto/16 :goto_61

    .line 242
    :cond_107
    const-string v0, "XGService"

    const-string v2, ">> packet is null or packet.recvPackets is null"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V
    :try_end_111
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_ec .. :try_end_111} :catch_d7
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_111} :catch_113
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_ec .. :try_end_111} :catch_126
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ec .. :try_end_111} :catch_139
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_111} :catch_14c

    goto/16 :goto_6d

    .line 251
    :catch_113
    move-exception v0

    .line 252
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 254
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 255
    :catch_126
    move-exception v0

    .line 256
    const-string v1, "XGService"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/InnerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 258
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 259
    :catch_139
    move-exception v0

    .line 260
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    .line 262
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 263
    :catch_14c
    move-exception v0

    .line 264
    const-string v2, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/o;->d()V

    goto/16 :goto_ac

    .line 273
    :cond_15b
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 274
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 275
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;-><init>()V

    .line 276
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 278
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect ip="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " port="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :try_start_193
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/p;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_19b} :catch_1da

    move-object v7, v0

    .line 287
    :goto_19c
    if-eqz v7, :cond_1d2

    .line 288
    iget-wide v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/d;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget v2, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 290
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    iget-object v3, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v4}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->f()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 296
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1cb

    if-nez v2, :cond_1e6

    .line 297
    :cond_1cb
    if-eqz v7, :cond_1d2

    .line 298
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v7, v0}, Lcom/tencent/android/tpush/horse/p;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    .line 307
    :cond_1d2
    :goto_1d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/o;->e:J

    goto/16 :goto_6d

    .line 284
    :catch_1da
    move-exception v0

    .line 285
    const-string v2, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_19c

    .line 301
    :cond_1e6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a(I)V

    .line 302
    if-eqz v7, :cond_1d2

    .line 303
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/o;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v7, v1, v0}, Lcom/tencent/android/tpush/horse/p;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    goto :goto_1d2
.end method

.method public c()V
    .registers 3

    .prologue
    .line 315
    const-string v0, "XGService"

    const-string v1, "@@ close()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :try_start_7
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 318
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/o;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    .line 322
    :goto_11
    return-void

    .line 319
    :catch_12
    move-exception v0

    .line 320
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
