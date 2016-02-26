.class public Lcom/baidu/android/pushservice/richmedia/b;
.super Ljava/lang/Thread;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Thread;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/android/pushservice/richmedia/b;",
        ">;"
    }
.end annotation


# static fields
.field public static e:I

.field public static f:I

.field private static h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/android/pushservice/richmedia/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/baidu/android/pushservice/richmedia/q;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected c:J

.field public d:Lcom/baidu/android/pushservice/richmedia/n;

.field private g:Lcom/baidu/android/pushservice/richmedia/l;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/richmedia/b;->h:Ljava/util/HashSet;

    const/4 v0, 0x1

    sput v0, Lcom/baidu/android/pushservice/richmedia/b;->e:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/android/pushservice/richmedia/b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/richmedia/q;Lcom/baidu/android/pushservice/richmedia/n;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/baidu/android/pushservice/richmedia/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/richmedia/l;->a(Ljava/lang/String;)Lcom/baidu/android/pushservice/richmedia/l;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->g:Lcom/baidu/android/pushservice/richmedia/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->i:Z

    iput-object p2, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->b:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->c:J

    iput-object p3, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_2f

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const-string v1, "HttpTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    const/4 v0, 0x0

    goto :goto_f

    :catch_2f
    move-exception v0

    const-string v1, "HttpTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/PushDatabase$g;
    .registers 6

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->selectFileDownloadingInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/util/PushDatabase$g;

    iget-object v0, v0, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/util/PushDatabase$g;

    :goto_22
    return-object v0

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_27
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private a(Lcom/baidu/android/pushservice/richmedia/p;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_62

    if-eqz v0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-static {v0}, Lcom/baidu/android/pushservice/richmedia/b;->b(Lcom/baidu/android/pushservice/richmedia/n;)Z

    :goto_b
    return-void

    :cond_c
    :try_start_c
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    if-nez v0, :cond_3d

    iget-object v0, p1, Lcom/baidu/android/pushservice/richmedia/p;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/android/pushservice/richmedia/p;->a:Lcom/baidu/android/pushservice/richmedia/n$a;

    sget-object v2, Lcom/baidu/android/pushservice/richmedia/n$a;->a:Lcom/baidu/android/pushservice/richmedia/n$a;

    if-ne v1, v2, :cond_32

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/richmedia/b;->a(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v1, p1, Lcom/baidu/android/pushservice/richmedia/p;->e:Ljava/lang/String;

    :cond_32
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    invoke-interface {v0, p0, p1}, Lcom/baidu/android/pushservice/richmedia/q;->a(Lcom/baidu/android/pushservice/richmedia/b;Lcom/baidu/android/pushservice/richmedia/p;)V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_62

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-static {v0}, Lcom/baidu/android/pushservice/richmedia/b;->b(Lcom/baidu/android/pushservice/richmedia/n;)Z

    goto :goto_b

    :cond_3d
    :try_start_3d
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: response http error errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/baidu/android/pushservice/richmedia/p;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/baidu/android/pushservice/richmedia/q;->a(Lcom/baidu/android/pushservice/richmedia/b;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_62

    goto :goto_37

    :catchall_62
    move-exception v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-static {v1}, Lcom/baidu/android/pushservice/richmedia/b;->b(Lcom/baidu/android/pushservice/richmedia/n;)Z

    throw v0

    :cond_69
    :try_start_69
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7b

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "error: request error,request is null or fileName is null."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/baidu/android/pushservice/richmedia/q;->a(Lcom/baidu/android/pushservice/richmedia/b;Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_7b
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_86

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    invoke-interface {v0, p0}, Lcom/baidu/android/pushservice/richmedia/q;->b(Lcom/baidu/android/pushservice/richmedia/b;)V

    goto :goto_37

    :cond_86
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "IOException"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/baidu/android/pushservice/richmedia/q;->a(Lcom/baidu/android/pushservice/richmedia/b;Ljava/lang/Throwable;)V
    :try_end_97
    .catchall {:try_start_69 .. :try_end_97} :catchall_62

    goto :goto_37
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 11

    const/16 v1, 0x1000

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_11
    :goto_11
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_a1

    move-result-object v4

    if-eqz v4, :cond_cc

    :try_start_17
    const-string v0, "DownloadCompleteReceiver: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unzip----="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v1, [B

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_42

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_42
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v0, v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_7b
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_84
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_8e
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_bf

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_9a} :catch_9b

    goto :goto_8e

    :catch_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a1

    goto/16 :goto_11

    :catch_a1
    move-exception v0

    const-string v1, "HttpTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_be
    return-void

    :cond_bf
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_ca} :catch_9b

    goto/16 :goto_11

    :cond_cc
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d2} :catch_a1

    goto :goto_be
.end method

.method private static declared-synchronized a(Lcom/baidu/android/pushservice/richmedia/n;)Z
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/richmedia/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/richmedia/b;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/baidu/android/pushservice/richmedia/p;
    .registers 14

    const/4 v12, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/baidu/android/pushservice/richmedia/p;

    invoke-direct {v2}, Lcom/baidu/android/pushservice/richmedia/p;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iput-object v1, v2, Lcom/baidu/android/pushservice/richmedia/p;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    if-eqz v1, :cond_1e6

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/richmedia/n;->b()Lcom/baidu/android/pushservice/richmedia/n$a;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/android/pushservice/richmedia/p;->a:Lcom/baidu/android/pushservice/richmedia/n$a;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v1, v1, Lcom/baidu/android/pushservice/richmedia/n;->b:Ljava/lang/String;

    if-eqz v1, :cond_277

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-static {v1}, Lcom/baidu/android/pushservice/richmedia/b;->a(Lcom/baidu/android/pushservice/richmedia/n;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->g:Lcom/baidu/android/pushservice/richmedia/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/richmedia/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, already in queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/android/pushservice/richmedia/l;->c(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    :goto_4e
    return-object v0

    :cond_4f
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/richmedia/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/android/pushservice/richmedia/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/PushDatabase$g;

    move-result-object v0

    if-nez v0, :cond_e8

    new-instance v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$g;-><init>()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/richmedia/n;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/n;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/n;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/n;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->d:Ljava/lang/String;

    iput v5, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    iget-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/richmedia/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    sget v0, Lcom/baidu/android/pushservice/richmedia/b;->e:I

    iput v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    iget-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/n;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    :try_start_a8
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertFileDownloadingInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/util/PushDatabase$g;)J
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b3} :catch_df

    :goto_b3
    iget v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    sget v3, Lcom/baidu/android/pushservice/richmedia/b;->f:I

    if-ne v0, v3, :cond_f2

    iput v5, v2, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iput-object v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->d:Lcom/baidu/android/pushservice/richmedia/n;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->e:Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_4e

    :catch_df
    move-exception v0

    const-string v0, "HttpTask"

    const-string v3, "HttpTask insertFileDownloadingInfo"

    invoke-static {v0, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_e8
    iget-object v1, v0, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/richmedia/b;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    move-object v1, v0

    goto :goto_b3

    :cond_f2
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->g:Lcom/baidu/android/pushservice/richmedia/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/richmedia/n;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/android/pushservice/richmedia/l;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    invoke-interface {v0, p0}, Lcom/baidu/android/pushservice/richmedia/q;->a(Lcom/baidu/android/pushservice/richmedia/b;)V

    :cond_11f
    new-instance v4, Lcom/baidu/android/pushservice/richmedia/a;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/richmedia/a;-><init>()V

    :try_start_124
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/richmedia/n;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/richmedia/n;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/richmedia/n;->a()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    iget-object v6, v6, Lcom/baidu/android/pushservice/richmedia/n;->f:Ljava/util/List;

    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/baidu/android/pushservice/richmedia/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_268

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_162

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_162
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18b

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_18b
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v7, v6, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    const v0, 0x19000

    new-array v0, v0, [B

    iget v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    new-instance v8, Lcom/baidu/android/pushservice/richmedia/m;

    invoke-direct {v8}, Lcom/baidu/android/pushservice/richmedia/m;-><init>()V

    iget v9, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/baidu/android/pushservice/richmedia/m;->b:J

    int-to-long v10, v3

    iput-wide v10, v8, Lcom/baidu/android/pushservice/richmedia/m;->a:J

    invoke-virtual {p0, v8}, Lcom/baidu/android/pushservice/richmedia/b;->a(Lcom/baidu/android/pushservice/richmedia/m;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_1af} :catch_216
    .catchall {:try_start_124 .. :try_end_1af} :catchall_24c

    :cond_1af
    :try_start_1af
    iget-boolean v8, p0, Lcom/baidu/android/pushservice/richmedia/b;->i:Z

    if-nez v8, :cond_1b9

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b6} :catch_203
    .catchall {:try_start_1af .. :try_end_1b6} :catchall_242

    move-result v8

    if-ne v8, v12, :cond_1e9

    :cond_1b9
    :goto_1b9
    if-eqz v5, :cond_1be

    :try_start_1bb
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1be
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :goto_1c1
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->i:Z

    if-nez v0, :cond_253

    iput v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    sget v0, Lcom/baidu/android/pushservice/richmedia/b;->f:I

    iput v0, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/baidu/android/pushservice/util/PushDatabase;->updateFileDownloadingInfo(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/util/PushDatabase$g;)I

    const/4 v0, 0x0

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->e:Ljava/lang/String;
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1e1} :catch_216
    .catchall {:try_start_1bb .. :try_end_1e1} :catchall_24c

    :goto_1e1
    if-eqz v4, :cond_1e6

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/richmedia/a;->a()V

    :cond_1e6
    :goto_1e6
    move-object v0, v2

    goto/16 :goto_4e

    :cond_1e9
    const/4 v9, 0x0

    :try_start_1ea
    invoke-virtual {v7, v0, v9, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v3, v8

    new-instance v8, Lcom/baidu/android/pushservice/richmedia/m;

    invoke-direct {v8}, Lcom/baidu/android/pushservice/richmedia/m;-><init>()V

    iget v9, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/baidu/android/pushservice/richmedia/m;->b:J

    int-to-long v10, v3

    iput-wide v10, v8, Lcom/baidu/android/pushservice/richmedia/m;->a:J

    invoke-virtual {p0, v8}, Lcom/baidu/android/pushservice/richmedia/b;->a(Lcom/baidu/android/pushservice/richmedia/m;)V

    iget v8, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_200} :catch_203
    .catchall {:try_start_1ea .. :try_end_200} :catchall_242

    if-ne v3, v8, :cond_1af

    goto :goto_1b9

    :catch_203
    move-exception v0

    :try_start_204
    const-string v8, "HttpTask"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20d
    .catchall {:try_start_204 .. :try_end_20d} :catchall_242

    if-eqz v5, :cond_212

    :try_start_20f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_212
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_215} :catch_216
    .catchall {:try_start_20f .. :try_end_215} :catchall_24c

    goto :goto_1c1

    :catch_216
    move-exception v0

    :try_start_217
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_239

    const-string v1, "HttpTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download file Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_239
    const/4 v0, -0x1

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->c:I
    :try_end_23c
    .catchall {:try_start_217 .. :try_end_23c} :catchall_24c

    if-eqz v4, :cond_1e6

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/richmedia/a;->a()V

    goto :goto_1e6

    :catchall_242
    move-exception v0

    if-eqz v5, :cond_248

    :try_start_245
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_248
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    throw v0
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_24c} :catch_216
    .catchall {:try_start_245 .. :try_end_24c} :catchall_24c

    :catchall_24c
    move-exception v0

    if-eqz v4, :cond_252

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/richmedia/a;->a()V

    :cond_252
    throw v0

    :cond_253
    :try_start_253
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/PushDatabase;->deleteFileDownloadingInfo(Landroid/content/Context;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_1e1

    :cond_268
    const/4 v1, 0x1

    iput v1, v2, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->b:I
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_275} :catch_216
    .catchall {:try_start_253 .. :try_end_275} :catchall_24c

    goto/16 :goto_1e1

    :cond_277
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_297

    const-string v0, "HttpTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download file Request error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/richmedia/b;->d:Lcom/baidu/android/pushservice/richmedia/n;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_297
    const/4 v0, 0x3

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/p;->c:I

    goto/16 :goto_1e6
.end method

.method private static declared-synchronized b(Lcom/baidu/android/pushservice/richmedia/n;)Z
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/richmedia/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/richmedia/b;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/richmedia/b;)I
    .registers 8

    const/4 v0, -0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/richmedia/b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/android/pushservice/richmedia/b;->c:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    iget-wide v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_3

    :cond_16
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->c:J

    return-wide v0
.end method

.method protected a(Lcom/baidu/android/pushservice/richmedia/m;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/b;->a:Lcom/baidu/android/pushservice/richmedia/q;

    invoke-interface {v0, p0, p1}, Lcom/baidu/android/pushservice/richmedia/q;->a(Lcom/baidu/android/pushservice/richmedia/b;Lcom/baidu/android/pushservice/richmedia/m;)V

    :cond_9
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/baidu/android/pushservice/richmedia/b;

    invoke-virtual {p0, p1}, Lcom/baidu/android/pushservice/richmedia/b;->a(Lcom/baidu/android/pushservice/richmedia/b;)I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/pushservice/richmedia/b;->b()Lcom/baidu/android/pushservice/richmedia/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/richmedia/b;->a(Lcom/baidu/android/pushservice/richmedia/p;)V

    return-void
.end method
