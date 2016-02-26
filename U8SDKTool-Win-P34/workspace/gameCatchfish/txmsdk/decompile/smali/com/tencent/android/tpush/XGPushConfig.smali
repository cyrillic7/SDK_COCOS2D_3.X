.class public Lcom/tencent/android/tpush/XGPushConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static final TPUSH_ACCESS_ID:Ljava/lang/String; = "XG_V2_ACCESS_ID"

.field public static final TPUSH_ACCESS_KEY:Ljava/lang/String; = "XG_V2_ACCESS_KEY"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Ljava/lang/String;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->b:Ljava/lang/String;

    .line 38
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    .line 129
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebug(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 221
    if-eqz p0, :cond_10

    .line 222
    sput-boolean p1, Lcom/tencent/android/tpush/XGPushConfig;->e:Z

    .line 223
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/r;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/r;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 241
    :cond_10
    return-void
.end method

.method public static declared-synchronized getAccessId(Landroid/content/Context;)J
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    .line 50
    const-class v2, Lcom/tencent/android/tpush/XGPushConfig;

    monitor-enter v2

    if-nez p0, :cond_b

    .line 51
    :try_start_7
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a2

    .line 92
    :goto_9
    monitor-exit v2

    return-wide v0

    .line 53
    :cond_b
    :try_start_b
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    .line 54
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    goto :goto_9

    .line 56
    :cond_14
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 57
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    goto :goto_9

    .line 59
    :cond_1d
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_54

    .line 63
    const-string v1, "XG_V2_ACCESS_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_54

    .line 65
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_a2

    move-result-object v0

    .line 67
    :try_start_30
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    .line 68
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get accessId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_54} :catch_9c
    .catchall {:try_start_30 .. :try_end_54} :catchall_a2

    .line 74
    :cond_54
    :goto_54
    :try_start_54
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_8b

    .line 75
    const-string v0, "XG_V2_ACCESS_ID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_a2

    move-result-object v0

    .line 77
    if-eqz v0, :cond_8b

    .line 79
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    .line 80
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get accessId from getMetaData:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8b} :catch_a5
    .catchall {:try_start_63 .. :try_end_8b} :catchall_a2

    .line 89
    :cond_8b
    :goto_8b
    :try_start_8b
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_98

    .line 90
    const-string v0, "TPush"

    const-string v1, "accessId\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_98
    sget-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    goto/16 :goto_9

    .line 69
    :catch_9c
    move-exception v0

    .line 70
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_a2

    goto :goto_54

    .line 50
    :catchall_a2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 82
    :catch_a5
    move-exception v0

    .line 83
    :try_start_a6
    const-string v1, "TPush"

    const-string v3, "get accessId from getMetaData failed: "

    invoke-static {v1, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/android/tpush/XGPushConfig;->c:J
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_a2

    goto :goto_8b
.end method

.method public static declared-synchronized getAccessKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 141
    const-class v1, Lcom/tencent/android/tpush/XGPushConfig;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 142
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_58

    .line 165
    :cond_e
    :goto_e
    monitor-exit v1

    return-object v0

    .line 144
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2f

    .line 150
    const-string v2, "XG_V2_ACCESS_KEY"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 152
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    .line 155
    :cond_2f
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 156
    const-string v0, "XG_V2_ACCESS_KEY"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_46

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    .line 162
    :cond_46
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 163
    const-string v0, "TPush"

    const-string v2, "accessKey\u4e3a\u7a7a"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_55
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_58

    goto :goto_e

    .line 141
    :catchall_58
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAccessidList(Landroid/content/Context;)Ljava/util/List;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    if-nez p0, :cond_b

    .line 281
    :cond_a
    :goto_a
    return-object v0

    .line 261
    :cond_b
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    .line 262
    cmp-long v1, v2, v4

    if-lez v1, :cond_1a

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1a
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    .line 266
    cmp-long v1, v2, v4

    if-lez v1, :cond_29

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_29
    const-string v1, "XG_V2_ACCESS_ID"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_a

    .line 272
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4f} :catch_50

    goto :goto_a

    .line 276
    :catch_50
    move-exception v1

    .line 277
    const-string v2, "TPush"

    const-string v3, "get accessId from getMetaData failed: "

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public static getGameServer(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    sget-object v0, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getReportDebugMode(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 338
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".report.mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1f} :catch_24

    move-result v1

    .line 340
    if-eqz v1, :cond_23

    const/4 v0, 0x1

    .line 343
    :cond_23
    :goto_23
    return v0

    .line 341
    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    if-nez p0, :cond_b

    .line 204
    const-string v0, "TPush"

    const-string v1, "\u53c2\u6570context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static isEnableDebug(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tencent.android.tpush.debug,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/service/d/d;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public static setAccessId(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 105
    if-nez p0, :cond_a

    .line 106
    const-string v0, "TPush"

    const-string v1, "\u53c2\u6570context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_9
    return-void

    .line 109
    :cond_a
    sput-wide p1, Lcom/tencent/android/tpush/XGPushConfig;->c:J

    .line 110
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/p;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public static setAccessKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 179
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 180
    :cond_4
    const-string v0, "TPush"

    const-string v1, "\u53c2\u6570context\u6216accessKey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_b
    return-void

    .line 183
    :cond_c
    sput-object p1, Lcom/tencent/android/tpush/XGPushConfig;->d:Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/q;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public static setGameServer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 296
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 300
    :cond_e
    :goto_e
    return-void

    .line 299
    :cond_f
    sput-object p1, Lcom/tencent/android/tpush/XGPushConfig;->b:Ljava/lang/String;

    goto :goto_e
.end method

.method public static setHeartbeatIntervalMs(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 309
    if-eqz p0, :cond_28

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_28

    const v0, 0x1b7740

    if-ge p1, v0, :cond_28

    .line 311
    :try_start_b
    const-string v0, "com.tencent.android.xg.wx.HeartbeatIntervalMs"

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 314
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeartbeatIntervalMs success, intervalMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_29

    .line 321
    :cond_28
    :goto_28
    return-void

    .line 318
    :catch_29
    move-exception v0

    .line 319
    const-string v1, "TPush"

    const-string v2, "setHeartbeatIntervalMs"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 285
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 289
    :cond_e
    :goto_e
    return-void

    .line 288
    :cond_f
    sput-object p1, Lcom/tencent/android/tpush/XGPushConfig;->a:Ljava/lang/String;

    goto :goto_e
.end method

.method public static setReportDebugMode(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 324
    if-eqz p0, :cond_23

    .line 326
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".report.mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :goto_20
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_26

    .line 334
    :cond_23
    :goto_23
    return-void

    .line 326
    :cond_24
    const/4 v0, 0x0

    goto :goto_20

    .line 330
    :catch_26
    move-exception v0

    .line 331
    const-string v1, "TPush"

    const-string v2, "setReportDebugMode"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
