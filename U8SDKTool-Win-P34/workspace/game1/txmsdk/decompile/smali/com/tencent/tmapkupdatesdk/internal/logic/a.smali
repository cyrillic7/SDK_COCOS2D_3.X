.class public Lcom/tencent/tmapkupdatesdk/internal/logic/a;
.super Landroid/os/Handler;
.source "ProGuard"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;


# instance fields
.field private final c:Ljava/util/ArrayList;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;
    .registers 3

    .prologue
    .line 64
    const-class v1, Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    if-nez v0, :cond_29

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "apkupdate_asyctask"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    .line 66
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 67
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    .line 70
    :cond_29
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b:Lcom/tencent/tmapkupdatesdk/internal/logic/a;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/List;)I
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 243
    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_88

    move-result v1

    if-gtz v1, :cond_c

    .line 276
    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    .line 247
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;

    .line 249
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_88

    move-result v3

    if-nez v3, :cond_1c

    .line 253
    :try_start_32
    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 254
    new-instance v4, Lcom/tencent/tmapkupdatesdk/internal/a/a;

    invoke-direct {v4}, Lcom/tencent/tmapkupdatesdk/internal/a/a;-><init>()V

    .line 256
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/a;->a(Ljava/lang/String;)V

    .line 257
    new-instance v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;

    invoke-direct {v5}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;-><init>()V

    .line 258
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    .line 259
    iget-wide v6, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    iput-wide v6, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->apkId:J

    .line 262
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 265
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_6c
    iput-object v0, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->manifestMd5:Ljava/lang/String;

    .line 268
    invoke-virtual {v4}, Lcom/tencent/tmapkupdatesdk/internal/a/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->fileCRC32:Ljava/util/Map;

    .line 269
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    iget-object v3, v5, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_7b} :catch_7c
    .catchall {:try_start_32 .. :try_end_7b} :catchall_88

    goto :goto_1c

    .line 270
    :catch_7c
    move-exception v0

    .line 271
    :try_start_7d
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 272
    const-string v3, "TAG"

    const-string v4, "exception:"

    invoke-static {v3, v4, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_88

    goto :goto_1c

    .line 243
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_8b
    :try_start_8b
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_88

    move-result v0

    goto/16 :goto_a
.end method

.method private declared-synchronized b()V
    .registers 4

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    const-string v0, "TAG"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_19

    .line 283
    const-string v0, "TAG"

    const-string v1, "mNeedUploadApk.size() <= 0"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_52

    .line 293
    :goto_17
    monitor-exit p0

    return-void

    .line 287
    :cond_19
    :try_start_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v0, "TAG"

    const-string v2, "startNewTask: UploadApkHttpRequest"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;

    invoke-direct {v2, v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/Runnable;)V

    .line 292
    const-string v0, "TAG"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_52

    goto :goto_17

    .line 281
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;)V
    .registers 4

    .prologue
    .line 296
    const-string v0, "TAG"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 298
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_14
    const-string v0, "TAG"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 16

    .prologue
    const/4 v13, 0x2

    .line 163
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_d8

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;

    .line 171
    iget-object v6, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->packageName:Ljava/lang/String;

    .line 172
    iget v7, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->actionFlag:I

    .line 173
    iget v8, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->targetVersionCode:I

    .line 174
    iget v0, v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateParam;->targetGrayVersionCode:I

    .line 175
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 179
    const/4 v9, 0x0

    :try_start_3e
    invoke-virtual {v2, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 181
    if-eqz v9, :cond_23

    .line 183
    new-instance v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;

    invoke-direct {v10}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;-><init>()V

    .line 184
    iput-object v6, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->packageName:Ljava/lang/String;

    .line 185
    iget v11, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionCode:I

    .line 186
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->signatureMd5:Ljava/lang/String;

    .line 187
    invoke-static {v6}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->manifestMd5:Ljava/lang/String;

    .line 188
    iget-object v11, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v12, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->manifestMd5:Ljava/lang/String;

    invoke-virtual {v11, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-gtz v11, :cond_9a

    .line 192
    const/4 v11, 0x1

    iput-byte v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->appType:B

    .line 198
    :goto_75
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v9, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionName:Ljava/lang/String;

    .line 200
    int-to-byte v7, v7

    iput-byte v7, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->actionFlag:B

    .line 203
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->grayVersionCode:I

    .line 205
    iput v8, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->targetVersionCode:I

    .line 207
    iput v0, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->targetGrayVersionCode:I

    .line 209
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_8d} :catch_8e

    goto :goto_23

    .line 212
    :catch_8e
    move-exception v0

    .line 214
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 215
    const-string v6, "TAG"

    const-string v7, "exception:"

    invoke-static {v6, v7, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 196
    :cond_9a
    const/4 v11, 0x2

    :try_start_9b
    iput-byte v11, v10, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->appType:B
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_9d} :catch_8e

    goto :goto_75

    .line 219
    :cond_9e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    const-string v0, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatecost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 224
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 225
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 226
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    const-string v0, "TAG"

    const-string v1, "send Message ApkUpdateMessageHandler.CheckUpdate"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_d8
    :goto_d8
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 230
    :cond_e0
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 231
    iput v13, v0, Landroid/os/Message;->what:I

    .line 232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    const-string v0, "TAG"

    const-string v1, "send Message ApkUpdateMessageHandler.CheckUpdateFailed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d8
.end method

.method public b(Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;)V
    .registers 4

    .prologue
    .line 304
    const-string v0, "TAG"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez p1, :cond_11

    .line 307
    const-string v0, "TAG"

    const-string v1, "listener == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_10
    return-void

    .line 312
    :cond_11
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 313
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 316
    if-ne v0, p1, :cond_17

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 321
    :cond_29
    const-string v0, "TAG"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_dc

    .line 141
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 79
    :pswitch_9
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:1"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 81
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;->onCheckUpdateSucceed(Ljava/util/ArrayList;)V

    goto :goto_16

    .line 85
    :pswitch_2a
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:2"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 87
    const-string v2, "UNKOWN"

    invoke-interface {v0, v2}, Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;->onCheckUpdateFailed(Ljava/lang/String;)V

    goto :goto_37

    .line 96
    :pswitch_49
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:5"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 98
    invoke-virtual {p0, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a(Ljava/util/List;)V

    goto :goto_8

    .line 103
    :pswitch_58
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:6"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;

    invoke-direct {v2, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 109
    :pswitch_70
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:7"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_8

    .line 111
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 112
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "send Message ApkUpdateMessageHandler.UploadApkDetail"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 120
    :pswitch_9c
    const-string v0, "ApkUpdateSDKMessageHandler"

    const-string v1, "message type:8"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_ac

    .line 123
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b()V

    goto/16 :goto_8

    .line 126
    :cond_ac
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    .line 133
    :cond_ca
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 134
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->b()V

    goto/16 :goto_8

    .line 77
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2a
        :pswitch_8
        :pswitch_8
        :pswitch_49
        :pswitch_58
        :pswitch_70
        :pswitch_9c
    .end packed-switch
.end method
