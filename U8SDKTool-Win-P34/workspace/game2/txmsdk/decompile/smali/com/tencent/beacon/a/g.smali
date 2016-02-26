.class public final Lcom/tencent/beacon/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/beacon/a/g;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/tencent/beacon/a/g;->b:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;
    .registers 3

    .prologue
    .line 45
    const-class v1, Lcom/tencent/beacon/a/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/a/g;->a:Lcom/tencent/beacon/a/g;

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 46
    new-instance v0, Lcom/tencent/beacon/a/g;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/a/g;->a:Lcom/tencent/beacon/a/g;

    .line 48
    :cond_10
    sget-object v0, Lcom/tencent/beacon/a/g;->a:Lcom/tencent/beacon/a/g;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 75
    :goto_2
    return-object v0

    .line 71
    :catch_3
    move-exception v0

    .line 72
    const-string v1, "getDeviceName error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    const-string v0, ""

    goto :goto_2
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 85
    :goto_2
    return-object v0

    .line 81
    :catch_3
    move-exception v0

    .line 82
    const-string v1, "getVersion error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    const-string v0, ""

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 103
    const-string v1, ""

    .line 104
    if-nez p0, :cond_e

    .line 105
    const-string v0, "getImei but context == null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 123
    :goto_d
    return-object v0

    .line 110
    :cond_e
    :try_start_e
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 112
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 113
    if-nez v1, :cond_40

    .line 114
    const-string v0, ""
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1e} :catch_45

    .line 118
    :goto_1e
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMEI:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_33} :catch_34

    goto :goto_d

    .line 119
    :catch_34
    move-exception v1

    .line 120
    :goto_35
    const-string v2, "getImei error!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 116
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_1e

    .line 119
    :catch_45
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_35
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 95
    :goto_2
    return-object v0

    .line 91
    :catch_3
    move-exception v0

    .line 92
    const-string v1, "getApiLevel error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    const-string v0, ""

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 128
    const-string v1, ""

    .line 129
    if-nez p0, :cond_e

    .line 130
    const-string v0, "getImsi but context == null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 146
    :goto_d
    return-object v0

    .line 134
    :cond_e
    :try_start_e
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 136
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 137
    if-nez v1, :cond_1f

    .line 138
    const-string v0, ""

    goto :goto_d

    .line 140
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_d

    .line 142
    :catch_24
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 143
    const-string v2, "getImsi error!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 339
    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v2, "HARDWARE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 340
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_14

    .line 342
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 346
    :cond_14
    :goto_14
    return-object v0

    .line 343
    :catch_15
    move-exception v1

    .line 344
    const-string v1, "getCpuProductorName error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string v0, ""

    .line 152
    if-nez p0, :cond_d

    .line 153
    const-string v1, "getAndroidId but context == null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :goto_c
    return-object v0

    .line 158
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_21

    move-result-object v1

    .line 160
    if-nez v1, :cond_1c

    .line 161
    :try_start_19
    const-string v0, ""

    goto :goto_c

    .line 163
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1f} :catch_2d

    move-result-object v0

    goto :goto_c

    .line 165
    :catch_21
    move-exception v1

    .line 166
    :goto_22
    const-string v2, "getAndroidId error!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 165
    :catch_2d
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_22
.end method

.method public static e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 353
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    .line 355
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 361
    :goto_2c
    return-object v0

    .line 357
    :catch_2d
    move-exception v1

    .line 358
    const-string v2, "getDisplayMetrics error!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v1, ""

    .line 194
    if-nez p0, :cond_e

    .line 195
    const-string v0, "getMacAddress but context == null!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 213
    :goto_d
    return-object v0

    .line 200
    :cond_e
    :try_start_e
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 202
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 204
    if-nez v1, :cond_23

    .line 205
    const-string v0, ""

    goto :goto_d

    .line 207
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_d

    .line 209
    :catch_28
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 210
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    const-string v1, "getMacAddress error!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    const-string v1, ""

    .line 218
    if-nez p0, :cond_d

    .line 219
    const-string v0, "getMacAddress but context == null!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_c
    return-object v1

    .line 224
    :cond_d
    :try_start_d
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 226
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1c} :catch_1f

    move-result-object v0

    :goto_1d
    move-object v1, v0

    .line 232
    goto :goto_c

    .line 228
    :catch_1f
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    const-string v0, "getMacAddress error!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1d
.end method

