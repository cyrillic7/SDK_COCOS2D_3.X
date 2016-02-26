.class public Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# static fields
.field public static ACTION_PROCESS_CRASHED:Ljava/lang/String; = null

.field public static ACTION_PROCESS_LAUNCHED:Ljava/lang/String; = null

.field public static final UPLOADLIMITED:J = 0xea60L

.field private static d:Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "com.tencent.feedback.A01"

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->ACTION_PROCESS_LAUNCHED:Ljava/lang/String;

    .line 35
    const-string v0, "com.tencent.feedback.A02"

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->ACTION_PROCESS_CRASHED:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    .line 52
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 11

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e1

    move-result v0

    if-nez v0, :cond_14

    .line 103
    :cond_11
    const/4 v0, 0x0

    .line 179
    :goto_12
    monitor-exit p0

    return v0

    .line 105
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is Connect BC "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 107
    const-string v1, "network changed %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 109
    if-nez v0, :cond_5c

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 113
    const/4 v0, 0x1

    goto :goto_12

    .line 117
    :cond_5c
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 121
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 122
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v4

    .line 123
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->a()Lcom/tencent/bugly/proguard/r;

    move-result-object v5

    .line 124
    invoke-static {p1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v6

    .line 126
    if-eqz v4, :cond_7b

    if-eqz v5, :cond_7b

    if-nez v6, :cond_85

    .line 128
    :cond_7b
    const-string v0, "not inited BC not work"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x1

    goto :goto_12

    .line 133
    :cond_85
    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v6

    if-nez v6, :cond_be

    .line 136
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/tencent/bugly/proguard/r;->a(I)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_9c

    .line 138
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 139
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 142
    :cond_9c
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/tencent/bugly/proguard/r;->a(I)J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_b0

    .line 144
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 145
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 148
    :cond_b0
    const-string v0, "try remote strategy on BC"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v5, v4}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/crashreport/common/strategy/c;)V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 158
    :cond_be
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/bugly/proguard/r;->a(I)J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_de

    .line 161
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z
    :try_end_de
    .catchall {:try_start_14 .. :try_end_de} :catchall_e1

    .line 179
    :cond_de
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 102
    :catchall_e1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;
    .registers 2

    .prologue
    .line 42
    const-class v1, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;

    .line 46
    :cond_e
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 69
    monitor-exit p0

    return-void

    .line 66
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 60
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    :cond_c
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 91
    return-void
.end method

.method public declared-synchronized regist(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    const-string v0, "regis BC"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->b:Landroid/content/Context;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregist(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    const-string v0, "unregis BC"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->b:Landroid/content/Context;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 85
    monitor-exit p0

    return-void

    .line 82
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
