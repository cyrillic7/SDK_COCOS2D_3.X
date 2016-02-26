.class public final Lcom/meizu/gamecenter/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/app/AlertDialog;

.field private e:Landroid/os/Handler;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/meizu/gamecenter/a/b;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/b;-><init>(Lcom/meizu/gamecenter/a/a;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/a;->f:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object p1, p0, Lcom/meizu/gamecenter/a/a;->a:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/meizu/gamecenter/a/a;->b:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/a;->c:Z

    .line 35
    iput-object p3, p0, Lcom/meizu/gamecenter/a/a;->e:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/a;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/a;Landroid/app/AlertDialog;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/gamecenter/a/a;->d:Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/a;->c:Z

    return-void
.end method

.method private b()Z
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    :try_start_2
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 147
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    .line 148
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->a:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 151
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v12, 0xea60

    cmp-long v1, v10, v12

    if-ltz v1, :cond_31

    .line 180
    :goto_28
    const-string v0, "AI"

    const-string v1, "target cn not back..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    move v0, v3

    .line 184
    :goto_30
    return v0

    .line 153
    :cond_31
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 154
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    .line 155
    if-lez v10, :cond_7d

    move v4, v3

    .line 157
    :goto_3d
    if-lt v4, v10, :cond_4f

    move v1, v3

    .line 171
    :goto_40
    if-nez v1, :cond_1c

    .line 172
    const-string v0, "AI"

    const-string v1, "target task not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    goto :goto_28

    .line 182
    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 158
    :cond_4f
    :try_start_4f
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 159
    iget v11, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v11, v6, :cond_79

    .line 161
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 162
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 163
    const-string v0, "AI"

    const-string v1, "catch the cn."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 164
    goto :goto_30

    .line 166
    :cond_72
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    move v1, v2

    .line 168
    goto :goto_40

    .line 157
    :cond_79
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3d

    .line 176
    :cond_7d
    const-string v0, "AI"

    const-string v1, "find no task"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_84} :catch_4a

    goto :goto_28
.end method

.method static synthetic c(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 128
    new-instance v0, Lcom/meizu/gamecenter/a/i;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/i;-><init>(Lcom/meizu/gamecenter/a/a;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/meizu/gamecenter/a/e;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/e;-><init>(Lcom/meizu/gamecenter/a/a;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/meizu/gamecenter/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/meizu/gamecenter/a/a;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic h(Lcom/meizu/gamecenter/a/a;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/gamecenter/a/a;->d:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .prologue
    .line 39
    new-instance v0, Lcom/meizu/gamecenter/a/c;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/c;-><init>(Lcom/meizu/gamecenter/a/a;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/a;->a(Ljava/lang/Runnable;)V

    .line 40
    new-instance v0, Lcom/meizu/gamecenter/a/d;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/d;-><init>(Lcom/meizu/gamecenter/a/a;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/a;->a(Ljava/lang/Runnable;)V

    .line 41
    new-instance v0, Lcom/meizu/gamecenter/a/f;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/f;-><init>(Lcom/meizu/gamecenter/a/a;)V

    iget-object v1, p0, Lcom/meizu/gamecenter/a/a;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    monitor-enter p0

    .line 45
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_2e
    .catchall {:try_start_1d .. :try_end_20} :catchall_33

    .line 43
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_33

    .line 51
    iget-boolean v0, p0, Lcom/meizu/gamecenter/a/a;->c:Z

    if-eqz v0, :cond_2b

    .line 52
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/a;->c:Z

    .line 54
    :cond_2b
    iget-boolean v0, p0, Lcom/meizu/gamecenter/a/a;->c:Z

    return v0

    .line 47
    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_20

    .line 43
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