.method public static g()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v11, 0xa

    const-wide/16 v2, 0x0

    .line 423
    const-string v4, "0"

    .line 429
    :try_start_6
    const-string v5, "/proc/stat"

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/beacon/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 432
    invoke-static {v5}, Lcom/tencent/beacon/b/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_22f

    .line 434
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 435
    array-length v1, v0

    const/16 v6, 0xb

    if-lt v1, v6, :cond_22f

    .line 436
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/16 v6, 0xa

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "totalCpuTime1:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v8, v0

    .line 440
    :goto_b5
    invoke-static {v10}, Lcom/tencent/beacon/b/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_22c

    .line 442
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 443
    array-length v1, v0

    const/16 v6, 0x12

    if-lt v1, v6, :cond_22c

    .line 444
    const/16 v1, 0xd

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    const/16 v6, 0x10

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "proCpuTime1:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10f} :catch_224

    .line 449
    :goto_10f
    const-wide/16 v6, 0x1f4

    :try_start_111
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_114
    .catch Ljava/lang/InterruptedException; {:try_start_111 .. :try_end_114} :catch_21e
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_224

    .line 450
    :goto_114
    :try_start_114
    invoke-static {v5}, Lcom/tencent/beacon/b/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    if-eqz v5, :cond_229

    .line 452
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 453
    array-length v6, v5

    if-lt v6, v11, :cond_229

    .line 454
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x7

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x8

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x9

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xa

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    int-to-long v6, v5

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "totalCpuTime2:"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5, v11}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    :goto_1a7
    invoke-static {v10}, Lcom/tencent/beacon/b/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    if-eqz v5, :cond_201

    .line 460
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 461
    array-length v10, v5

    const/16 v11, 0x12

    if-lt v10, v11, :cond_201

    .line 462
    const/16 v2, 0xd

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xe

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0xf

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x10

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "proCpuTime2:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5, v10}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :cond_201
    sub-long/2addr v6, v8

    long-to-float v5, v6

    .line 467
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_227

    .line 468
    sub-long v0, v2, v0

    long-to-float v0, v0

    div-float/2addr v0, v5

    float-to-double v0, v0

    .line 469
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_21d
    return-object v0

    .line 449
    :catch_21e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_222} :catch_224

    goto/16 :goto_114

    .line 471
    :catch_224
    move-exception v0

    move-object v0, v4

    goto :goto_21d

    :cond_227
    move-object v0, v4

    goto :goto_21d

    :cond_229
    move-wide v6, v2

    goto/16 :goto_1a7

    :cond_22c
    move-wide v0, v2

    goto/16 :goto_10f

    :cond_22f
    move-wide v8, v2

    goto/16 :goto_b5
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 241
    const-string v1, ""

    .line 242
    if-nez p0, :cond_d

    .line 243
    const-string v0, "getWifiSSID but context == null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :goto_c
    return-object v1

    .line 247
    :cond_d
    :try_start_d
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 248
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 250
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_25

    move-result-object v0

    :goto_23
    move-object v1, v0

    .line 256
    goto :goto_c

    .line 252
    :catch_25
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const-string v0, "getWifiSSID error!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    move-object v0, v1

    goto :goto_23
.end method

