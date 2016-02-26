.class public final Lcom/nearme/plugin/framework/a;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nearme"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-static {p0, p1, p3}, Lcom/nearme/plugin/framework/PathUtils;->getPluginUpdatePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 150
    :try_start_10
    invoke-static {p0, p1, p2}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {p0, v1, v2}, Lcom/nearme/plugin/framework/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 152
    invoke-static {p0, p1, p3}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 153
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/nearme/plugin/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_25} :catch_27

    move-result v0

    .line 163
    :cond_26
    :goto_26
    return v0

    .line 160
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    :cond_2b
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    .line 25
    const-class v6, Lcom/nearme/plugin/framework/a;

    monitor-enter v6

    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 27
    invoke-static {p1}, Lcom/nearme/plugin/framework/PathUtils;->createPluginPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_c3

    move-result v0

    if-nez v0, :cond_150

    .line 33
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, Lcom/nearme/plugin/framework/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 34
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_bc
    .catchall {:try_start_16 .. :try_end_24} :catchall_c3

    .line 35
    const/4 v0, 0x0

    :try_start_25
    aput-object p2, v1, v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_27} :catch_14a
    .catchall {:try_start_25 .. :try_end_27} :catchall_c3

    .line 40
    :goto_27
    if-nez v1, :cond_34

    .line 42
    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v10, "nearme"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_c6
    .catchall {:try_start_29 .. :try_end_32} :catchall_c3

    move-result-object v0

    move-object v1, v0

    .line 49
    :cond_34
    :goto_34
    if-eqz v1, :cond_14d

    .line 50
    :try_start_36
    array-length v10, v1

    move v0, v5

    :goto_38
    if-ge v0, v10, :cond_14d

    aget-object v5, v1, v0

    .line 51
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_cc

    .line 53
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v0

    .line 60
    :goto_51
    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getCurInstalledVersion(Ljava/lang/String;)I

    move-result v7

    .line 63
    if-eqz v2, :cond_d0

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 73
    :goto_60
    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getUpdateVersion(Ljava/lang/String;)I

    move-result v0

    .line 74
    invoke-static {p0, p1, v0}, Lcom/nearme/plugin/framework/PathUtils;->getPluginUpdatePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7e

    .line 76
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7e

    move v0, v4

    .line 82
    :cond_7e
    if-gt v0, v7, :cond_dc

    if-gt v1, v7, :cond_dc

    .line 83
    const-string v0, "PluginLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "installPlugin already installed curVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 108
    :goto_97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    const-string v1, "PluginLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "installPlugin success = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time cost is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_36 .. :try_end_ba} :catchall_c3

    .line 110
    monitor-exit v6

    return v0

    .line 37
    :catch_bc
    move-exception v0

    move-object v1, v2

    :goto_be
    :try_start_be
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c3

    goto/16 :goto_27

    .line 25
    :catchall_c3
    move-exception v0

    monitor-exit v6

    throw v0

    .line 44
    :catch_c6
    move-exception v0

    :try_start_c7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_34

    .line 50
    :cond_cc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_38

    .line 66
    :cond_d0
    if-eq v4, v7, :cond_d4

    move v1, v4

    .line 67
    goto :goto_60

    .line 69
    :cond_d4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u68c0\u67e5 apk assets/nearme\u76ee\u5f55\u4e0b\u662f\u5426\u6b63\u786e\u653e\u7f6e\u4e86oppo_game_service_xxx.so\u5305\u3002"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_dc
    if-ge v1, v0, :cond_112

    .line 87
    const-string v1, "PluginLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installPlugin from update curVersion = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p0, p1, v7, v0}, Lcom/nearme/plugin/framework/a;->a(Landroid/content/Context;Ljava/lang/String;II)Z
    :try_end_ff
    .catchall {:try_start_c7 .. :try_end_ff} :catchall_c3

    move-result v1

    .line 100
    :goto_100
    if-eq v4, v7, :cond_147

    if-eqz v1, :cond_147

    .line 102
    :try_start_104
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, v7}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_110} :catch_143
    .catchall {:try_start_104 .. :try_end_110} :catchall_c3

    move v0, v1

    .line 105
    goto :goto_97

    .line 91
    :cond_112
    :try_start_112
    const-string v0, "PluginLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installPlugin from assert curVersion = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " assertVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13b

    .line 94
    invoke-static {p0, v5, p1, v7, v1}, Lcom/nearme/plugin/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    goto :goto_100

    .line 96
    :cond_13b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u68c0\u67e5 apk assets/nearme\u76ee\u5f55\u4e0b\u662f\u5426\u6b63\u786e\u653e\u7f6e\u4e86oppo_game_service_xxx.so\u5305\u3002"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :catch_143
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_147
    .catchall {:try_start_112 .. :try_end_147} :catchall_c3

    :cond_147
    move v0, v1

    goto/16 :goto_97

    .line 37
    :catch_14a
    move-exception v0

    goto/16 :goto_be

    :cond_14d
    move-object v5, v2

    goto/16 :goto_51

    :cond_150
    move-object v1, v2

    goto/16 :goto_27
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 116
    const-class v8, Lcom/nearme/plugin/framework/a;

    monitor-enter v8

    const/4 v1, 0x0

    .line 118
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p1}, Lcom/nearme/plugin/framework/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_47
    .catchall {:try_start_5 .. :try_end_10} :catchall_58

    move-result-object v7

    .line 119
    :try_start_11
    invoke-static {p0, p2, p4}, Lcom/nearme/plugin/framework/PathUtils;->getPluginTempPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/lang/String;)V

    .line 121
    invoke-static {v7, v2}, Lcom/nearme/plugin/framework/FileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_38

    .line 123
    invoke-static {p0, p2, p3}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 124
    const/high16 v3, -0x80000000

    if-eq v3, p3, :cond_2c

    invoke-static {p0, v1, v2}, Lcom/nearme/plugin/framework/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 125
    :cond_2c
    invoke-static {p0, p2, p4}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 126
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/nearme/plugin/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_37} :catch_6a
    .catchall {:try_start_11 .. :try_end_37} :catchall_65

    move-result v0

    .line 133
    :cond_38
    if-eqz v7, :cond_3d

    .line 135
    :try_start_3a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3f
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    .line 141
    :cond_3d
    :goto_3d
    monitor-exit v8

    return v0

    .line 137
    :catch_3f
    move-exception v1

    :try_start_40
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_3d

    .line 116
    :catchall_44
    move-exception v0

    monitor-exit v8

    throw v0

    .line 130
    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_67

    .line 133
    if-eqz v1, :cond_6d

    .line 135
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52
    .catchall {:try_start_4d .. :try_end_50} :catchall_44

    move v0, v6

    .line 138
    goto :goto_3d

    .line 137
    :catch_52
    move-exception v0

    :try_start_53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_44

    move v0, v6

    .line 138
    goto :goto_3d

    .line 133
    :catchall_58
    move-exception v0

    move-object v7, v1

    :goto_5a
    if-eqz v7, :cond_5f

    .line 135
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_44

    .line 138
    :cond_5f
    :goto_5f
    :try_start_5f
    throw v0

    .line 137
    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_44

    goto :goto_5f

    .line 133
    :catchall_65
    move-exception v0

    goto :goto_5a

    :catchall_67
    move-exception v0

    move-object v7, v1

    goto :goto_5a

    .line 130
    :catch_6a
    move-exception v0

    move-object v1, v7

    goto :goto_48

    :cond_6d
    move v0, v6

    goto :goto_3d
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 168
    const-class v3, Lcom/nearme/plugin/framework/a;

    monitor-enter v3

    .line 170
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/io/File;)V

    .line 172
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 174
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 175
    if-nez v0, :cond_26

    .line 176
    invoke-static {p2, p1}, Lcom/nearme/plugin/framework/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 177
    if-eqz v0, :cond_26

    .line 178
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 182
    :cond_26
    :goto_26
    if-eqz v0, :cond_66

    .line 183
    invoke-static {p3, p4}, Lcom/nearme/plugin/framework/PathUtils;->updateVersionCache(Ljava/lang/String;I)V

    .line 184
    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->saveCurInstalledVersion(Ljava/lang/String;I)Z

    .line 185
    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->saveUpdateVersion(Ljava/lang/String;I)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_6d
    .catchall {:try_start_4 .. :try_end_39} :catchall_73

    .line 187
    if-eqz p5, :cond_43

    .line 189
    :try_start_3b
    invoke-static {p0}, Lcom/nearme/plugin/framework/PathUtils;->getLibPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {p1, v2}, Lcom/nearme/plugin/framework/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 193
    :cond_43
    invoke-static {p0}, Lcom/nearme/plugin/framework/PathUtils;->getOptimizedDexPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 197
    array-length v5, v4

    move v2, v1

    :goto_58
    if-ge v2, v5, :cond_66

    aget-object v6, v4, v2

    .line 198
    invoke-static {v6}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_5f} :catch_62
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5f} :catch_68
    .catchall {:try_start_3b .. :try_end_5f} :catchall_73

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 202
    :catch_62
    move-exception v2

    :try_start_63
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_6d
    .catchall {:try_start_63 .. :try_end_66} :catchall_73

    .line 211
    :cond_66
    :goto_66
    monitor-exit v3

    return v0

    .line 204
    :catch_68
    move-exception v2

    :try_start_69
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_73

    goto :goto_66

    .line 208
    :catch_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_73

    move v0, v1

    .line 209
    goto :goto_66

    .line 168
    :catchall_73
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_76
    move v0, v1

    goto :goto_26
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 223
    const/4 v2, 0x1

    .line 224
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_20
    const/4 v4, 0x0

    .line 229
    const/4 v1, 0x0

    .line 231
    :try_start_22
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_162
    .catchall {:try_start_22 .. :try_end_27} :catchall_17e

    .line 232
    :try_start_27
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_229
    .catchall {:try_start_27 .. :try_end_2a} :catchall_222

    move-result-object v4

    .line 233
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 234
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 235
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 236
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 239
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    :goto_59
    if-eqz v0, :cond_2b

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 242
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_2b

    .line 245
    :cond_6a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x7

    if-le v5, v6, :cond_80

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    if-nez v1, :cond_80

    .line 247
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_59

    .line 250
    :cond_80
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v6, "x86"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    if-nez v1, :cond_a9

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "armeabi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "armeabi-v7a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 252
    :cond_a4
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_59

    .line 255
    :cond_a9
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_ac} :catch_230
    .catchall {:try_start_2b .. :try_end_ac} :catchall_222

    move-result-object v0

    goto :goto_59

    .line 264
    :cond_ae
    :try_start_ae
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_15b

    move v0, v2

    .line 270
    :goto_b2
    const/4 v2, 0x0

    .line 272
    if-eqz v0, :cond_23d

    if-eqz v1, :cond_23d

    .line 273
    :try_start_b7
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bc} :catch_20e
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_208

    .line 274
    const/16 v2, 0x1000

    :try_start_be
    new-array v7, v2, [B

    .line 275
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    move v2, v0

    .line 276
    :cond_c5
    :goto_c5
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f2

    .line 277
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 278
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 279
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c5

    .line 282
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 284
    const/4 v11, -0x1

    if-eq v5, v11, :cond_102

    .line 285
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_102
    new-instance v11, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x0

    .line 289
    :goto_119
    if-eqz v4, :cond_126

    .line 290
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 291
    const/4 v3, 0x1

    .line 296
    :cond_126
    if-eqz v3, :cond_23a

    .line 297
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_12f} :catch_19f
    .catchall {:try_start_be .. :try_end_12f} :catchall_1cf

    .line 298
    const/4 v5, 0x0

    .line 299
    const/4 v3, 0x0

    .line 301
    :try_start_131
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_218
    .catchall {:try_start_131 .. :try_end_134} :catchall_1dc

    move-result-object v3

    .line 302
    :try_start_135
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_13a} :catch_21d
    .catchall {:try_start_135 .. :try_end_13a} :catchall_1dc

    .line 304
    :goto_13a
    :try_start_13a
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_190

    .line 305
    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_144} :catch_145
    .catchall {:try_start_13a .. :try_end_144} :catchall_211

    goto :goto_13a

    .line 308
    :catch_145
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_148
    :try_start_148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_214

    .line 309
    const/4 v0, 0x0

    .line 311
    if-eqz v3, :cond_151

    .line 313
    :try_start_14e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_1ca
    .catchall {:try_start_14e .. :try_end_151} :catchall_1cf

    .line 318
    :cond_151
    :goto_151
    if-eqz v2, :cond_156

    .line 320
    :try_start_153
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_1d6
    .catchall {:try_start_153 .. :try_end_156} :catchall_1cf

    .line 326
    :cond_156
    :goto_156
    if-eqz v0, :cond_1f3

    :goto_158
    move v2, v0

    .line 330
    goto/16 :goto_c5

    .line 267
    :catch_15b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 269
    goto/16 :goto_b2

    .line 259
    :catch_162
    move-exception v0

    move-object v2, v4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_167
    :try_start_167
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_225

    .line 260
    const/4 v1, 0x0

    .line 263
    if-eqz v2, :cond_170

    .line 264
    :try_start_16d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_170} :catch_175

    :cond_170
    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 268
    goto/16 :goto_b2

    .line 267
    :catch_175
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 269
    goto/16 :goto_b2

    .line 262
    :catchall_17e
    move-exception v0

    move-object v3, v4

    .line 263
    :goto_180
    if-eqz v3, :cond_185

    .line 264
    :try_start_182
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_186

    .line 268
    :cond_185
    :goto_185
    throw v0

    .line 267
    :catch_186
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_185

    .line 294
    :cond_18b
    :try_start_18b
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_18e} :catch_19f
    .catchall {:try_start_18b .. :try_end_18e} :catchall_1cf

    move-result-object v4

    goto :goto_119

    .line 313
    :cond_190
    :try_start_190
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_19a
    .catchall {:try_start_190 .. :try_end_193} :catchall_1cf

    .line 318
    :goto_193
    if-eqz v3, :cond_237

    .line 320
    :try_start_195
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_1c4
    .catchall {:try_start_195 .. :try_end_198} :catchall_1cf

    move v0, v2

    .line 323
    goto :goto_156

    .line 315
    :catch_19a
    move-exception v0

    :try_start_19b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_19f
    .catchall {:try_start_19b .. :try_end_19e} :catchall_1cf

    goto :goto_193

    .line 333
    :catch_19f
    move-exception v0

    move-object v1, v6

    :goto_1a1
    :try_start_1a1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_20b

    .line 334
    const/4 v0, 0x0

    .line 337
    if-eqz v1, :cond_1aa

    .line 338
    :try_start_1a7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1aa} :catch_1fe

    .line 344
    :cond_1aa
    :goto_1aa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 345
    const-string v1, "PluginLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PluginLoader extractLibs time cost is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return v0

    .line 322
    :catch_1c4
    move-exception v0

    :try_start_1c5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 323
    goto :goto_156

    .line 315
    :catch_1ca
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1ce} :catch_19f
    .catchall {:try_start_1c5 .. :try_end_1ce} :catchall_1cf

    goto :goto_151

    .line 336
    :catchall_1cf
    move-exception v0

    .line 337
    :goto_1d0
    if-eqz v6, :cond_1d5

    .line 338
    :try_start_1d2
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_203

    .line 342
    :cond_1d5
    :goto_1d5
    throw v0

    .line 322
    :catch_1d6
    move-exception v2

    :try_start_1d7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_19f
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1cf

    goto/16 :goto_156

    .line 311
    :catchall_1dc
    move-exception v0

    :goto_1dd
    if-eqz v5, :cond_1e2

    .line 313
    :try_start_1df
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_1e8
    .catchall {:try_start_1df .. :try_end_1e2} :catchall_1cf

    .line 318
    :cond_1e2
    :goto_1e2
    if-eqz v3, :cond_1e7

    .line 320
    :try_start_1e4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1ed
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_1cf

    .line 323
    :cond_1e7
    :goto_1e7
    :try_start_1e7
    throw v0

    .line 315
    :catch_1e8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e2

    .line 322
    :catch_1ed
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1f1} :catch_19f
    .catchall {:try_start_1e7 .. :try_end_1f1} :catchall_1cf

    goto :goto_1e7

    :cond_1f2
    move v0, v2

    .line 337
    :cond_1f3
    :goto_1f3
    if-eqz v6, :cond_1aa

    .line 338
    :try_start_1f5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1f8
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1f8} :catch_1f9

    goto :goto_1aa

    .line 341
    :catch_1f9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1aa

    :catch_1fe
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1aa

    :catch_203
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d5

    .line 336
    :catchall_208
    move-exception v0

    move-object v6, v2

    goto :goto_1d0

    :catchall_20b
    move-exception v0

    move-object v6, v1

    goto :goto_1d0

    .line 333
    :catch_20e
    move-exception v0

    move-object v1, v2

    goto :goto_1a1

    .line 311
    :catchall_211
    move-exception v0

    move-object v5, v4

    goto :goto_1dd

    :catchall_214
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto :goto_1dd

    .line 308
    :catch_218
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_148

    :catch_21d
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_148

    .line 262
    :catchall_222
    move-exception v0

    goto/16 :goto_180

    :catchall_225
    move-exception v0

    move-object v3, v2

    goto/16 :goto_180

    .line 259
    :catch_229
    move-exception v0

    move-object v2, v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_167

    :catch_230
    move-exception v0

    move-object v2, v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_167

    :cond_237
    move v0, v2

    goto/16 :goto_156

    :cond_23a
    move v0, v2

    goto/16 :goto_158

    :cond_23d
    move-object v6, v2

    goto :goto_1f3
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 215
    invoke-static {p0, p1}, Lcom/nearme/plugin/framework/ApkFileParser;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-static {p0, p2}, Lcom/nearme/plugin/framework/ApkFileParser;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 217
    if-eq v2, v0, :cond_11

    if-eq v2, v1, :cond_11

    if-gt v1, v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
