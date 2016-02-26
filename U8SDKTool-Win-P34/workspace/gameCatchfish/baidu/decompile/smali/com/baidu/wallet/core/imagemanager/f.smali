.class Lcom/baidu/wallet/core/imagemanager/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/imagemanager/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:J

.field private final c:Lcom/baidu/wallet/core/imagemanager/f$a;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/imagemanager/f$a;)V
    .registers 5

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/baidu/wallet/core/imagemanager/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/wallet/core/imagemanager/f$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/wallet/core/imagemanager/f$a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->b:J

    iput-object p3, p0, Lcom/baidu/wallet/core/imagemanager/f;->d:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/utils/CheckUtils;->isExternalStorageWriteable()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    :goto_1a
    iget-object v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_27
    iput-object p4, p0, Lcom/baidu/wallet/core/imagemanager/f;->c:Lcom/baidu/wallet/core/imagemanager/f$a;

    return-void

    :cond_2a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    goto :goto_1a
.end method

.method private a()V
    .registers 5

    iget-wide v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const-wide/32 v0, 0xa00000

    invoke-direct {p0}, Lcom/baidu/wallet/core/imagemanager/f;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->b:J

    :cond_12
    return-void
.end method

.method private static declared-synchronized a(Ljava/io/File;)V
    .registers 5

    const-class v1, Lcom/baidu/wallet/core/imagemanager/f;

    monitor-enter v1

    if-nez p0, :cond_7

    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    const-wide/16 v2, 0x12c

    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    goto :goto_5

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_5

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a([BLjava/io/File;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/FileCopyUtils;->copy([BLjava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private b()J
    .registers 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1d

    array-length v2, v3

    if-lez v2, :cond_1d

    array-length v6, v3

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v6, :cond_1d

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_f

    :cond_1d
    return-wide v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/imagemanager/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/imagemanager/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_18
    return-object v1
.end method

.method a(Ljava/lang/String;[B)V
    .registers 11

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/imagemanager/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/imagemanager/f;->a(Ljava/io/File;)V

    invoke-static {p2, v0}, Lcom/baidu/wallet/core/imagemanager/f;->a([BLjava/io/File;)V

    invoke-direct {p0}, Lcom/baidu/wallet/core/imagemanager/f;->a()V

    iget-wide v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->b:J

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/imagemanager/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_4b

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/f;->c:Lcom/baidu/wallet/core/imagemanager/f$a;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/f;->c:Lcom/baidu/wallet/core/imagemanager/f$a;

    iget-object v3, p0, Lcom/baidu/wallet/core/imagemanager/f;->a:Ljava/io/File;

    invoke-interface {v2, v3}, Lcom/baidu/wallet/core/imagemanager/f$a;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_35

    :cond_4a
    move-wide v0, v2

    :cond_4b
    iput-wide v0, p0, Lcom/baidu/wallet/core/imagemanager/f;->b:J

    return-void
.end method
