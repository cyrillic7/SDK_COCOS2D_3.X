.class public Lcom/baidu/android/pushservice/PushLightapp;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_PUSH_SERVICE:Ljava/lang/String; = "com.baidu.android.pushservice.action.PUSH_SERVICE"

.field public static final ACTION_REGISTER_SYNC:Ljava/lang/String; = "com.baidu.android.pushservice.action.BIND_SYNC"

.field private static BIND_TIME_OUT:I = 0x0

.field public static final CONTEXT_FLAG_MODE_MULTI_PROCESS:I = 0x4

.field private static final DEBUG:Z = false

.field private static final ERROR_CODE_AIDL_FAIL:I = -0x2

.field private static EVER_BIND:Z = false

.field public static final KEY_PRIORITY2:Ljava/lang/String; = "priority2"

.field private static final PUSHSERVICE:Ljava/lang/String; = "com.baidu.android.pushservice.PushService"

.field private static final PUSH_VERSION_LEGAL_41:I = 0x17

.field private static final PUSH_VERSION_LEGAL_42:I = 0x19

.field private static final PUSH_VERSION_LEGAL_43:I = 0x1a

.field private static final PUSH_VERSION_LEGAL_44:I = 0x1b

.field private static RUNNING_PUSH_VERSION:I = 0x0

.field public static final SETTINGS_KEY_CURRENT_PACKAGE_NAME:Ljava/lang/String; = "com.baidu.push.cur_pkg"

.field public static final SHARED_NAME_SETTINGS:Ljava/lang/String; = ".push_sync"

.field private static final TAG:Ljava/lang/String; = "PushLightapp"

.field private static sInstance:Lcom/baidu/android/pushservice/PushLightapp;

.field private static sListener:Lcom/baidu/android/pushservice/IPushLightappListener;


# instance fields
.field private bind_times:I

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mIPushService:Lcom/baidu/android/pushservice/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    const/16 v0, 0xdac

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->BIND_TIME_OUT:I

    sput v1, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    iput v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    new-instance v0, Lcom/baidu/android/pushservice/m;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/m;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->BIND_TIME_OUT:I

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/android/pushservice/PushLightapp;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/android/pushservice/PushLightapp;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/android/pushservice/PushLightapp;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/android/pushservice/PushLightapp;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    return-void
.end method

.method static synthetic access$402(I)I
    .registers 1

    sput p0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    return p0
.end method

.method static synthetic access$500(Lcom/baidu/android/pushservice/PushLightapp;)I
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->getRunningServiceVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Lcom/baidu/android/pushservice/IPushLightappListener;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sListener:Lcom/baidu/android/pushservice/IPushLightappListener;

    return-object v0
.end method

.method static synthetic access$700()Lcom/baidu/android/pushservice/PushLightapp;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/android/pushservice/PushLightapp;)Lcom/baidu/android/pushservice/PushLightapp;
    .registers 1

    sput-object p0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/baidu/android/pushservice/PushLightapp;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/android/pushservice/PushLightapp;)I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/android/pushservice/PushLightapp;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    return p1
.end method

.method private static checkPushServiceEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/PushLightapp;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.android.pushservice.action.PUSH_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    move v3, v1

    :goto_1e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5e

    const-string v5, "com.baidu.android.pushservice.PushService"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v0, :cond_44

    move v0, v1

    goto :goto_9

    :cond_44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.baidu.android.pushservice.PushService"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_52} :catch_5d

    move-result v0

    if-eqz v0, :cond_57

    if-ne v0, v2, :cond_5e

    :cond_57
    move v0, v2

    goto :goto_9

    :cond_59
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1e

    :catch_5d
    move-exception v0

    :cond_5e
    move v0, v1

    goto :goto_9
.end method

.method private getCurPushPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.push.cur_pkg"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/android/pushservice/PushLightapp;->pickPushPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendPackages(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushLightapp;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushLightapp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    :cond_f
    :goto_f
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    goto :goto_3

    :cond_12
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-nez v0, :cond_f

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    goto :goto_f
.end method

