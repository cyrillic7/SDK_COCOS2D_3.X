.class public Lcom/baidu/android/pushservice/a/a/a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/a/a/a$b;,
        Lcom/baidu/android/pushservice/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/android/pushservice/a/a/a$a;

.field private b:[Landroid/net/Uri;

.field private c:I


# direct methods
.method public varargs constructor <init>(ILcom/baidu/android/pushservice/a/a/a$a;[Landroid/net/Uri;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const v0, 0x1fa400

    iput v0, p0, Lcom/baidu/android/pushservice/a/a/a;->c:I

    if-nez p2, :cond_12

    const-string v0, "DownLoadThread"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void

    :cond_12
    iput p1, p0, Lcom/baidu/android/pushservice/a/a/a;->c:I

    iput-object p2, p0, Lcom/baidu/android/pushservice/a/a/a;->a:Lcom/baidu/android/pushservice/a/a/a$a;

    iput-object p3, p0, Lcom/baidu/android/pushservice/a/a/a;->b:[Landroid/net/Uri;

    goto :goto_11
.end method

.method static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/a/a/a;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    if-ge v0, v1, :cond_14

    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    :cond_14
    return v0
.end method

.method private a(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/baidu/android/pushservice/a/a/g;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_13
    const-string v0, "DownLoadThread"

    const-string v2, "getInputStreamFromUri function\'s uri param is error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/baidu/android/pushservice/a/a/a$b;->a()Lcom/baidu/android/pushservice/a/a/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/android/pushservice/a/a/a$b;->c:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1b

    :cond_53
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_1b

    :catch_74
    move-exception v0

    const-string v0, "DownLoadThread"

    const-string v2, "Uri can\'t open a inputstream"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    move-object v0, v1

    goto :goto_1b
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_21
    return-object v1
.end method

.method private a([Landroid/net/Uri;)[Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    if-ge v1, v3, :cond_a

    :cond_8
    move-object v0, v2

    :goto_9
    return-object v0

    :cond_a
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    :goto_d
    array-length v3, p1

    if-ge v0, v3, :cond_f9

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/baidu/android/pushservice/a/a/a;->a(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_f5

    :try_start_18
    invoke-direct {p0, v4}, Lcom/baidu/android/pushservice/a/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    if-eqz v3, :cond_42

    array-length v5, v3

    if-lez v5, :cond_42

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v6, -0x1

    iget v7, p0, Lcom/baidu/android/pushservice/a/a/a;->c:I

    invoke-static {v5, v6, v7}, Lcom/baidu/android/pushservice/a/a/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_42} :catch_66
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_42} :catch_93
    .catchall {:try_start_18 .. :try_end_42} :catchall_d2

    :cond_42
    :try_start_42
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_48

    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_48
    move-exception v3

    const-string v4, "DownLoadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catch_66
    move-exception v3

    :try_start_67
    const-string v3, "DownLoadThread"

    const-string v5, "out of memory err no bitmap found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    aput-object v3, v1, v0
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_d2

    :try_start_71
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_45

    :catch_75
    move-exception v3

    const-string v4, "DownLoadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catch_93
    move-exception v3

    :try_start_94
    const-string v5, "DownLoadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    aput-object v3, v1, v0
    :try_end_af
    .catchall {:try_start_94 .. :try_end_af} :catchall_d2

    :try_start_af
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_45

    :catch_b3
    move-exception v3

    const-string v4, "DownLoadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    :catchall_d2
    move-exception v0

    :try_start_d3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    :goto_d6
    throw v0

    :catch_d7
    move-exception v1

    const-string v2, "DownLoadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    :cond_f5
    aput-object v2, v1, v0

    goto/16 :goto_45

    :cond_f9
    move-object v0, v1

    goto/16 :goto_9
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 14

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p2, v10, :cond_12

    move v0, v1

    :goto_b
    if-ne p1, v10, :cond_20

    const/16 v2, 0x80

    :goto_f
    if-ge v2, v0, :cond_32

    :cond_11
    :goto_11
    return v0

    :cond_12
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_b

    :cond_20
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_f

    :cond_32
    if-ne p2, v10, :cond_38

    if-ne p1, v10, :cond_38

    move v0, v1

    goto :goto_11

    :cond_38
    if-eq p1, v10, :cond_11

    move v0, v2

    goto :goto_11
.end method


# virtual methods
.method protected a([Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a;->a:Lcom/baidu/android/pushservice/a/a/a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a;->a:Lcom/baidu/android/pushservice/a/a/a$a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/a/a/a$a;->a([Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a;->b:[Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/a/a/a;->a([Landroid/net/Uri;)[Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/a/a/a;->a([Landroid/graphics/Bitmap;)V

    return-void
.end method
