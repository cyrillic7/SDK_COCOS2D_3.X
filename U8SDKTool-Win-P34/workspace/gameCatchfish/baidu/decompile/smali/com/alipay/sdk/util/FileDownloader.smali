.class public final Lcom/alipay/sdk/util/FileDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;,
        Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

.field private f:Lcom/alipay/sdk/util/FileFetch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    .line 46
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/FileDownloader;Lcom/alipay/sdk/util/FileFetch;)Lcom/alipay/sdk/util/FileFetch;
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/FileDownloader;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Z)V
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    .line 62
    return-void
.end method

.method static synthetic b(Lcom/alipay/sdk/util/FileDownloader;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/sdk/util/FileDownloader;)J
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/sdk/util/FileDownloader;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 209
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 216
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1f

    .line 217
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 227
    :goto_1e
    return-object v0

    .line 220
    :cond_1f
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net work exception,ErrorCode :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_34} :catch_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_3a

    .line 222
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 227
    :goto_38
    const/4 v0, 0x0

    goto :goto_1e

    .line 224
    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method static synthetic d(Lcom/alipay/sdk/util/FileDownloader;)V
    .registers 3

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileDownloader;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileDownloader;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_20
    return-void
.end method

.method private e()J
    .registers 4

    .prologue
    .line 134
    const-wide/16 v0, -0x1

    .line 136
    :try_start_2
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->c(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v0

    .line 143
    :goto_c
    return-wide v0

    .line 138
    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method static synthetic e(Lcom/alipay/sdk/util/FileDownloader;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 35
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->d:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_26
    .catchall {:try_start_1 .. :try_end_8} :catchall_34

    :try_start_8
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_50
    .catchall {:try_start_8 .. :try_end_d} :catchall_48

    :try_start_d
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/sdk/util/FileFetch;->a(J)V

    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/sdk/util/FileFetch;->b(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_54
    .catchall {:try_start_d .. :try_end_1f} :catchall_4b

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_3e

    :goto_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_40

    :goto_25
    return-void

    :catch_26
    move-exception v0

    move-object v1, v2

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4d

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_42

    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_25

    :catch_32
    move-exception v0

    goto :goto_25

    :catchall_34
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_44

    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_46

    :goto_3d
    throw v0

    :catch_3e
    move-exception v0

    goto :goto_22

    :catch_40
    move-exception v0

    goto :goto_25

    :catch_42
    move-exception v0

    goto :goto_2e

    :catch_44
    move-exception v2

    goto :goto_3a

    :catch_46
    move-exception v1

    goto :goto_3d

    :catchall_48
    move-exception v0

    move-object v1, v2

    goto :goto_37

    :catchall_4b
    move-exception v0

    goto :goto_37

    :catchall_4d
    move-exception v0

    move-object v3, v2

    goto :goto_37

    :catch_50
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_28

    :catch_54
    move-exception v0

    move-object v2, v3

    goto :goto_28
.end method

.method static synthetic f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileDownloader;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 151
    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileDownloader;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 155
    :cond_20
    return-void
.end method

.method static synthetic g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->e:Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    return-object v0
.end method

.method private g()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 181
    .line 184
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->d:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_26
    .catchall {:try_start_1 .. :try_end_8} :catchall_34

    .line 185
    :try_start_8
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_50
    .catchall {:try_start_8 .. :try_end_d} :catchall_48

    .line 186
    :try_start_d
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/sdk/util/FileFetch;->a(J)V

    .line 187
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/sdk/util/FileFetch;->b(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_54
    .catchall {:try_start_d .. :try_end_1f} :catchall_4b

    .line 192
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_3e

    .line 196
    :goto_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_40

    .line 199
    :goto_25
    return-void

    .line 188
    :catch_26
    move-exception v0

    move-object v1, v2

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4d

    .line 192
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_42

    .line 196
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_25

    .line 199
    :catch_32
    move-exception v0

    goto :goto_25

    .line 191
    :catchall_34
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 192
    :goto_37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_44

    .line 196
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_46

    .line 198
    :goto_3d
    throw v0

    :catch_3e
    move-exception v0

    goto :goto_22

    .line 199
    :catch_40
    move-exception v0

    goto :goto_25

    :catch_42
    move-exception v0

    goto :goto_2e

    :catch_44
    move-exception v2

    goto :goto_3a

    :catch_46
    move-exception v1

    goto :goto_3d

    .line 191
    :catchall_48
    move-exception v0

    move-object v1, v2

    goto :goto_37

    :catchall_4b
    move-exception v0

    goto :goto_37

    :catchall_4d
    move-exception v0

    move-object v3, v2

    goto :goto_37

    .line 188
    :catch_50
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_28

    :catch_54
    move-exception v0

    move-object v2, v3

    goto :goto_28
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;)V
    .registers 2

    .prologue
    .line 83
    if-eqz p1, :cond_4

    .line 84
    iput-object p1, p0, Lcom/alipay/sdk/util/FileDownloader;->e:Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    .line 86
    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/sdk/util/FileDownloader;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method protected final a()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    return v0
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 89
    new-instance v0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;-><init>(Landroid/os/Looper;Lcom/alipay/sdk/util/FileDownloader;B)V

    .line 91
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/sdk/util/FileDownloader$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/sdk/util/FileDownloader$1;-><init>(Lcom/alipay/sdk/util/FileDownloader;Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/sdk/util/FileDownloader;->c:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->d:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->d()V

    .line 131
    return-void
.end method

.method protected final d()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 158
    .line 161
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->d:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_29
    .catchall {:try_start_1 .. :try_end_8} :catchall_37

    .line 162
    :try_start_8
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_53
    .catchall {:try_start_8 .. :try_end_d} :catchall_4b

    .line 163
    :try_start_d
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 164
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader;->f:Lcom/alipay/sdk/util/FileFetch;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 165
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_57
    .catchall {:try_start_d .. :try_end_22} :catchall_4e

    .line 170
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_41

    .line 174
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_43

    .line 177
    :goto_28
    return-void

    .line 166
    :catch_29
    move-exception v0

    move-object v1, v2

    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_50

    .line 170
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_45

    .line 174
    :goto_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_28

    .line 177
    :catch_35
    move-exception v0

    goto :goto_28

    .line 169
    :catchall_37
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 170
    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_47

    .line 174
    :goto_3d
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_49

    .line 176
    :goto_40
    throw v0

    :catch_41
    move-exception v0

    goto :goto_25

    .line 177
    :catch_43
    move-exception v0

    goto :goto_28

    :catch_45
    move-exception v0

    goto :goto_31

    :catch_47
    move-exception v2

    goto :goto_3d

    :catch_49
    move-exception v1

    goto :goto_40

    .line 169
    :catchall_4b
    move-exception v0

    move-object v1, v2

    goto :goto_3a

    :catchall_4e
    move-exception v0

    goto :goto_3a

    :catchall_50
    move-exception v0

    move-object v3, v2

    goto :goto_3a

    .line 166
    :catch_53
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2b

    :catch_57
    move-exception v0

    move-object v2, v3

    goto :goto_2b
.end method
