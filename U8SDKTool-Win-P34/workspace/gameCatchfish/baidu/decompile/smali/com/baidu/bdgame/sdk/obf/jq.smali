.class public Lcom/baidu/bdgame/sdk/obf/jq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bk;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/jq;->a:Ljava/util/concurrent/ExecutorService;

    .line 34
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/jq;->b:Ljava/util/concurrent/ExecutorService;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jq;->c:Z

    .line 52
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0, p3}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 198
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 199
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 2

    .prologue
    .line 189
    if-eqz p1, :cond_5

    .line 190
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_5
    return-void
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jq;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static c()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jq;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .line 72
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/jq;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jq$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jq$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jq;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method public static d()Lcom/baidu/bdgame/sdk/obf/jq;
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jq;-><init>()V

    return-object v0
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, -0x1

    const-string v1, "connect error"

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 204
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 205
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jq;->c:Z

    .line 212
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This thread(non_ui) forbids invoke."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jq;->c(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 68
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This thread(ui) forbids invoke."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_13
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST ACT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->j()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ld;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 95
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST ACT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->j()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Network Not Avaliable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "Net not connected."

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 186
    :goto_89
    return-void

    .line 104
    :cond_8a
    const/4 v1, 0x0

    .line 106
    :try_start_8b
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ld;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 107
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->k()[B

    move-result-object v0

    .line 110
    if-nez v0, :cond_b9

    .line 111
    const/high16 v0, -0x80000000

    const-string v2, "encode error"

    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 113
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/n;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_b5} :catch_161
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_b5} :catch_1bd
    .catchall {:try_start_8b .. :try_end_b5} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_89

    .line 116
    :cond_b9
    :try_start_b9
    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/net/HttpURLConnection;)V

    .line 118
    const-string v2, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->j()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EXECUTE START"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/jq;->c:Z

    if-eqz v2, :cond_e9

    .line 123
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/n;)V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_e5} :catch_161
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_e5} :catch_1bd
    .catchall {:try_start_b9 .. :try_end_e5} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_89

    .line 128
    :cond_e9
    :try_start_e9
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 131
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 134
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 135
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_107

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_149

    .line 137
    :cond_107
    const-string v2, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->j()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HTTP ERR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, -0x2

    const-string v3, "http %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kc;->a(ILjava/lang/String;)V

    .line 141
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/n;)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_144} :catch_161
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_144} :catch_1bd
    .catchall {:try_start_e9 .. :try_end_144} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_89

    .line 146
    :cond_149
    :try_start_149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 149
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 151
    :goto_156
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v6, :cond_17a

    .line 152
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_160} :catch_161
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_160} :catch_1bd
    .catchall {:try_start_149 .. :try_end_160} :catchall_1da

    goto :goto_156

    .line 175
    :catch_161
    move-exception v0

    .line 176
    :try_start_162
    const-class v2, Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jq;->d(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_175
    .catchall {:try_start_162 .. :try_end_175} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_89

    .line 154
    :cond_17a
    :try_start_17a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 158
    const-string v0, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kc;->j()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EXECUTE END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jq;->c:Z

    if-eqz v0, :cond_1b2

    .line 163
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/n;)V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_1ad} :catch_161
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1ad} :catch_1bd
    .catchall {:try_start_17a .. :try_end_1ad} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_89

    .line 170
    :cond_1b2
    :try_start_1b2
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/kc;->a([B)V

    .line 171
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kc;->a(Lcom/baidu/bdgame/sdk/obf/n;)V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b8} :catch_161
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1b8} :catch_1bd
    .catchall {:try_start_1b2 .. :try_end_1b8} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_89

    .line 179
    :catch_1bd
    move-exception v0

    .line 180
    :try_start_1be
    const-class v2, Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d5
    .catchall {:try_start_1be .. :try_end_1d5} :catchall_1da

    .line 184
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_89

    :catchall_1da
    move-exception v0

    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method
