.class public Lcom/tencent/android/tpush/logging/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 46
    :cond_16
    :goto_16
    return v0

    .line 44
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public static b()Lcom/tencent/android/tpush/logging/b/e;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {}, Lcom/tencent/android/tpush/logging/b/d;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 64
    :goto_7
    return-object v0

    .line 61
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/logging/b/e;->b(Ljava/io/File;)Lcom/tencent/android/tpush/logging/b/e;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 62
    :catch_11
    move-exception v1

    goto :goto_7
.end method
