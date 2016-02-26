.class public Lcom/baidu/mtjstatsdk/StatSDKService;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_24

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "statsdk"

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":context=null\uff0c please check it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v1, 0x0

    array-length v2, v3

    if-lt v2, v0, :cond_3f

    :goto_e
    array-length v2, v3

    if-ge v0, v2, :cond_3f

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_25
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_36

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_3a

    move-result-object v2

    goto :goto_25

    :cond_36
    const/4 v1, 0x1

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :catch_3a
    move-exception v2

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto :goto_37

    :cond_3f
    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkStartLoadCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getCuid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0, p4}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/a;->a()Lcom/baidu/mtjstatsdk/a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/mtjstatsdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_8
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13

    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_30

    invoke-static {p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onEventDuration: duration must be greater than zero"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->b([Ljava/lang/Object;)I

    goto :goto_8

    :cond_30
    invoke-static {p0, p5}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/a;->a()Lcom/baidu/mtjstatsdk/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/a;->a()Lcom/baidu/mtjstatsdk/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/a;->a()Lcom/baidu/mtjstatsdk/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public static declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v6, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v6

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    :try_start_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_f
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPageEnd :parame=null || empty"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_36

    :cond_25
    :goto_25
    monitor-exit v6

    return-void

    :cond_27
    :try_start_27
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/m;->b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    goto :goto_25

    :catchall_36
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized onPageStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v6, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v6

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    :try_start_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_f
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPageStart :parame=null || empty"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_39

    :cond_25
    :goto_25
    monitor-exit v6

    return-void

    :cond_27
    :try_start_27
    invoke-static {p0, p2}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/m;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_39

    goto :goto_25

    :catchall_39
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    :try_start_3
    const-string v0, "onPause(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v0

    if-nez v0, :cond_d

    :goto_b
    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    const-class v0, Landroid/app/Activity;

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onPause(Context context)\u4e0d\u5728Activity.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Activity.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_22
    :try_start_22
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/m;->b(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_1f

    goto :goto_b
.end method

.method public static declared-synchronized onPause(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    if-nez p0, :cond_1d

    :try_start_5
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2f

    :cond_1b
    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    :try_start_1d
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Fragment onPause(Context context)\u4e0d\u5728Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Fragment.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_32
    :try_start_32
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/m;->b(Landroid/support/v4/app/Fragment;JLjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    goto :goto_1b
.end method

.method public static declared-synchronized onPause(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    if-nez p0, :cond_1d

    :try_start_5
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "android.app.Fragment onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_31

    :cond_1b
    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "android.app.Fragment onPause(Context context)\u4e0d\u5728android.app.Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in android.app.Fragment.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_34
    :try_start_34
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/m;->b(Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_31

    goto :goto_1b
.end method

.method public static declared-synchronized onResume(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    :try_start_3
    const-string v0, "onResume(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v0

    if-nez v0, :cond_d

    :goto_b
    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    const-class v0, Landroid/app/Activity;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_22
    :try_start_22
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/m;->a(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_1f

    goto :goto_b
.end method

.method public static declared-synchronized onResume(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    if-nez p0, :cond_1d

    :try_start_5
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2f

    :cond_1b
    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    :try_start_1d
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_32
    :try_start_32
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/m;->a(Landroid/support/v4/app/Fragment;JLjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_2f

    goto :goto_1b
.end method

.method public static declared-synchronized onResume(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    if-nez p0, :cond_1d

    :try_start_5
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_31

    :cond_1b
    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_34
    :try_start_34
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_31

    goto :goto_1b
.end method

.method public static sendLog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/DataCore;->sendLogData(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    invoke-static {p3}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/DataCore;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/DataCore;->setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugOn(ZLjava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/baidu/mtjstatsdk/b/b;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mtjstatsdk/b/b;->a:I

    goto :goto_2
.end method

.method public static setLogSenderDelayed(ILjava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/DataCore;->setLogSenderDelayed(ILjava/lang/String;)V

    return-void
.end method
