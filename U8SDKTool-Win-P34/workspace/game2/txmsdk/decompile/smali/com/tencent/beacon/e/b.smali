.class public final Lcom/tencent/beacon/e/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-static {p0}, Lcom/tencent/beacon/e/b;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 35
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 41
    invoke-static {p0}, Lcom/tencent/beacon/e/b;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    const/4 v0, 0x1

    .line 44
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x40

    .line 54
    invoke-static {p0}, Lcom/tencent/beacon/e/b;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 55
    if-nez v0, :cond_b

    .line 56
    const-string v0, "unknown"

    .line 66
    :goto_a
    return-object v0

    .line 57
    :cond_b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 58
    const-string v0, "wifi"

    goto :goto_a

    .line 60
    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_26

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static d(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    if-nez v0, :cond_d

    move-object v0, v1

    .line 26
    :goto_c
    return-object v0

    .line 20
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_c

    .line 22
    :catch_12
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 26
    goto :goto_c
.end method
