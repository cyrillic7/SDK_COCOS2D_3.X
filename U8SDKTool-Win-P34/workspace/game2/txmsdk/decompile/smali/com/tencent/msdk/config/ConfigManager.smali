.class public Lcom/tencent/msdk/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static final CHECK_BACKGROUND_KEY:Ljava/lang/String; = "CHECK_BACKGROUND_TIME"

.field private static final CHECK_TOKEN_TIME_KEY:Ljava/lang/String; = "CHECK_TOKEN_TIME"

.field private static final CLOSE_BUGLY_KEY:Ljava/lang/String; = "CLOSE_BUGLY_REPORT"

.field private static final IS_BETA_KEY:Ljava/lang/String; = "BETA"

.field private static final KILL_WEBVIEW_PROCESS_KEY:Ljava/lang/String; = "KILL_WEBVIEW_PROCESS"

.field public static final NEED_LOCAL_LOG:Ljava/lang/String; = "localLog"

.field private static final NEED_STAT_LOG_KEY:Ljava/lang/String; = "STAT_LOG"

.field private static final NEED_WXTOKEN_REFRESH:Ljava/lang/String; = "WXTOKEN_REFRESH"

.field public static configFileName:Ljava/lang/String; = null

.field private static final domainKey:Ljava/lang/String; = "MSDK_URL"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "msdkconfig.ini"

    sput-object v0, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiDomain(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    sget-object v5, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 33
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 34
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 36
    const-string v4, "MSDK_URL"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "msdkDomain":Ljava/lang/String;
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e

    .line 38
    :cond_29
    const-string v4, "No Domain Configed"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 44
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "msdkDomain":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_2e
    :goto_2e
    return-object v2

    .line 41
    :catch_2f
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    const-string v4, "Please check your msdkconfig.ini file under /assets/"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 44
    const-string v2, ""

    goto :goto_2e
.end method

.method public static getCheckBackgroundTime(Landroid/content/Context;)I
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v4, "CHECK_BACKGROUND_TIME"

    invoke-static {p0, v4}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "timeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, "time":I
    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v2, v1

    .line 100
    .end local v1    # "time":I
    .local v2, "time":I
    :goto_e
    return v2

    .line 95
    .end local v2    # "time":I
    .restart local v1    # "time":I
    :cond_f
    :try_start_f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_15

    move-result v1

    :goto_13
    move v2, v1

    .line 100
    .end local v1    # "time":I
    .restart local v2    # "time":I
    goto :goto_e

    .line 96
    .end local v2    # "time":I
    .restart local v1    # "time":I
    :catch_15
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static getCheckTokenTime(Landroid/content/Context;)I
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v4, "CHECK_TOKEN_TIME"

    invoke-static {p0, v4}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "timeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 75
    .local v1, "time":I
    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v2, v1

    .line 84
    .end local v1    # "time":I
    .local v2, "time":I
    :goto_e
    return v2

    .line 79
    .end local v2    # "time":I
    .restart local v1    # "time":I
    :cond_f
    :try_start_f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_15

    move-result v1

    :goto_13
    move v2, v1

    .line 84
    .end local v1    # "time":I
    .restart local v2    # "time":I
    goto :goto_e

    .line 80
    .end local v2    # "time":I
    .restart local v1    # "time":I
    :catch_15
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isBeta(Landroid/content/Context;)Z
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 51
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 52
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 54
    const-string v5, "BETA"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "isBeta":Ljava/lang/String;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_30

    .line 56
    :cond_2a
    const-string v5, "Whitelist is Closed!"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 67
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "isBeta":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_2f
    :goto_2f
    return v4

    .line 59
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "isBeta":Ljava/lang/String;
    .restart local v3    # "properties":Ljava/util/Properties;
    :cond_30
    const-string v5, "true"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3e

    move-result v5

    if-eqz v5, :cond_2f

    .line 60
    const/4 v4, 0x1

    goto :goto_2f

    .line 64
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "isBeta":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :catch_3e
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Please check your msdkconfig.ini file under /assets/"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f
.end method

.method public static killWebViewProcess(Landroid/content/Context;)Z
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 209
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 210
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 211
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 213
    const-string v5, "KILL_WEBVIEW_PROCESS"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "isBeta":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "false"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 215
    const-string v5, "kill webview process"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3d} :catch_3f

    .line 216
    const/4 v4, 0x0

    .line 223
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "isBeta":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_3e
    :goto_3e
    return v4

    .line 220
    :catch_3f
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please check your "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file under /assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public static needCloseBuglyReport(Landroid/content/Context;)Z
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 189
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 190
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 192
    const-string v5, "CLOSE_BUGLY_REPORT"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "isBeta":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "true"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 194
    const-string v5, "bugly report closed"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 195
    const/4 v4, 0x1

    .line 202
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "isBeta":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_3a
    :goto_3a
    return v4

    .line 199
    :catch_3b
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please check your "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file under /assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public static needStatLog(Landroid/content/Context;)Z
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 145
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 146
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 147
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    const-string v5, "STAT_LOG"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "isBeta":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "false"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 151
    const-string v5, "stat log closed"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 152
    const/4 v4, 0x0

    .line 159
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "isBeta":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_3a
    :goto_3a
    return v4

    .line 156
    :catch_3b
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please check your "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file under /assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public static needWXTokenRefresh(Landroid/content/Context;)Z
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 167
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 168
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 169
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 170
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 171
    const-string v5, "WXTOKEN_REFRESH"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "isBeta":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "false"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 173
    const-string v5, "NEED_WXTOKEN_REFRESH closed"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 174
    const/4 v4, 0x0

    .line 181
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "isBeta":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_3a
    :goto_3a
    return v4

    .line 178
    :catch_3b
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please check your "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file under /assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public static readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    sget-object v5, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 107
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 108
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 110
    const-string v4, ""

    invoke-virtual {v2, p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_40

    .line 112
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 113
    const-string v4, ""

    .line 119
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :goto_3f
    return-object v4

    .line 115
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "properties":Ljava/util/Properties;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v4

    goto :goto_3f

    .line 116
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please check your "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in msdkconfig.ini file under /assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 119
    const-string v4, ""

    goto :goto_3f
.end method

.method public static readValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 126
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 127
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 129
    const-string v4, ""

    invoke-virtual {v2, p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3e

    .line 131
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 132
    const-string v4, ""

    .line 138
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :goto_3d
    return-object v4

    .line 134
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "properties":Ljava/util/Properties;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_41} :catch_43

    move-result-object v4

    goto :goto_3d

    .line 135
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please check your "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file under /assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 138
    const-string v4, ""

    goto :goto_3d
.end method
