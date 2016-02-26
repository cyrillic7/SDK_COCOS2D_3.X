.class public Lcom/qbao/sdk/e/h;
.super Lcom/qbao/core/util/p;
.source "Util.java"


# static fields
.field public static cb:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/qbao/sdk/e/h;->cb:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/qbao/core/util/p;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 598
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 601
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 191
    if-gtz p1, :cond_a

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 208
    :cond_9
    :goto_9
    return-object p0

    .line 194
    :cond_a
    if-lez p1, :cond_2c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 195
    const-string p0, ""

    .line 196
    :goto_14
    if-ge v0, p1, :cond_9

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 201
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_9

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_9

    const/4 v1, 0x3

    if-le p1, v1, :cond_9

    .line 205
    if-eqz p2, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, -0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_56
    move-object p0, v0

    goto :goto_9

    .line 206
    :cond_58
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_56
.end method

.method public static varargs a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 87
    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_6

    .line 96
    :cond_5
    return-object p0

    .line 91
    :cond_6
    if-eqz p1, :cond_33

    const-string v0, "0"

    .line 92
    :goto_a
    const/4 v1, 0x0

    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v2, v0

    :goto_2c
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 91
    :cond_33
    const-string v0, ""

    goto :goto_a

    .line 94
    :cond_36
    aget-object v2, p2, v1

    goto :goto_2c
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 319
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    if-nez p0, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    .line 578
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_e
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1d

    .line 575
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .prologue
    .line 494
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 514
    :goto_6
    return-void

    .line 497
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 498
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 500
    :cond_10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 501
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 502
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 504
    :goto_1e
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_30

    .line 507
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 508
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_35

    goto :goto_6

    .line 509
    :catch_2b
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 505
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_34} :catch_2b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_1e

    .line 511
    :catch_35
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static a(Ljava/io/File;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 458
    :cond_9
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 460
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 461
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 462
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 388
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 390
    invoke-static {v2}, Lcom/qbao/sdk/e/h;->b(Ljava/io/File;)V

    .line 398
    :goto_10
    :try_start_10
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_ca

    .line 399
    :try_start_15
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->size()I

    move-result v6

    .line 400
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_ce

    move-result-object v7

    move v5, v0

    move-object v2, v1

    .line 402
    :goto_1f
    if-lt v5, v6, :cond_2e

    .line 427
    :try_start_21
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 428
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_d2

    .line 452
    :cond_29
    :goto_29
    return-void

    .line 392
    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_10

    .line 403
    :cond_2e
    :try_start_2e
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 404
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_42

    move-object v0, v1

    move-object v1, v2

    .line 402
    :goto_3c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1f

    .line 406
    :cond_42
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 407
    new-instance v8, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    new-instance v3, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    if-eqz v3, :cond_7a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7a

    .line 411
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 414
    :cond_7a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_7f} :catch_d2

    .line 415
    const/16 v2, 0x400

    :try_start_81
    new-array v2, v2, [B

    .line 417
    :goto_83
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v1, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 418
    if-gtz v9, :cond_a1

    .line 423
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 424
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 425
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    move-object v0, v1

    move-object v1, v3

    goto :goto_3c

    .line 421
    :cond_a1
    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_a5} :catch_a6

    goto :goto_83

    .line 429
    :catch_a6
    move-exception v0

    move-object v2, v3

    move-object v0, v4

    .line 430
    :goto_a9
    if-eqz v0, :cond_ae

    .line 432
    :try_start_ab
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_c0

    .line 437
    :cond_ae
    :goto_ae
    if-eqz v2, :cond_b3

    .line 439
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_c5

    .line 444
    :cond_b3
    :goto_b3
    if-eqz v1, :cond_29

    .line 446
    :try_start_b5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_29

    .line 447
    :catch_ba
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto/16 :goto_29

    .line 433
    :catch_c0
    move-exception v0

    .line 434
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_ae

    .line 440
    :catch_c5
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_b3

    .line 429
    :catch_ca
    move-exception v0

    move-object v2, v1

    move-object v0, v1

    goto :goto_a9

    :catch_ce
    move-exception v0

    move-object v2, v1

    move-object v0, v4

    goto :goto_a9

    :catch_d2
    move-exception v0

    move-object v0, v4

    goto :goto_a9
.end method

