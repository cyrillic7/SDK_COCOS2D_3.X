.class public Lcom/tencent/beacon/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:I

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/a/a;->b:Ljava/lang/String;

    .line 52
    sput v1, Lcom/tencent/beacon/a/a;->a:I

    .line 56
    sput v1, Lcom/tencent/beacon/a/a;->c:I

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 301
    const-string v0, ""

    sget-object v1, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 302
    sget-object v0, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    .line 312
    :goto_c
    return-object v0

    .line 305
    :cond_d
    :try_start_d
    sget v0, Lcom/tencent/beacon/a/a;->a:I

    if-nez v0, :cond_17

    .line 306
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/beacon/a/a;->a:I

    .line 308
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/beacon/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_52} :catch_55

    .line 312
    :goto_52
    sget-object v0, Lcom/tencent/beacon/a/a;->d:Ljava/lang/String;

    goto :goto_c

    :catch_55
    move-exception v0

    goto :goto_52
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 73
    const-class v1, Lcom/tencent/beacon/a/a;

    monitor-enter v1

    if-nez p0, :cond_9

    .line 74
    :try_start_5
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_36

    .line 85
    :goto_7
    monitor-exit v1

    return-object v0

    .line 76
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 79
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "APPKEY_DENGTA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_33

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_28} :catch_2a
    .catchall {:try_start_9 .. :try_end_28} :catchall_36

    move-result-object v0

    goto :goto_7

    .line 82
    :catch_2a
    move-exception v0

    .line 83
    :try_start_2b
    const-string v0, "no appkey !! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_33
    const-string v0, ""
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_36

    goto :goto_7

    .line 73
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 510
    const-string v0, "DENGTA_META"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_channelpath"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 256
    const-class v1, Lcom/tencent/beacon/a/a;

    monitor-enter v1

    .line 257
    :try_start_3
    sput-object p0, Lcom/tencent/beacon/a/a;->b:Ljava/lang/String;

    .line 258
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 263
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_f

    .line 265
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/a/e;->a(Ljava/lang/String;)V

    .line 267
    :cond_f
    return-void

    .line 258
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 499
    const-string v0, "DENGTA_META"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 95
    const-class v3, Lcom/tencent/beacon/a/a;

    monitor-enter v3

    if-nez p0, :cond_9

    .line 96
    :try_start_5
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_98

    .line 142
    :cond_7
    :goto_7
    monitor-exit v3

    return-object v0

    .line 97
    :cond_9
    :try_start_9
    const-string v2, ""

    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_98

    move-result-object v4

    .line 102
    :try_start_10
    const-string v1, "key_channelpath"

    const-string v5, ""

    const-string v6, "DENGTA_META"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 105
    const-string v1, "channel.ini"

    .line 106
    const-string v5, "key_channelpath"

    const-string v6, "DENGTA_META"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "channel path!! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_121

    .line 110
    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5d} :catch_c8
    .catchall {:try_start_10 .. :try_end_5d} :catchall_f5

    move-result-object v1

    .line 111
    :try_start_5e
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 113
    const-string v4, "CHANNEL"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6d} :catch_116
    .catchall {:try_start_5e .. :try_end_6d} :catchall_10f

    move-result-object v0

    .line 114
    :try_start_6e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "channel !! "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_88} :catch_11a
    .catchall {:try_start_6e .. :try_end_88} :catchall_10f

    move-result v2

    if-nez v2, :cond_9b

    .line 122
    if-eqz v1, :cond_7

    .line 124
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92
    .catchall {:try_start_8d .. :try_end_90} :catchall_98

    goto/16 :goto_7

    .line 125
    :catch_92
    move-exception v1

    .line 126
    :try_start_93
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_98

    goto/16 :goto_7

    .line 95
    :catchall_98
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_9b
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 122
    :goto_9e
    if-eqz v0, :cond_11f

    .line 124
    :try_start_a0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_c2
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_98

    move-object v0, v1

    .line 132
    :goto_a4
    :try_start_a4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 135
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "CHANNEL_DENGTA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_7

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_bf} :catch_104
    .catchall {:try_start_a4 .. :try_end_bf} :catchall_98

    move-result-object v0

    goto/16 :goto_7

    .line 125
    :catch_c2
    move-exception v0

    .line 126
    :try_start_c3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_98

    move-object v0, v1

    .line 127
    goto :goto_a4

    .line 118
    :catch_c8
    move-exception v1

    move-object v1, v2

    .line 119
    :goto_ca
    :try_start_ca
    const-string v2, "key_channelpath"

    const-string v4, ""

    const-string v5, "DENGTA_META"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    const-string v2, "get app channel fail!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e8
    .catchall {:try_start_ca .. :try_end_e8} :catchall_111

    .line 122
    if-eqz v0, :cond_11f

    .line 124
    :try_start_ea
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ef
    .catchall {:try_start_ea .. :try_end_ed} :catchall_98

    move-object v0, v1

    .line 127
    goto :goto_a4

    .line 125
    :catch_ef
    move-exception v0

    .line 126
    :try_start_f0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_98

    move-object v0, v1

    .line 127
    goto :goto_a4

    .line 122
    :catchall_f5
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_f9
    if-eqz v1, :cond_fe

    .line 124
    :try_start_fb
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_ff
    .catchall {:try_start_fb .. :try_end_fe} :catchall_98

    .line 127
    :cond_fe
    :goto_fe
    :try_start_fe
    throw v0

    .line 125
    :catch_ff
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fe

    .line 139
    :catch_104
    move-exception v1

    .line 140
    const-string v1, "no channel !!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10d
    .catchall {:try_start_fe .. :try_end_10d} :catchall_98

    goto/16 :goto_7

    .line 122
    :catchall_10f
    move-exception v0

    goto :goto_f9

    :catchall_111
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_f9

    .line 118
    :catch_116
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_ca

    :catch_11a
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_ca

    :cond_11f
    move-object v0, v1

    goto :goto_a4

    :cond_121
    move-object v1, v2

    goto/16 :goto_9e
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 505
    const-string v0, "DENGTA_META"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 515
    const-string v0, "DENGTA_META"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_initsdktimes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 517
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 520
    const-string v0, "DENGTA_META"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_initsdkdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 522
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 152
    const-class v2, Lcom/tencent/beacon/a/a;

    monitor-enter v2

    if-nez p0, :cond_10

    .line 153
    :try_start_6
    const-string v1, "context == null return null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_4c

    .line 175
    :cond_e
    :goto_e
    monitor-exit v2

    return v0

    .line 158
    :cond_10
    :try_start_10
    const-string v1, "DENGTA_META"

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    const-string v3, "APPKEY_DENGTA"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p0}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 162
    if-eqz v1, :cond_2a

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 165
    :cond_2a
    const/4 v0, 0x1

    .line 166
    const-string v1, "DENGTA_META"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 167
    const-string v4, "APPKEY_DENGTA"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3e} :catch_3f
    .catchall {:try_start_10 .. :try_end_3e} :catchall_4c

    goto :goto_e

    .line 170
    :catch_3f
    move-exception v1

    .line 171
    :try_start_40
    const-string v3, "updateLocalAPPKEY fail!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4c

    goto :goto_e

    .line 152
    :catchall_4c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 184
    if-nez p0, :cond_b

    .line 185
    const-string v1, "context == null return null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_a
    :goto_a
    return v0

    .line 190
    :cond_b
    :try_start_b
    const-string v1, "DENGTA_META"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    const-string v2, "APPVER_DENGTA"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {p0}, Lcom/tencent/beacon/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 193
    if-eqz v1, :cond_25

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_3b

    move-result v1

    if-nez v1, :cond_a

    .line 197
    :cond_25
    const/4 v1, 0x1

    .line 198
    :try_start_26
    const-string v3, "DENGTA_META"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 200
    const-string v4, "APPVER_DENGTA"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_4a

    move v0, v1

    .line 206
    goto :goto_a

    .line 203
    :catch_3b
    move-exception v1

    move-object v2, v1

    move v1, v0

    .line 204
    :goto_3e
    const-string v3, "updateLocalAPPKEY fail!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_a

    .line 203
    :catch_4a
    move-exception v2

    goto :goto_3e
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_10
    move v0, v2

    .line 454
    :goto_11
    return v0

    .line 428
    :cond_12
    :try_start_12
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 430
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_30

    .line 432
    :cond_26
    const-string v0, "no running proc"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 433
    goto :goto_11

    .line 436
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 438
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_34

    .line 439
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    move v0, v2

    :goto_4a
    if-ge v0, v5, :cond_34

    aget-object v6, v4, v0

    .line 440
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_51} :catch_59

    move-result v6

    if-eqz v6, :cond_56

    move v0, v1

    .line 443
    goto :goto_11

    .line 439
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 448
    :catch_59
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 450
    const-string v3, "Failed to judge }[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6a
    move v0, v2

    .line 454
    goto :goto_11
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    if-nez p0, :cond_4

    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 222
    const-class v3, Lcom/tencent/beacon/a/a;

    monitor-enter v3

    :try_start_4
    sget-object v0, Lcom/tencent/beacon/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 223
    sget-object v0, Lcom/tencent/beacon/a/a;->b:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b2

    .line 251
    :goto_a
    monitor-exit v3

    return-object v0

    .line 225
    :cond_c
    if-nez p0, :cond_36

    const/4 v0, 0x0

    .line 227
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 228
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 229
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 231
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3b

    .line 232
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_a0
    .catchall {:try_start_f .. :try_end_34} :catchall_b2

    move-result-object v0

    goto :goto_a

    .line 225
    :cond_36
    :try_start_36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_b2

    move-result-object v0

    goto :goto_f

    .line 233
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v5, 0x20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    const/16 v5, 0x20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v5, "%7C"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v2

    .line 237
    :goto_5c
    array-length v6, v5

    if-ge v2, v6, :cond_6a

    .line 238
    aget-char v6, v5, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_67

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 237
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 242
    :cond_6a
    const/4 v2, 0x3

    if-ge v0, v2, :cond_b5

    .line 243
    const-string v0, "add versionCode: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_93
    const-string v1, "version: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_9e} :catch_a0
    .catchall {:try_start_3b .. :try_end_9e} :catchall_b2

    goto/16 :goto_a

    .line 248
    :catch_a0
    move-exception v0

    .line 249
    :try_start_a1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const-string v0, ""
    :try_end_b0
    .catchall {:try_start_a1 .. :try_end_b0} :catchall_b2

    goto/16 :goto_a

    .line 222
    :catchall_b2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_b5
    move-object v0, v1

    goto :goto_93
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/beacon/a/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 322
    :try_start_0
    sget v0, Lcom/tencent/beacon/a/a;->a:I

    if-nez v0, :cond_a

    .line 323
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/beacon/a/a;->a:I

    .line 325
    :cond_a
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 326
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 327
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    sget v3, Lcom/tencent/beacon/a/a;->a:I

    if-ne v2, v3, :cond_1a

    .line 328
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 333
    :goto_2e
    return v0

    .line 331
    :catch_2f
    move-exception v0

    .line 333
    :cond_30
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 397
    :try_start_0
    sget v0, Lcom/tencent/beacon/a/a;->a:I

    if-nez v0, :cond_a

    .line 398
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/beacon/a/a;->a:I

    .line 400
    :cond_a
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 402
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 403
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    sget v3, Lcom/tencent/beacon/a/a;->a:I

    if-ne v2, v3, :cond_1a

    .line 404
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 411
    :goto_2e
    return-object v0

    .line 408
    :catch_2f
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 411
    :cond_33
    const-string v0, ""

    goto :goto_2e
.end method
