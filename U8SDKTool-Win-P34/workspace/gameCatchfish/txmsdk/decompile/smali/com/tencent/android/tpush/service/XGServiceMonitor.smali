.class public Lcom/tencent/android/tpush/service/XGServiceMonitor;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/android/tpush/service/XGServiceMonitor;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->d:Z

    .line 39
    iput-object v1, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->e:Landroid/os/Handler;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->f:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->d:Z

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->e:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->f:Z

    if-eqz v0, :cond_5

    .line 174
    :goto_4
    return-void

    .line 137
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->f:Z

    .line 138
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 140
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is installed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 143
    :try_start_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "am startservice -n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 147
    sget-object v2, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exec cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",exitValud:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz v1, :cond_e3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "am startservice --user 0 -n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 154
    sget-object v2, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exec cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",exitValud:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_e3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    const-string v1, "com.tencent.android.qqdownloader.SDKService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "from_where"

    const-string v2, "xg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 165
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 166
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c()V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_10a} :catch_10f

    .line 173
    :cond_10a
    :goto_10a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->f:Z

    goto/16 :goto_4

    .line 168
    :catch_10f
    move-exception v0

    .line 169
    sget-object v1, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    const-string v2, "monitorAppService error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10a
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/XGServiceMonitor;)Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->d:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 87
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    const/4 v0, 0x1

    .line 95
    :goto_37
    sget-object v1, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v0

    :cond_54
    move v0, v1

    goto :goto_37
.end method

.method private b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 68
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 70
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_16

    .line 73
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 76
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->e()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_c
    return v0

    .line 190
    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private c()V
    .registers 6

    .prologue
    .line 102
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    :try_start_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 105
    const-string v0, "md"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_10
    const-string v0, "osVer"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "mf"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_22} :catch_3c

    .line 112
    :goto_22
    new-instance v0, Lcom/tencent/android/tpush/stat/event/a;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    const-string v3, "PullYYB"

    const-string v4, "AVF34P44NJT5"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/tencent/android/tpush/stat/event/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/g;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/g;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/u;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/u;-><init>(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/stat/g;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/f;)V

    .line 125
    return-void

    .line 109
    :catch_3c
    move-exception v0

    .line 110
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->d()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 177
    const-string v0, "com.tencent.android.qqdownloader"

    const-string v1, "com.tencent.assistant.sdk.SDKSupportService"

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->startPushService(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 184
    return-void
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->b()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 198
    const-string v1, "xg_service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 199
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    const-string v1, "is xg_service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x1

    .line 204
    :goto_1a
    return v0

    .line 203
    :cond_1b
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->a:Ljava/lang/String;

    const-string v1, "not xg_service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGServiceMonitor;
    .registers 3

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/tencent/android/tpush/service/XGServiceMonitor;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->c:Lcom/tencent/android/tpush/service/XGServiceMonitor;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public start()V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->e:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 209
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGServiceMonitor;->e:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/v;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/v;-><init>(Lcom/tencent/android/tpush/service/XGServiceMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_e
    return-void
.end method
