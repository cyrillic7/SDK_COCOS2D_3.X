.class public Lcom/dianxinos/tokens/utils/Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LOGD_ENABLED:Z

.field public static LOGE_ENABLED:Z

.field public static LOGI_ENABLED:Z

.field public static LOG_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    .line 13
    sget-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    .line 14
    sget-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOGI_ENABLED:Z

    .line 15
    sget-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/dianxinos/tokens/utils/Helper;->LOGD_ENABLED:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 22
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 24
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_20} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_20} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_20} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_20} :catch_64

    .line 50
    :goto_20
    return-object v0

    .line 25
    :catch_21
    move-exception v0

    .line 26
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 27
    const-string v1, "DXBase.Helper"

    const-string v2, "getSystemProperty has ClassNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_2d
    :goto_2d
    const-string v0, ""

    goto :goto_20

    .line 29
    :catch_30
    move-exception v0

    .line 30
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 31
    const-string v1, "DXBase.Helper"

    const-string v2, "getSystemProperty has SecurityException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 33
    :catch_3d
    move-exception v0

    .line 34
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 35
    const-string v1, "DXBase.Helper"

    const-string v2, "getSystemProperty has NoSuchMethodException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 37
    :catch_4a
    move-exception v0

    .line 38
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 39
    const-string v1, "DXBase.Helper"

    const-string v2, "getSystemProperty has IllegalArgumentException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 41
    :catch_57
    move-exception v0

    .line 42
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 43
    const-string v1, "DXBase.Helper"

    const-string v2, "getSystemProperty has IllegalAccessException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 45
    :catch_64
    move-exception v0

    .line 46
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOG_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 47
    const-string v1, "DXBase.Helper"

    const-string v2, "getSystemProperty has InvocationTargetException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 57
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_b0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_6e
    .catchall {:try_start_1 .. :try_end_10} :catchall_90

    .line 58
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :goto_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1e} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_ae
    .catchall {:try_start_10 .. :try_end_1e} :catchall_a7

    move-result-object v0

    .line 74
    if-eqz v1, :cond_24

    .line 76
    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_54

    .line 83
    :cond_24
    :goto_24
    return-object v0

    .line 61
    :cond_25
    :try_start_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_ae
    .catchall {:try_start_25 .. :try_end_2d} :catchall_a7

    goto :goto_15

    .line 65
    :catch_2e
    move-exception v0

    move-object v0, v1

    .line 66
    :goto_30
    :try_start_30
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    if-eqz v1, :cond_4c

    .line 67
    const-string v1, "DXBase.Helper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " FileNotFoundException."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_a9

    .line 74
    :cond_4c
    if-eqz v0, :cond_51

    .line 76
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_61

    .line 83
    :cond_51
    :goto_51
    const-string v0, ""

    goto :goto_24

    .line 77
    :catch_54
    move-exception v1

    .line 78
    sget-boolean v2, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    if-eqz v2, :cond_24

    .line 79
    const-string v2, "DXBase.Helper"

    const-string v3, "IOException."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 77
    :catch_61
    move-exception v0

    .line 78
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    if-eqz v1, :cond_51

    .line 79
    const-string v1, "DXBase.Helper"

    const-string v2, "IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 69
    :catch_6e
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 70
    :goto_72
    :try_start_72
    sget-boolean v2, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    if-eqz v2, :cond_7d

    .line 71
    const-string v2, "DXBase.Helper"

    const-string v3, "IOException."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_a7

    .line 74
    :cond_7d
    if-eqz v1, :cond_51

    .line 76
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_51

    .line 77
    :catch_83
    move-exception v0

    .line 78
    sget-boolean v1, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    if-eqz v1, :cond_51

    .line 79
    const-string v1, "DXBase.Helper"

    const-string v2, "IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 73
    :catchall_90
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 74
    :goto_94
    if-eqz v1, :cond_99

    .line 76
    :try_start_96
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 82
    :cond_99
    :goto_99
    throw v0

    .line 77
    :catch_9a
    move-exception v1

    .line 78
    sget-boolean v2, Lcom/dianxinos/tokens/utils/Helper;->LOGE_ENABLED:Z

    if-eqz v2, :cond_99

    .line 79
    const-string v2, "DXBase.Helper"

    const-string v3, "IOException."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 73
    :catchall_a7
    move-exception v0

    goto :goto_94

    :catchall_a9
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_94

    .line 69
    :catch_ae
    move-exception v0

    goto :goto_72

    .line 65
    :catch_b0
    move-exception v1

    goto/16 :goto_30
.end method
