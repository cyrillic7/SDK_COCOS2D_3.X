.class public Lcom/nearme/plugin/framework/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 13
    const/4 v3, 0x0

    .line 15
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 18
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_70
    .catchall {:try_start_2 .. :try_end_16} :catchall_57

    .line 19
    const v1, 0xc000

    :try_start_19
    new-array v1, v1, [B

    .line 21
    :goto_1b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_36

    .line 22
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_27
    .catchall {:try_start_19 .. :try_end_26} :catchall_6d

    goto :goto_1b

    .line 27
    :catch_27
    move-exception v1

    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_6d

    .line 29
    if-eqz v2, :cond_30

    .line 31
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4d

    .line 36
    :cond_30
    :goto_30
    if-eqz p0, :cond_35

    .line 38
    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_52

    .line 44
    :cond_35
    :goto_35
    return v0

    .line 24
    :cond_36
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_27
    .catchall {:try_start_36 .. :try_end_39} :catchall_6d

    .line 31
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_43

    .line 36
    :goto_3c
    if-eqz p0, :cond_41

    .line 38
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_48

    .line 41
    :cond_41
    :goto_41
    const/4 v0, 0x1

    goto :goto_35

    .line 33
    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 40
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 33
    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    .line 40
    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 29
    :catchall_57
    move-exception v0

    :goto_58
    if-eqz v3, :cond_5d

    .line 31
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_63

    .line 36
    :cond_5d
    :goto_5d
    if-eqz p0, :cond_62

    .line 38
    :try_start_5f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_68

    .line 41
    :cond_62
    :goto_62
    throw v0

    .line 33
    :catch_63
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 40
    :catch_68
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 29
    :catchall_6d
    move-exception v0

    move-object v3, v2

    goto :goto_58

    .line 27
    :catch_70
    move-exception v1

    move-object v2, v3

    goto :goto_28
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/FileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    .line 53
    :goto_e
    return v0

    .line 51
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 53
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static safelyDeleteFile(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 65
    :cond_9
    return-void
.end method

.method public static safelyDeleteFile(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/io/File;)V

    .line 59
    return-void
.end method