.method public static h(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 269
    if-nez p0, :cond_d

    .line 270
    const-string v0, "getDisplayMetrics but context == null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 283
    :goto_c
    return-object v0

    .line 274
    :cond_d
    :try_start_d
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 275
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_23

    move-object v0, v2

    .line 278
    goto :goto_c

    .line 279
    :catch_23
    move-exception v0

    .line 280
    const-string v2, "getDisplayMetrics error!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 283
    goto :goto_c
.end method

.method public static h()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 487
    const-string v1, "/proc/meminfo"

    .line 491
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_55
    .catchall {:try_start_4 .. :try_end_9} :catchall_7a

    .line 492
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_9b
    .catchall {:try_start_9 .. :try_end_10} :catchall_95

    .line 493
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v4, ":\\s+"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 495
    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 496
    const-string v4, "kb"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_41} :catch_9e
    .catchall {:try_start_10 .. :try_end_41} :catchall_99

    move-result-object v0

    .line 505
    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 508
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_48} :catch_49

    .line 516
    :cond_48
    :goto_48
    return-object v0

    .line 511
    :catch_49
    move-exception v1

    .line 512
    const-string v2, "getFreeMem error!"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 499
    :catch_55
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 500
    :goto_58
    :try_start_58
    const-string v4, "getFreeMem error!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_99

    .line 505
    if-eqz v2, :cond_68

    .line 506
    :try_start_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 508
    :cond_68
    if-eqz v3, :cond_48

    .line 509
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6d} :catch_6e

    goto :goto_48

    .line 511
    :catch_6e
    move-exception v1

    .line 512
    const-string v2, "getFreeMem error!"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 504
    :catchall_7a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 505
    :goto_7e
    if-eqz v2, :cond_83

    .line 506
    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 508
    :cond_83
    if-eqz v3, :cond_88

    .line 509
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_88} :catch_89

    .line 514
    :cond_88
    :goto_88
    throw v0

    .line 511
    :catch_89
    move-exception v1

    .line 512
    const-string v2, "getFreeMem error!"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_88

    .line 504
    :catchall_95
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7e

    :catchall_99
    move-exception v0

    goto :goto_7e

    .line 499
    :catch_9b
    move-exception v1

    move-object v2, v0

    goto :goto_58

    :catch_9e
    move-exception v1

    goto :goto_58
.end method

.method public static i(Landroid/content/Context;)J
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 365
    if-nez p0, :cond_e

    .line 366
    const-string v0, "getFreeMem but context == null!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    .line 379
    :goto_d
    return-wide v0

    .line 370
    :cond_e
    :try_start_e
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 372
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 373
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 374
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_d

    .line 375
    :catch_21
    move-exception v0

    .line 376
    const-string v1, "getFreeMem error!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v0, v2

    .line 379
    goto :goto_d
.end method

