.class public Lcom/tencent/tmassistantbase/util/ZipUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip([B)[B
    .registers 7

    .prologue
    .line 44
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_c
    .catch Ljava/util/zip/DataFormatException; {:try_start_6 .. :try_end_c} :catch_4f
    .catchall {:try_start_6 .. :try_end_c} :catchall_33

    .line 49
    const/16 v1, 0x400

    :try_start_e
    new-array v1, v1, [B

    .line 50
    invoke-virtual {v2, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 51
    :goto_13
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_41

    .line 52
    invoke-virtual {v2, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/util/zip/DataFormatException; {:try_start_e .. :try_end_21} :catch_22
    .catchall {:try_start_e .. :try_end_21} :catchall_4a

    goto :goto_13

    .line 55
    :catch_22
    move-exception v1

    .line 56
    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_4a

    .line 58
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 59
    if-eqz v0, :cond_2e

    .line 61
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_3f

    .line 66
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 58
    :catchall_33
    move-exception v0

    :goto_34
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 59
    if-eqz v1, :cond_3c

    .line 61
    :try_start_39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 58
    :cond_3c
    :goto_3c
    throw v0

    .line 62
    :catch_3d
    move-exception v1

    goto :goto_3c

    :catch_3f
    move-exception v1

    goto :goto_2e

    .line 58
    :cond_41
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 59
    if-eqz v0, :cond_2e

    .line 61
    :try_start_46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_3f

    goto :goto_2e

    .line 58
    :catchall_4a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_34

    .line 55
    :catch_4f
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_23
.end method

.method public static zip([B)[B
    .registers 6

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 17
    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    .line 19
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_4b

    .line 20
    const/16 v0, 0x9

    :try_start_e
    invoke-virtual {v3, v0}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 21
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 22
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 25
    :goto_1b
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_34

    .line 26
    invoke-virtual {v3, v0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2a

    goto :goto_1b

    .line 30
    :catchall_2a
    move-exception v0

    :goto_2b
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    .line 31
    if-eqz v1, :cond_33

    .line 33
    :try_start_30
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_41

    .line 30
    :cond_33
    :goto_33
    throw v0

    :cond_34
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    .line 31
    if-eqz v1, :cond_3c

    .line 33
    :try_start_39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_46

    .line 40
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 34
    :catch_41
    move-exception v1

    .line 35
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 34
    :catch_46
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 30
    :catchall_4b
    move-exception v0

    move-object v1, v2

    goto :goto_2b
.end method