.method public static final a(Landroid/graphics/Bitmap;)[B
    .registers 4

    .prologue
    .line 274
    if-nez p0, :cond_4

    .line 275
    const/4 v0, 0x0

    .line 279
    :goto_3
    return-object v0

    .line 277
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 279
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static am(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 60
    invoke-static {p0}, Lcom/qbao/core/util/k;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 65
    :cond_f
    return v0
.end method

.method public static an(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_7
    return v0

    .line 225
    :cond_8
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method

.method public static ao(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 237
    invoke-static {p0}, Lcom/qbao/sdk/e/h;->ap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ap(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 245
    const-string v0, "(\\+[8][6])?1(3[4-9]|5[7-9]|87|88|5[0-2]|47|82|83|84)[0-9]{8}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_12

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static aq(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 258
    const-string v0, "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9.-]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_12

    .line 261
    const/4 v0, 0x0

    .line 263
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static ar(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 2

    .prologue
    .line 307
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 308
    return-object v0
.end method

.method public static as(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 337
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 338
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 339
    const-string v0, ""

    .line 341
    :try_start_10
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_17} :catch_19

    move-result-object v0

    .line 345
    :goto_18
    return-object v0

    .line 342
    :catch_19
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_18
.end method

.method public static at(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, ""

    :cond_8
    return-object p0
.end method

.method public static au(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 610
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 611
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-lt v0, v3, :cond_12

    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 613
    :cond_12
    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static b(Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 8

    .prologue
    .line 517
    if-nez p2, :cond_3

    .line 540
    :goto_2
    return-void

    .line 521
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 522
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 524
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CMGC/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 526
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 527
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 529
    :goto_30
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_46

    .line 532
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 533
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 534
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_40} :catch_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_4b

    goto :goto_2

    .line 535
    :catch_41
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 530
    :cond_46
    const/4 v4, 0x0

    :try_start_47
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_41
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_30

    .line 537
    :catch_4b
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static b(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 366
    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9

    .line 382
    :cond_8
    :goto_8
    return-void

    .line 369
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_8

    array-length v0, v1

    if-lez v0, :cond_8

    .line 371
    array-length v2, v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    .line 372
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 373
    invoke-static {v3}, Lcom/qbao/sdk/e/h;->b(Ljava/io/File;)V

    .line 375
    :cond_21
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_27

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 379
    :catch_27
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static be()Ljava/lang/String;
    .registers 3

    .prologue
    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bf()Ljava/lang/String;
    .registers 3

    .prologue
    .line 546
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 548
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_16
    return-object v0

    .line 550
    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method public static c(ILjava/lang/String;)F
    .registers 4

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    const/4 v0, 0x0

    .line 77
    :goto_7
    return v0

    .line 74
    :cond_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .registers 4

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    .line 171
    :goto_c
    return-object v0

    .line 167
    :catch_d
    move-exception v0

    .line 168
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 169
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static e([BLjava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 466
    const-string v2, "mounted"

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 466
    if-eqz v1, :cond_7a

    .line 468
    :try_start_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 469
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    const-string v1, "/Download/data/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.qbao.sdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 472
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 474
    :cond_3c
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 477
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 479
    :cond_65
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 481
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 482
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_79} :catch_7b

    .line 483
    const/4 v0, 0x1

    .line 489
    :cond_7a
    :goto_7a
    return v0

    .line 484
    :catch_7b
    move-exception v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a
.end method

.method public static f(Ljava/io/File;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 v0, 0x0

    .line 143
    :goto_3
    return-object v0

    .line 135
    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_27

    .line 140
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_27
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .registers 6

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    const-string v2, "find"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    .line 108
    :goto_23
    return-object v0

    .line 105
    :catch_24
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_23
.end method

.method public static final j([B)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 290
    if-nez p0, :cond_4

    .line 295
    :goto_3
    return-object v0

    .line 293
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_b

    move-result-object v0

    goto :goto_3

    .line 294
    :catch_b
    move-exception v1

    goto :goto_3
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 153
    if-nez p0, :cond_3

    .line 160
    :goto_2
    return-void

    .line 156
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_2

    .line 157
    :catch_12
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static l(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 561
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 562
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 563
    const/4 v0, 0x0

    :goto_b
    if-lt v0, p0, :cond_12

    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 564
    :cond_12
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 565
    sget-object v4, Lcom/qbao/sdk/e/h;->cb:[C

    aget-char v3, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    .line 114
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 115
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 118
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "macAddr--- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qbao/sdk/e/h;->log(Ljava/lang/String;)V

    .line 122
    :goto_30
    return-object v0

    :cond_31
    const-string v0, "0"

    goto :goto_30
.end method

.method public static y(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 2

    .prologue
    .line 175
    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lcom/qbao/sdk/e/h;->d(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static z(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 186
    return-object v1

    .line 182
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 183
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method
