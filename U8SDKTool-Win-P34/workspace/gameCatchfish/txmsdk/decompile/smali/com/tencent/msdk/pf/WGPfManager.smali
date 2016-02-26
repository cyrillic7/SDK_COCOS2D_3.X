.class public Lcom/tencent/msdk/pf/WGPfManager;
.super Ljava/lang/Object;
.source "WGPfManager.java"


# static fields
.field private static final DEFAULT_CHANNEL:Ljava/lang/String; = "00000000"

.field public static final WG_3366_PLATFORM_ID:Ljava/lang/String; = "3366_m"

.field public static final WG_DEFAULT_PLATFORM_ID:Ljava/lang/String; = "desktop_m"

.field public static final WG_MOBILE_PLATFORM_ID:Ljava/lang/String; = "mobile"

.field public static final WG_MYAPP_PLATFORM_ID:Ljava/lang/String; = "myapp_m"

.field public static final WG_QB_PLATFORM_ID:Ljava/lang/String; = "qqbrowser_m"

.field public static final WG_QQ_PLATFORM_ID:Ljava/lang/String; = "qq_m"

.field public static final WG_QZONE_PLATFORM_ID:Ljava/lang/String; = "qzone_m"

.field public static final WG_WX_PLATFORM_ID:Ljava/lang/String; = "wechat"

.field private static volatile instance:Lcom/tencent/msdk/pf/WGPfManager;


# instance fields
.field private channel:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private platformId:Ljava/lang/String;

.field private regChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    .line 36
    const-string v1, "desktop_m"

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->regChannelId:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/tencent/msdk/pf/WGPfManager;->getConfigChannelId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 67
    .local v0, "ret":Lcom/tencent/msdk/api/LoginRet;
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 68
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    .line 69
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    .line 71
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: pf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pfKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private getConfigChannelId()Ljava/lang/String;
    .registers 9

    .prologue
    .line 75
    const-string v2, ""

    .line 77
    .local v2, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "apkSelfFilePath":Ljava/lang/String;
    :try_start_e
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->readChannelId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "comment":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Comment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 84
    move-object v2, v4

    .line 85
    invoke-static {v2}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_31} :catch_36

    move-result v6

    if-nez v6, :cond_3f

    move-object v3, v2

    .line 101
    .end local v2    # "channel":Ljava/lang/String;
    .end local v4    # "comment":Ljava/lang/String;
    .local v3, "channel":Ljava/lang/String;
    :goto_35
    return-object v3

    .line 88
    .end local v3    # "channel":Ljava/lang/String;
    .restart local v2    # "channel":Ljava/lang/String;
    :catch_36
    move-exception v5

    .line 89
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    const-string v6, "Read apk file for channelId Error"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 94
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3f
    invoke-direct {p0}, Lcom/tencent/msdk/pf/WGPfManager;->readChannelFromIni()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    move-object v3, v2

    .line 96
    .end local v2    # "channel":Ljava/lang/String;
    .restart local v3    # "channel":Ljava/lang/String;
    goto :goto_35

    .line 100
    .end local v3    # "channel":Ljava/lang/String;
    .restart local v2    # "channel":Ljava/lang/String;
    :cond_4b
    const-string v2, "00000000"

    move-object v3, v2

    .line 101
    .end local v2    # "channel":Ljava/lang/String;
    .restart local v3    # "channel":Ljava/lang/String;
    goto :goto_35
.end method

.method public static getInstance()Lcom/tencent/msdk/pf/WGPfManager;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    if-nez v0, :cond_13

    .line 54
    const-class v1, Lcom/tencent/msdk/pf/WGPfManager;

    monitor-enter v1

    .line 55
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lcom/tencent/msdk/pf/WGPfManager;

    invoke-direct {v0}, Lcom/tencent/msdk/pf/WGPfManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    .line 58
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 60
    :cond_13
    sget-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    return-object v0

    .line 58
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private readChannelFromIni()Ljava/lang/String;
    .registers 10

    .prologue
    .line 105
    const-string v1, "CHANNEL"

    .line 106
    .local v1, "CHANNLE_ID_KEY":Ljava/lang/String;
    const-string v0, "channel.ini"

    .line 107
    .local v0, "CHANNEL_ID_FILE":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 110
    .local v3, "ctx":Landroid/app/Activity;
    :try_start_c
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 111
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 112
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 113
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_25} :catch_27

    move-result-object v2

    .line 119
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "properties":Ljava/util/Properties;
    :goto_26
    return-object v2

    .line 115
    :catch_27
    move-exception v4

    .line 116
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    const-string v7, "WeGame"

    const-string v8, "CHANNEL ID ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, ""

    goto :goto_26
.end method


# virtual methods
.method public clearPfAndPfKey()V
    .registers 2

    .prologue
    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChannelId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getPf(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "gameCustomInfo"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 157
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPf: = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 159
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 164
    :goto_28
    return-object v1

    .line 161
    :cond_29
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 162
    const-string v1, "gameCustomInfo should not start with \'-\'"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 164
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28
.end method

.method public getPfKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 195
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPfKey:  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 196
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    return-object v1
.end method

.method public getPlatformId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlatformId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegChannelId()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tencent/msdk/pf/WGPfManager;->getPf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "pf":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 171
    const-string v2, "00000000"

    .line 183
    :goto_13
    return-object v2

    .line 174
    :cond_14
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "segments":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_21

    .line 176
    const-string v2, "00000000"

    goto :goto_13

    .line 179
    :cond_21
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 180
    const-string v2, "00000000"

    goto :goto_13

    .line 182
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 183
    aget-object v2, v1, v4

    goto :goto_13
.end method

.method public setChannelId(Ljava/lang/String;)V
    .registers 4
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p1, :cond_3

    .line 147
    :cond_2
    :goto_2
    return-void

    .line 143
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChannelId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    goto :goto_2
.end method

.method public setPlatformId(Ljava/lang/String;)V
    .registers 4
    .param p1, "pfId"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    :cond_6
    :goto_6
    return-void

    .line 127
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlatformId: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    const-string v1, "desktop_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    iput-object p1, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    goto :goto_6
.end method

.method public setRegChannelId(Ljava/lang/String;)V
    .registers 4
    .param p1, "regChannelId"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_3

    .line 191
    :goto_2
    return-void

    .line 189
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRegChannelId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/tencent/msdk/pf/WGPfManager;->regChannelId:Ljava/lang/String;

    goto :goto_2
.end method
