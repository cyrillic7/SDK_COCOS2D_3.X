.class public Lcom/tencent/bugly/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 271
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 273
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 271
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 276
    :cond_12
    :try_start_12
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->y()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getAppID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 197
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 195
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 200
    :cond_12
    :try_start_12
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->d()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getAppVer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 256
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 258
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 256
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 261
    :cond_12
    :try_start_12
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 243
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 241
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 246
    :cond_12
    :try_start_12
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "crashReportAppID"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 53
    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 54
    monitor-exit v0

    return-void

    .line 53
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .registers 21
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "crashReportAppID"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "customStrategy"    # Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .prologue
    .line 70
    const-class v16, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v16

    :try_start_3
    sget-object v2, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v2, :cond_11

    .line 72
    const-string v2, "already inited ! nothing to do !"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 188
    :goto_f
    monitor-exit v16

    return-void

    .line 76
    :cond_11
    :try_start_11
    const-string v2, "crash report start to init!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    if-nez p0, :cond_26

    .line 80
    new-instance v2, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v3, "init arg \'appContext\' should not be null!"

    invoke-direct {v2, v3}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_23

    .line 70
    :catchall_23
    move-exception v2

    monitor-exit v16

    throw v2

    .line 83
    :cond_26
    if-nez p1, :cond_30

    .line 85
    :try_start_28
    new-instance v2, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v3, "init arg \'crashReportAppID\' should not be null!"

    invoke-direct {v2, v3}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 89
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 90
    if-eqz p2, :cond_48

    .line 93
    new-instance v2, Lcom/tencent/bugly/proguard/u$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/u$a;-><init>()V

    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u$a;)V

    .line 94
    const-string v2, "\'isDebug\' is true , so running in debug model , close it when you release!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 98
    :cond_48
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v3

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/String;)V

    .line 100
    const-string v2, "setted APPID:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 102
    if-eqz p3, :cond_136

    .line 105
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-le v2, v5, :cond_1b8

    .line 110
    const/4 v2, 0x0

    const/16 v5, 0x64

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v5, "appVersion %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 115
    :goto_8e
    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/n;->b(Ljava/lang/String;)V

    .line 116
    const-string v2, "setted APPVERSION:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 120
    :cond_a0
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->b(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e3

    .line 123
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_d1

    .line 125
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 126
    const-string v5, "appChannel %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v2, v4

    .line 129
    :cond_d1
    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/n;->f(Ljava/lang/String;)V

    .line 130
    const-string v4, "setted APPCHANNEL:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->b(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_e3
    move-object v4, v2

    .line 134
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->c(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fc

    .line 137
    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/n;->g(Ljava/lang/String;)V

    .line 138
    const-string v5, "setted libBugly.so file path :%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    :cond_fc
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->d(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_136

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_128

    .line 147
    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v5, "deviceId %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    :cond_128
    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/n;->d(Ljava/lang/String;)V

    .line 152
    const-string v4, "setted deviceId :%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 158
    :cond_136
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v7

    .line 159
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/l;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/l;

    move-result-object v9

    .line 160
    move-object/from16 v0, p0

    invoke-static {v0, v7, v3, v9}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/t;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/l;)Lcom/tencent/bugly/proguard/r;

    move-result-object v6

    .line 161
    new-instance v4, Lcom/tencent/bugly/crashreport/common/strategy/b;

    invoke-direct {v4}, Lcom/tencent/bugly/crashreport/common/strategy/b;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/l;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/l;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/b;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/t;)Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v10

    .line 163
    if-eqz p3, :cond_1b4

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-lez v2, :cond_1b4

    .line 165
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(J)V

    .line 166
    const-string v2, "setted APP_REPORT_DELAY %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 174
    :goto_179
    const/4 v15, 0x0

    .line 175
    if-eqz p3, :cond_18e

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v2

    if-eqz v2, :cond_18e

    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v15

    .line 178
    const-string v2, "setted CrashHanldeCallback"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_18e
    move-object/from16 v8, p0

    move-object v11, v6

    move-object v12, v3

    move-object v13, v7

    move/from16 v14, p2

    .line 180
    invoke-static/range {v8 .. v15}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)Lcom/tencent/bugly/proguard/z;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/z;->c()V

    .line 184
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    move-result-object v2

    .line 185
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->addFilter(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->regist(Landroid/content/Context;)V

    .line 187
    const-string v2, "crash report inited!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 170
    :cond_1b4
    invoke-virtual {v10}, Lcom/tencent/bugly/crashreport/common/strategy/c;->e()V
    :try_end_1b7
    .catchall {:try_start_28 .. :try_end_1b7} :catchall_23

    goto :goto_179

    :cond_1b8
    move-object v2, v4

    goto/16 :goto_8e
.end method

.method public static declared-synchronized isLastSessionCrash()Z
    .registers 3

    .prologue
    .line 286
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 288
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 286
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 291
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/z;->b()Z
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "catchedThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 326
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 328
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 326
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 331
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_f

    .line 332
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setUserId(Ljava/lang/String;)V
    .registers 7
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    .line 211
    const-class v2, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v2

    :try_start_5
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v1, :cond_14

    .line 213
    new-instance v1, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v3, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v3}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    .line 211
    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1

    .line 216
    :cond_14
    if-eqz p0, :cond_3b

    .line 218
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3b

    .line 220
    const/4 v1, 0x0

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .end local p0    # "userId":Ljava/lang/String;
    .local v0, "userId":Ljava/lang/String;
    move-object p0, v0

    .line 226
    .end local v0    # "userId":Ljava/lang/String;
    .restart local p0    # "userId":Ljava/lang/String;
    :cond_3b
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/bugly/proguard/n;->c(Ljava/lang/String;)V

    .line 227
    const-string v1, "UserId setted to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 230
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->f()V
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_11

    .line 232
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized testJavaCrash()V
    .registers 3

    .prologue
    .line 299
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 301
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 299
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 304
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f
.end method

.method public static declared-synchronized testNativeCrash()V
    .registers 3

    .prologue
    .line 312
    const-class v1, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 314
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 312
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 317
    :cond_12
    :try_start_12
    const-string v0, "start to create a native crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 318
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/z;->d()V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_f

    .line 319
    monitor-exit v1

    return-void
.end method