.method public static declared-synchronized getInstanceAsync(Landroid/content/Context;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 4

    const-class v1, Lcom/baidu/android/pushservice/PushLightapp;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_14

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-interface {p1, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->initialComplete(Lcom/baidu/android/pushservice/PushLightapp;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    :cond_14
    :goto_14
    monitor-exit v1

    return-void

    :cond_16
    :try_start_16
    sput-object p1, Lcom/baidu/android/pushservice/PushLightapp;->sListener:Lcom/baidu/android/pushservice/IPushLightappListener;

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushLightapp;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushLightapp;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRunningServiceVersion()I
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_28

    :try_start_4
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->c()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_18

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :catch_18
    move-exception v1

    goto :goto_9
.end method

.method private pickPushPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushLightapp;->getFriendPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_17

    :cond_15
    move-object v1, v4

    :cond_16
    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".push_sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "priority2"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v0, 0x17

    const/4 v6, 0x4

    shl-long/2addr v0, v6

    cmp-long v6, v2, v0

    if-gez v6, :cond_a6

    :goto_43
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    move-object v1, v4

    :cond_49
    :goto_49
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_5c
    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".push_sync"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_77} :catch_9e

    move-result-object v5

    move-object v6, v4

    move-object v4, v5

    :goto_7a
    if-eqz v4, :cond_49

    const-string v5, "priority2"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v8, v4, v2

    if-gtz v8, :cond_92

    cmp-long v8, v4, v2

    if-nez v8, :cond_a2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    :cond_92
    invoke-static {v6, v0}, Lcom/baidu/android/pushservice/PushLightapp;->checkPushServiceEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    move-object v2, v0

    move-wide v0, v4

    :goto_9a
    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    goto :goto_49

    :catch_9e
    move-exception v6

    move-object v6, v4

    move-object v4, v5

    goto :goto_7a

    :cond_a2
    move-wide v10, v2

    move-object v2, v1

    move-wide v0, v10

    goto :goto_9a

    :cond_a6
    move-wide v0, v2

    goto :goto_43
.end method

.method private tryBindPush()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    :goto_8
    return-void

    :cond_9
    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-nez v0, :cond_15

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    if-lez v0, :cond_18

    :cond_15
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    :cond_18
    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/PushLightapp;->getCurPushPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2a
    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_41

    :goto_32
    iget v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    new-instance v0, Lcom/baidu/android/pushservice/l;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/l;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/l;->start()V

    goto :goto_8

    :catch_41
    move-exception v0

    goto :goto_32
.end method

.method private unbindService()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public clearNewMsgNum(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/b/a;->e(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public deleteAllMsg(Ljava/lang/String;I)I
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->c(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, -0x2

    goto :goto_10
.end method

.method public deleteMsg(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/b/a;->c(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, -0x2

    goto :goto_10
.end method

.method public destroy()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    :cond_a
    return-void
.end method

.method public getBlackList(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v1, :cond_11

    sget v1, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_11

    :try_start_b
    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v1, p1}, Lcom/baidu/android/pushservice/b/a;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    :cond_11
    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    const-string v2, "PushLightapp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getMsgs(Ljava/lang/String;IZII)Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_33

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_33

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;IZII)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getNewMsgNum(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/b/a;->d(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, -0x2

    goto :goto_10
.end method

.method public getSubcribeApps()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_12

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->a()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSubscribedAppids()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->b()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSubscribedAppinfos(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getUnreadMsgNumber(Ljava/lang/String;I)I
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, -0x2

    goto :goto_10
.end method

.method public isReady()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_12

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public removeBlacklist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setAllMsgRead(Ljava/lang/String;I)I
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->b(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, -0x2

    goto :goto_10
.end method

.method public setMsgRead(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/b/a;->b(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, -0x2

    goto :goto_10
.end method

.method public setNotifySwitch(Ljava/lang/String;Z)Z
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public subscribeLight(Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 10

    const v4, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_3d

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3d

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v1, Lcom/baidu/android/pushservice/n;

    invoke-direct {v1, p0, p4}, Lcom/baidu/android/pushservice/n;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/b/b;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_17

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p4, v4, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_17

    :cond_3d
    if-eqz p4, :cond_17

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p4, v4, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_17
.end method

.method public subscribeLight(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 13

    const v6, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_41

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_41

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v5, Lcom/baidu/android/pushservice/o;

    invoke-direct {v5, p0, p5}, Lcom/baidu/android/pushservice/o;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/b/b;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1b

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p5, v6, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_1b

    :cond_41
    if-eqz p5, :cond_1b

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p5, v6, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_1b
.end method

.method public subscribeLightByApiKey(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 13

    const v6, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_41

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_41

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v5, Lcom/baidu/android/pushservice/p;

    invoke-direct {v5, p0, p5, p1}, Lcom/baidu/android/pushservice/p;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/b/b;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1b

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p5, v6, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeByApiKey(ILjava/lang/String;)V

    goto :goto_1b

    :cond_41
    if-eqz p5, :cond_1b

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p5, v6, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeByApiKey(ILjava/lang/String;)V

    goto :goto_1b
.end method

.method public unbindLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 7

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_21

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v1, Lcom/baidu/android/pushservice/r;

    invoke-direct {v1, p0, p3}, Lcom/baidu/android/pushservice/r;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/android/pushservice/b/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/b/b;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    if-eqz p3, :cond_17

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnbindLightResult(ILjava/lang/String;)V

    goto :goto_17

    :cond_21
    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnbindLightResult(ILjava/lang/String;)V

    goto :goto_17
.end method

.method public unsubscribeLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 7

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_21

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v1, Lcom/baidu/android/pushservice/q;

    invoke-direct {v1, p0, p3}, Lcom/baidu/android/pushservice/q;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/b/b;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    if-eqz p3, :cond_17

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_17

    :cond_21
    if-eqz p3, :cond_17

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_17
.end method

.method public updateBlacklist(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_2e

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    const-string v1, "PushLightapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method
