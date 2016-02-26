.class public final Lcom/tencent/beacon/a/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static c:Lcom/tencent/beacon/a/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/channels/FileChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/a/i;->c:Lcom/tencent/beacon/a/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/tencent/beacon/a/i;->a:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/tencent/beacon/a/i;->b:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/tencent/beacon/a/i;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/a/i;->b:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/a/i;
    .registers 3

    .prologue
    .line 30
    const-class v1, Lcom/tencent/beacon/a/i;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/a/i;->c:Lcom/tencent/beacon/a/i;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Lcom/tencent/beacon/a/i;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/a/i;->c:Lcom/tencent/beacon/a/i;

    .line 33
    :cond_e
    sget-object v0, Lcom/tencent/beacon/a/i;->c:Lcom/tencent/beacon/a/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 106
    monitor-enter p0

    .line 108
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/beacon/a/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_39

    .line 110
    const-string v1, " create lock file: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3b
    .catchall {:try_start_1 .. :try_end_39} :catchall_41

    .line 117
    :cond_39
    :goto_39
    monitor-exit p0

    return-object v0

    .line 113
    :catch_3b
    move-exception v0

    .line 114
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_41

    .line 115
    const/4 v0, 0x0

    goto :goto_39

    .line 106
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_57

    move-result v0

    if-gtz v0, :cond_12

    :cond_f
    move v0, v2

    .line 72
    :goto_10
    monitor-exit p0

    return v0

    .line 52
    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/i;->b(Ljava/lang/String;)Ljava/io/File;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_57

    move-result-object v3

    .line 54
    if-nez v3, :cond_1a

    move v0, v1

    .line 55
    goto :goto_10

    .line 58
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/tencent/beacon/a/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 59
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_43

    .line 60
    :cond_2a
    const-string v0, " create channel %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/tencent/beacon/a/i;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_43
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_4c} :catch_51
    .catchall {:try_start_1a .. :try_end_4c} :catchall_57

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    .line 67
    goto :goto_10

    .line 69
    :catch_51
    move-exception v0

    .line 70
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    :cond_55
    move v0, v2

    .line 72
    goto :goto_10

    .line 49
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method
