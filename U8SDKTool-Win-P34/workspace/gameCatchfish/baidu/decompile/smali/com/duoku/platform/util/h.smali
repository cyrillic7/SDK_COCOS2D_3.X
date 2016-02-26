.class public final Lcom/duoku/platform/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 6

    .prologue
    .line 103
    .line 105
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 106
    const/4 v0, 0x0

    .line 109
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    :goto_f
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1b

    .line 118
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1d

    .line 124
    :goto_19
    int-to-long v0, v0

    return-wide v0

    .line 115
    :cond_1b
    add-int/2addr v0, v2

    goto :goto_f

    .line 120
    :catch_1d
    move-exception v1

    goto :goto_19
.end method
