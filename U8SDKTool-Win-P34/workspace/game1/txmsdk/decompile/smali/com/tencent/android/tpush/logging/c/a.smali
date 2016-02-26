.class public Lcom/tencent/android/tpush/logging/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p0, :cond_4

    .line 68
    :cond_3
    :goto_3
    return v0

    .line 39
    :cond_4
    :try_start_4
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_f

    .line 41
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 64
    :goto_d
    const/4 v0, 0x1

    goto :goto_3

    .line 43
    :cond_f
    instance-of v1, p0, Ljava/io/OutputStream;

    if-eqz v1, :cond_1b

    .line 45
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_d

    .line 66
    :catch_19
    move-exception v1

    goto :goto_3

    .line 47
    :cond_1b
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_25

    .line 49
    check-cast p0, Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    goto :goto_d

    .line 51
    :cond_25
    instance-of v1, p0, Ljava/io/Writer;

    if-eqz v1, :cond_2f

    .line 53
    check-cast p0, Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    goto :goto_d

    .line 55
    :cond_2f
    instance-of v1, p0, Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 57
    check-cast p0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_19

    goto :goto_d
.end method
