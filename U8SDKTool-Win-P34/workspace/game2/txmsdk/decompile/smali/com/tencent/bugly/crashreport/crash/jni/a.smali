.class public final Lcom/tencent/bugly/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/proguard/y;

.field private final c:Lcom/tencent/bugly/proguard/n;

.field private final d:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/proguard/y;

    .line 46
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    .line 47
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 48
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    .line 49
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 31
    .param p3, "exTimesInSecond"    # J
    .param p5, "exTimeInMicosecond"    # J
    .param p7, "exType"    # Ljava/lang/String;
    .param p8, "exAddress"    # Ljava/lang/String;
    .param p9, "exStack"    # Ljava/lang/String;
    .param p10, "tombPath"    # Ljava/lang/String;
    .param p11, "si_code"    # I
    .param p12, "si_CodeType"    # Ljava/lang/String;
    .param p13, "sendingPid"    # I
    .param p17, "nativeRQDVersion"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v2, "Native Crash Happen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    :try_start_8
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 237
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-nez v2, :cond_31

    .line 240
    const-string v2, "waiting for remote sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    const/4 v2, 0x0

    .line 242
    :cond_1e
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_23} :catch_187

    move-result v3

    if-nez v3, :cond_31

    .line 244
    const-wide/16 v4, 0x1f4

    :try_start_28
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_181
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_187

    .line 245
    :goto_2b
    add-int/lit16 v2, v2, 0x1f4

    .line 246
    const/16 v3, 0x1388

    if-lt v2, v3, :cond_1e

    .line 247
    :cond_31
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p3

    const-wide/16 v4, 0x3e8

    :try_start_37
    div-long v4, p5, v4

    add-long/2addr v4, v2

    .line 255
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNKNOWN("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 258
    if-lez p11, :cond_192

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 262
    .end local p7    # "exType":Ljava/lang/String;
    const-string p12, "KERNEL"

    .end local p12    # "si_CodeType":Ljava/lang/String;
    move-object/from16 v9, p12

    move-object/from16 v6, p7

    .line 274
    :goto_7e
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 283
    const-string v2, "no remote but still store!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    :cond_8e
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v2

    .line 287
    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    if-nez v2, :cond_1a2

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 289
    const-string v2, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v3

    const-string v4, "#++++++++++Simple Record By Bugly++++++++++#"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# CRASH REPORT CREATED BY NATIVE VERSION %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p17, v5, v7

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# PKG NAME: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# APP VER: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# CRASH TYPE: NATIVE_CRASH"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# CRASH TIME: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "# CRASH PROCESS: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "# CRASH THREAD: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH TYPE: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH ADDR: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH STACK:"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 291
    if-eqz p10, :cond_178

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_178

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_178

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_178

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 292
    :cond_178
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v3, "remoteClose"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    .line 317
    :cond_180
    :goto_180
    return-void

    .line 244
    .restart local p7    # "exType":Ljava/lang/String;
    .restart local p12    # "si_CodeType":Ljava/lang/String;
    :catch_181
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_185
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_185} :catch_187

    goto/16 :goto_2b

    .line 309
    .end local p7    # "exType":Ljava/lang/String;
    .end local p12    # "si_CodeType":Ljava/lang/String;
    :catch_187
    move-exception v2

    .line 311
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_180

    .line 313
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_180

    .line 268
    .restart local p7    # "exType":Ljava/lang/String;
    .restart local p12    # "si_CodeType":Ljava/lang/String;
    :cond_192
    if-lez p13, :cond_341

    .line 270
    :try_start_194
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    move/from16 v0, p13

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v9, p12

    move-object/from16 v6, p7

    goto/16 :goto_7e

    .line 296
    .end local p7    # "exType":Ljava/lang/String;
    .end local p12    # "si_CodeType":Ljava/lang/String;
    :cond_1a2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v7, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p17

    invoke-virtual/range {v2 .. v12}, Lcom/tencent/bugly/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;

    move-result-object v3

    .line 297
    if-nez v3, :cond_1c8

    .line 299
    const-string v2, "pkg crash datas fail!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v3, "packageFail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    goto :goto_180

    .line 304
    :cond_1c8
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v4

    const-string v2, "#++++++++++Detail Record By Bugly++++++++++#"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH REPORT CREATED BY NATIVE VERSION %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# REPORT ID: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# PKG NAME: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# APP VER: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v5, "# LAUNCH TIME:%s"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v2, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v2, :cond_31f

    const/4 v2, 0x0

    :goto_226
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH TYPE: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "NATIVE_CRASH"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v5, "# CRASH TIME: %s"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v2, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v2, :cond_32e

    const/4 v2, 0x0

    :goto_248
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH PROCESS: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# CRASH THREAD: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v5, "# CRASH DEVICE: %s %s"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->i()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->z()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33d

    const-string v2, "ROOTED"

    :goto_282
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/x;->A:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/x;->B:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/x;->C:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/x;->D:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/x;->E:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/x;->F:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# EXCEPTION FIRED BY %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# EXCEPTION TYPE: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# EXCEPTION MSG: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "# EXCEPTION STACK:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 306
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 307
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;)V

    goto/16 :goto_180

    .line 304
    :cond_31f
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_226

    :cond_32e
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_248

    :cond_33d
    const-string v2, "UNROOT"
    :try_end_33f
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_33f} :catch_187

    goto/16 :goto_282

    .restart local p7    # "exType":Ljava/lang/String;
    .restart local p12    # "si_CodeType":Ljava/lang/String;
    :cond_341
    move-object/from16 v9, p12

    move-object/from16 v6, p7

    goto/16 :goto_7e
