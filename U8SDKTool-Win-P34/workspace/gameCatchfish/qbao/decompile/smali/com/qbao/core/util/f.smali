.class public Lcom/qbao/core/util/f;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static P()Z
    .registers 2

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Ljava/io/File;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 132
    :cond_9
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 134
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 135
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 136
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 240
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 243
    return-void

    .line 241
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 297
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 299
    invoke-static {v2}, Lcom/qbao/core/util/f;->b(Ljava/io/File;)V

    .line 307
    :goto_10
    :try_start_10
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_ca

    .line 308
    :try_start_15
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->size()I

    move-result v6

    .line 309
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_ce

    move-result-object v7

    move v5, v0

    move-object v2, v1

    .line 311
    :goto_1f
    if-lt v5, v6, :cond_2e

    .line 335
    :try_start_21
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 336
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_d2

    .line 360
    :cond_29
    :goto_29
    return-void

    .line 301
    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_10

    .line 312
    :cond_2e
    :try_start_2e
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 313
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_42

    move-object v0, v1

    move-object v1, v2

    .line 311
    :goto_3c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1f

    .line 315
    :cond_42
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 316
    new-instance v8, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance v3, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    if-eqz v3, :cond_7a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7a

    .line 319
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 322
    :cond_7a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_7f} :catch_d2

    .line 323
    const/16 v2, 0x400

    :try_start_81
    new-array v2, v2, [B

    .line 325
    :goto_83
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v1, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 326
    if-gtz v9, :cond_a1

    .line 331
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 332
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 333
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    move-object v0, v1

    move-object v1, v3

    goto :goto_3c

    .line 329
    :cond_a1
    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_a5} :catch_a6

    goto :goto_83

    .line 337
    :catch_a6
    move-exception v0

    move-object v2, v3

    move-object v0, v4

    .line 338
    :goto_a9
    if-eqz v0, :cond_ae

    .line 340
    :try_start_ab
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_c0

    .line 345
    :cond_ae
    :goto_ae
    if-eqz v2, :cond_b3

    .line 347
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_c5

    .line 352
    :cond_b3
    :goto_b3
    if-eqz v1, :cond_29

    .line 354
    :try_start_b5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_29

    .line 355
    :catch_ba
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto/16 :goto_29

    .line 341
    :catch_c0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_ae

    .line 348
    :catch_c5
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_b3

    .line 337
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

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 246
    if-nez p2, :cond_4

    .line 270
    :goto_3
    return v0

    .line 250
    :cond_4
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 251
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 253
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 254
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 255
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 256
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 258
    :goto_22
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_34

    .line 261
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 262
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 263
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 264
    const/4 v0, 0x1

    goto :goto_3

    .line 259
    :cond_34
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_3e

    goto :goto_22

    .line 265
    :catch_39
    move-exception v1

    .line 266
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 267
    :catch_3e
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 368
    :try_start_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 369
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Download/data/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.qbao.sdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 373
    :cond_3c
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 377
    :cond_65
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 378
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 379
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 381
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_78} :catch_7a

    .line 382
    const/4 v0, 0x1

    .line 388
    :cond_79
    :goto_79
    return v0

    .line 383
    :catch_7a
    move-exception v1

    .line 384
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 88
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_97
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_4d
    .catchall {:try_start_1 .. :try_end_8} :catchall_68

    move-result-object v2

    .line 89
    :try_start_9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_8d
    .catchall {:try_start_9 .. :try_end_e} :catchall_82

    .line 90
    const/16 v3, 0x200

    :try_start_10
    new-array v3, v3, [B

    .line 92
    :goto_12
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_28

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_91
    .catchall {:try_start_10 .. :try_end_1c} :catchall_87

    move-result-object v0

    .line 101
    if-eqz v2, :cond_22

    .line 103
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_3e

    .line 110
    :cond_22
    :goto_22
    if-eqz v1, :cond_27

    .line 112
    :try_start_24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_43

    .line 119
    :cond_27
    :goto_27
    return-object v0

    .line 93
    :cond_28
    const/4 v5, 0x0

    :try_start_29
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_91
    .catchall {:try_start_29 .. :try_end_2c} :catchall_87

    goto :goto_12

    .line 96
    :catch_2d
    move-exception v3

    .line 101
    :goto_2e
    if-eqz v2, :cond_33

    .line 103
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_48

    .line 110
    :cond_33
    :goto_33
    if-eqz v1, :cond_27

    .line 112
    :try_start_35
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_27

    .line 113
    :catch_39
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 104
    :catch_3e
    move-exception v2

    .line 105
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 113
    :catch_43
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 104
    :catch_48
    move-exception v2

    .line 105
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 98
    :catch_4d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 99
    :goto_50
    :try_start_50
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_89

    .line 101
    if-eqz v3, :cond_58

    .line 103
    :try_start_55
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_63

    .line 110
    :cond_58
    :goto_58
    if-eqz v2, :cond_27

    .line 112
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_27

    .line 113
    :catch_5e
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 104
    :catch_63
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 100
    :catchall_68
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 101
    :goto_6d
    if-eqz v2, :cond_72

    .line 103
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_78

    .line 110
    :cond_72
    :goto_72
    if-eqz v1, :cond_77

    .line 112
    :try_start_74
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_7d

    .line 118
    :cond_77
    :goto_77
    throw v0

    .line 104
    :catch_78
    move-exception v2

    .line 105
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    .line 113
    :catch_7d
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 100
    :catchall_82
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6d

    :catchall_87
    move-exception v0

    goto :goto_6d

    :catchall_89
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_6d

    .line 98
    :catch_8d
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    goto :goto_50

    :catch_91
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_50

    .line 96
    :catch_97
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_2e

    :catch_9b
    move-exception v1

    move-object v1, v0

    goto :goto_2e
.end method

.method public static a(Ljava/io/File;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 41
    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_af
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_70
    .catchall {:try_start_5 .. :try_end_8} :catchall_8b

    move-result v3

    if-nez v3, :cond_20

    .line 57
    :cond_b
    if-eqz v0, :cond_10

    .line 59
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_16

    .line 64
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 66
    :try_start_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_1b

    .line 72
    :cond_15
    :goto_15
    return-object v0

    .line 60
    :catch_16
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 67
    :catch_1b
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 44
    :cond_20
    :try_start_20
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_af
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_70
    .catchall {:try_start_20 .. :try_end_29} :catchall_8b

    .line 45
    :try_start_29
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_aa
    .catchall {:try_start_29 .. :try_end_2e} :catchall_a4

    .line 46
    const/16 v1, 0x200

    :try_start_30
    new-array v1, v1, [B

    .line 48
    :goto_32
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_4d

    .line 51
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_52
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_ad
    .catchall {:try_start_30 .. :try_end_3c} :catchall_a8

    move-result-object v0

    .line 57
    if-eqz v3, :cond_42

    .line 59
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_66

    .line 64
    :cond_42
    :goto_42
    if-eqz v2, :cond_15

    .line 66
    :try_start_44
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_15

    .line 67
    :catch_48
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 49
    :cond_4d
    const/4 v5, 0x0

    :try_start_4e
    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_ad
    .catchall {:try_start_4e .. :try_end_51} :catchall_a8

    goto :goto_32

    .line 52
    :catch_52
    move-exception v1

    .line 53
    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_a8

    .line 57
    if-eqz v3, :cond_5b

    .line 59
    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6b

    .line 64
    :cond_5b
    :goto_5b
    if-eqz v2, :cond_15

    .line 66
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_15

    .line 67
    :catch_61
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 60
    :catch_66
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 60
    :catch_6b
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 54
    :catch_70
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 55
    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_a8

    .line 57
    if-eqz v3, :cond_7b

    .line 59
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_86

    .line 64
    :cond_7b
    :goto_7b
    if-eqz v2, :cond_15

    .line 66
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_15

    .line 67
    :catch_81
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 60
    :catch_86
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    .line 56
    :catchall_8b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 57
    :goto_8f
    if-eqz v3, :cond_94

    .line 59
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_9a

    .line 64
    :cond_94
    :goto_94
    if-eqz v2, :cond_99

    .line 66
    :try_start_96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9f

    .line 71
    :cond_99
    :goto_99
    throw v0

    .line 60
    :catch_9a
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_94

    .line 67
    :catch_9f
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 56
    :catchall_a4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8f

    :catchall_a8
    move-exception v0

    goto :goto_8f

    .line 54
    :catch_aa
    move-exception v1

    move-object v2, v0

    goto :goto_73

    :catch_ad
    move-exception v1

    goto :goto_73

    .line 52
    :catch_af
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_53

    :catch_b3
    move-exception v1

    move-object v2, v0

    goto :goto_53
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/qbao/core/util/f;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 124
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_7
.end method

.method public static b(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 275
    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9

    .line 291
    :cond_8
    :goto_8
    return-void

    .line 278
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_8

    array-length v0, v1

    if-lez v0, :cond_8

    .line 280
    array-length v2, v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 282
    invoke-static {v3}, Lcom/qbao/core/util/f;->b(Ljava/io/File;)V

    .line 284
    :cond_21
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_27

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 288
    :catch_27
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    :goto_6
    return-void

    .line 218
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 221
    :cond_10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 222
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 225
    :goto_1e
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_30

    .line 228
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 229
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_35

    goto :goto_6

    .line 230
    :catch_2b
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 226
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_34} :catch_2b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_1e

    .line 232
    :catch_35
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static e([BLjava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 141
    :try_start_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 142
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Download/data/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.qbao.sdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_3c
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 150
    :cond_65
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 152
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 153
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_79} :catch_7b

    .line 154
    const/4 v0, 0x1

    .line 160
    :cond_7a
    :goto_7a
    return v0

    .line 155
    :catch_7b
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a
.end method

.method public static r(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 166
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/Download/data/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.qbao.sdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 180
    :cond_32
    :goto_32
    return-void

    .line 171
    :cond_33
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_32

    .line 177
    :catch_5d
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public static final s(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 184
    :try_start_1
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 185
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Download/data/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.qbao.sdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    .line 210
    :cond_33
    :goto_33
    return-object v0

    .line 190
    :cond_34
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 194
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    :goto_8b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_99

    .line 201
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 199
    :cond_99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9c} :catch_a2

    goto :goto_8b

    .line 205
    :catch_9d
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_33

    .line 207
    :catch_a2
    move-exception v1

    .line 208
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33
.end method

.method public static final t(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 397
    :try_start_1
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 398
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 399
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Download/data/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.qbao.sdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    .line 422
    :cond_33
    :goto_33
    return-object v0

    .line 403
    :cond_34
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 408
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 409
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 410
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 411
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6b} :catch_6d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6b} :catch_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6b} :catch_77

    move-object v0, v1

    .line 412
    goto :goto_33

    .line 415
    :catch_6d
    move-exception v1

    .line 416
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_33

    .line 417
    :catch_72
    move-exception v1

    .line 418
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 419
    :catch_77
    move-exception v1

    .line 420
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_33
.end method