.method public static j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 569
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 574
    :goto_9
    return-object v0

    .line 570
    :catch_a
    move-exception v1

    .line 571
    const-string v2, "getCountry error!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 19

    .prologue
    .line 589
    if-nez p0, :cond_c

    .line 590
    const-string v1, "getSensor but context == null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    const/4 v1, 0x0

    .line 672
    :goto_b
    return-object v1

    .line 594
    :cond_c
    const-string v1, "getSensor start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const-string v5, "X"

    .line 596
    const-string v2, "X"

    .line 597
    const-string v4, "X"

    .line 598
    const-string v3, "X"

    .line 600
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 603
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v6, 0xa

    if-lt v1, v6, :cond_13d

    .line 607
    :try_start_2b
    const-string v1, "android.hardware.Camera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 608
    const-string v1, "getNumberOfCameras"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v9, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 609
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 610
    if-nez v10, :cond_82

    .line 611
    const-string v5, "N"

    .line 612
    const-string v1, "N"
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_4d} :catch_104

    move-object v6, v5

    move-object v5, v1

    .line 652
    :goto_4f
    :try_start_4f
    const-string v1, "sensor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 654
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_fa

    .line 655
    const-string v2, "Y"
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_63} :catch_126

    .line 659
    :goto_63
    const/4 v4, 0x4

    :try_start_64
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 660
    const-string v1, "Y"
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6c} :catch_12c

    move-object v3, v5

    move-object v4, v6

    .line 670
    :goto_6e
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 614
    :cond_82
    :try_start_82
    const-string v1, "android.hardware.Camera$CameraInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 616
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .line 617
    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    .line 618
    const/4 v6, 0x0

    .line 619
    array-length v14, v13

    const/4 v1, 0x0

    move v7, v1

    :goto_94
    if-ge v7, v14, :cond_a5

    aget-object v1, v13, v7

    .line 620
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "getCameraInfo"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ea

    move-object v6, v1

    .line 625
    :cond_a5
    const-string v1, "facing"

    invoke-virtual {v11, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 627
    const-string v1, "CAMERA_FACING_BACK"

    invoke-virtual {v11, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 629
    const-string v1, "CAMERA_FACING_FRONT"

    invoke-virtual {v11, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_b6} :catch_104

    move-result-object v11

    .line 632
    if-eqz v6, :cond_139

    .line 633
    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v2

    move-object v2, v5

    move/from16 v5, v17

    :goto_c0
    if-ge v5, v10, :cond_135

    .line 634
    const/4 v14, 0x2

    :try_start_c3
    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-virtual {v6, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 636
    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 637
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 638
    if-ne v14, v15, :cond_ee

    .line 639
    const-string v2, "Y"

    .line 640
    const/4 v14, 0x1

    if-ne v10, v14, :cond_e7

    .line 641
    const-string v1, "N"

    .line 633
    :cond_e7
    :goto_e7
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 619
    :cond_ea
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_94

    .line 642
    :cond_ee
    move/from16 v0, v16

    if-ne v14, v0, :cond_e7

    .line 643
    const-string v1, "Y"

    .line 644
    const/4 v14, 0x1

    if-ne v10, v14, :cond_e7

    .line 645
    const-string v2, "N"
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_f9} :catch_11e

    goto :goto_e7

    .line 657
    :cond_fa
    :try_start_fa
    const-string v2, "N"
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_fc} :catch_126

    goto/16 :goto_63

    .line 662
    :cond_fe
    :try_start_fe
    const-string v1, "N"
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_100} :catch_12c

    move-object v3, v5

    move-object v4, v6

    .line 668
    goto/16 :goto_6e

    .line 665
    :catch_104
    move-exception v1

    move-object/from16 v17, v1

    move-object v1, v4

    move-object v4, v5

    move-object/from16 v5, v17

    .line 666
    :goto_10b
    const-string v6, "getSensor error!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, v17

    goto/16 :goto_6e

    .line 665
    :catch_11e
    move-exception v5

    move-object/from16 v17, v4

    move-object v4, v2

    move-object v2, v1

    move-object/from16 v1, v17

    goto :goto_10b

    :catch_126
    move-exception v1

    move-object v2, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v6

    goto :goto_10b

    :catch_12c
    move-exception v1

    move-object v4, v6

    move-object/from16 v17, v2

    move-object v2, v5

    move-object v5, v1

    move-object/from16 v1, v17

    goto :goto_10b

    :cond_135
    move-object v5, v1

    move-object v6, v2

    goto/16 :goto_4f

    :cond_139
    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_4f

    :cond_13d
    move-object v1, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6e
.end method