.end method

.method public final packageCrashDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;
    .registers 23
    .param p1, "crashThread"    # Ljava/lang/String;
    .param p2, "crashTime"    # J
    .param p4, "crashType"    # Ljava/lang/String;
    .param p5, "crashAddr"    # Ljava/lang/String;
    .param p6, "crashStack"    # Ljava/lang/String;
    .param p7, "sendingType"    # Ljava/lang/String;
    .param p8, "sendingProcessName"    # Ljava/lang/String;
    .param p9, "coreDumpFile"    # Ljava/lang/String;
    .param p10, "nativeVersion"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v5, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/x;-><init>()V

    .line 145
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->A:J

    .line 146
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->B:J

    .line 147
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->C:J

    .line 148
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->s()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->D:J

    .line 149
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->r()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->E:J

    .line 150
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->t()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->F:J

    .line 151
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 153
    const/4 v2, 0x1

    iput v2, v5, Lcom/tencent/bugly/proguard/x;->b:I

    .line 154
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 156
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 159
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p6

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 162
    iput-wide p2, v5, Lcom/tencent/bugly/proguard/x;->r:J

    .line 163
    iget-object v2, v5, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->c([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 164
    const/16 v2, 0x4e20

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 165
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 166
    iput-object p1, v5, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->A()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->w()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 169
    move-object/from16 v0, p9

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->v:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p8

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p7

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p10

    iput-object v0, v5, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->b()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->K:J

    .line 174
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v5, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 176
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    if-eqz v2, :cond_1c6

    .line 180
    :try_start_c4
    const-string v2, "start notify crashHandleCallback!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->f:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    const/4 v3, 0x2

    iget-object v4, v5, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    iget-object v7, v5, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 182
    if-eqz v6, :cond_1c6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1c6

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 186
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f4
    :goto_f4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1c7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c7

    const/4 v3, 0x0

    :goto_113
    if-nez v3, :cond_f4

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x64

    if-le v4, v8, :cond_13e

    .line 195
    const/4 v4, 0x0

    const/16 v8, 0x64

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v4, "setted key length is over limit %d substring to %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v4, v8}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_13e
    move-object v4, v3

    .line 199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1ca

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1ca

    const/4 v3, 0x0

    :goto_152
    if-nez v3, :cond_1cc

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x7530

    if-le v3, v8, :cond_1cc

    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x7530

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "setted %s value length is over limit %d substring"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x7530

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    :goto_18c
    iget-object v3, v5, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v3, "add setted key %s value size:%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1a7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_1a7} :catch_1a9

    goto/16 :goto_f4

    .line 216
    :catch_1a9
    move-exception v2

    .line 218
    const-string v3, "crash handle callback somthing wrong! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 221
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    :cond_1c6
    :goto_1c6
    return-object v5

    .line 188
    :cond_1c7
    const/4 v3, 0x1

    goto/16 :goto_113

    .line 199
    :cond_1ca
    const/4 v3, 0x1

    goto :goto_152

    .line 207
    :cond_1cc
    :try_start_1cc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_18c

    .line 213
    :cond_1e0
    invoke-interface {v6, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1e3
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1e3} :catch_1a9

    goto :goto_1c6
.end method