.method public static k()Ljava/lang/String;
    .registers 4

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 585
    :goto_9
    return-object v0

    .line 581
    :catch_a
    move-exception v1

    .line 582
    const-string v2, "getLanguage error!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 776
    const-string v1, "unknown"

    .line 778
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 780
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 781
    if-nez v0, :cond_11

    .line 843
    :goto_10
    return-object v1

    .line 783
    :cond_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 784
    const-string v0, "wifi"

    :goto_1a
    move-object v1, v0

    .line 843
    goto :goto_10

    .line 785
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_67

    .line 786
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 788
    if-eqz v0, :cond_67

    .line 789
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 836
    const-string v0, "unknown"

    goto :goto_1a

    .line 791
    :pswitch_36
    const-string v0, "GPRS"

    goto :goto_1a

    .line 794
    :pswitch_39
    const-string v0, "EDGE"

    goto :goto_1a

    .line 797
    :pswitch_3c
    const-string v0, "UMTS"

    goto :goto_1a

    .line 800
    :pswitch_3f
    const-string v0, "HSDPA"

    goto :goto_1a

    .line 803
    :pswitch_42
    const-string v0, "HSUPA"

    goto :goto_1a

    .line 806
    :pswitch_45
    const-string v0, "HSPA"

    goto :goto_1a

    .line 809
    :pswitch_48
    const-string v0, "CDMA"

    goto :goto_1a

    .line 812
    :pswitch_4b
    const-string v0, "EVDO_0"

    goto :goto_1a

    .line 815
    :pswitch_4e
    const-string v0, "EVDO_A"

    goto :goto_1a

    .line 818
    :pswitch_51
    const-string v0, "1xRTT"

    goto :goto_1a

    .line 821
    :pswitch_54
    const-string v0, "iDen"

    goto :goto_1a

    .line 824
    :pswitch_57
    const-string v0, "EVDO_B"

    goto :goto_1a

    .line 827
    :pswitch_5a
    const-string v0, "LTE"

    goto :goto_1a

    .line 830
    :pswitch_5d
    const-string v0, "eHRPD"

    goto :goto_1a

    .line 833
    :pswitch_60
    const-string v0, "HSPA+"
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_62} :catch_63

    goto :goto_1a

    .line 840
    :catch_63
    move-exception v0

    .line 841
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_67
    move-object v0, v1

    goto :goto_1a

    .line 789
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
        :pswitch_60
    .end packed-switch
.end method

.method public static l(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 852
    .line 853
    if-nez p0, :cond_b

    .line 854
    const-string v0, "getWifiSignalLevel but context == null!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    :goto_a
    return v1

    .line 858
    :cond_b
    :try_start_b
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 859
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 861
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_28

    move-result v0

    :goto_26
    move v1, v0

    .line 866
    goto :goto_a

    .line 863
    :catch_28
    move-exception v0

    .line 864
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2c
    move v0, v1

    goto :goto_26
.end method

.method public static l()Ljava/lang/String;
    .registers 4

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 679
    :try_start_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_4

    .line 684
    :goto_3
    return-object v0

    .line 680
    :catch_4
    move-exception v1

    .line 681
    const-string v2, "getBrand error!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 387
    const-string v1, ""

    .line 388
    iget-object v0, p0, Lcom/tencent/beacon/a/g;->b:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 389
    const-string v0, "getFreeMem but context == null!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :goto_f
    return-object v1

    .line 393
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/tencent/beacon/a/g;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 394
    sget v2, Lcom/tencent/beacon/a/a;->a:I

    if-nez v2, :cond_24

    .line 395
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    sput v2, Lcom/tencent/beacon/a/a;->a:I

    .line 397
    :cond_24
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/tencent/beacon/a/a;->a:I

    aput v4, v2, v3

    .line 398
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_c1

    array-length v2, v0

    if-ne v2, v6, :cond_c1

    .line 400
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v0, v4

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_b2} :catch_b6

    move-result-object v0

    :goto_b3
    move-object v1, v0

    .line 415
    goto/16 :goto_f

    .line 411
    :catch_b6
    move-exception v0

    .line 412
    const-string v2, "getFreeMem error!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c1
    move-object v0, v1

    goto :goto_b3
.end method

.method public final i()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 533
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_f
    if-nez v2, :cond_14

    .line 545
    :goto_11
    return-wide v0

    .line 533
    :cond_12
    const/4 v2, 0x0

    goto :goto_f

    .line 538
    :cond_14
    :try_start_14
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    .line 540
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v4, v2

    .line 541
    int-to-long v2, v3

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long v0, v2, v4
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_33} :catch_34

    goto :goto_11

    .line 542
    :catch_34
    move-exception v2

    .line 543
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method
