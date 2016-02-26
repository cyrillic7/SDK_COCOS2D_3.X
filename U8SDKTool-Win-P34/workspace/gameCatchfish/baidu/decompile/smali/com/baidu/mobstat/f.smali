.class Lcom/baidu/mobstat/f;
.super Ljava/lang/Thread;


# static fields
.field private static a:Lcom/baidu/mobstat/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mobstat/f;

    invoke-direct {v0}, Lcom/baidu/mobstat/f;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/f;->a:Lcom/baidu/mobstat/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/mobstat/f;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/f;->d:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/f;
    .registers 1

    sget-object v0, Lcom/baidu/mobstat/f;->a:Lcom/baidu/mobstat/f;

    return-object v0
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/f;->c:Z

    return-void
.end method

.method private declared-synchronized e()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/mobstat/f;->d:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/baidu/mobstat/f;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/baidu/mobstat/f;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/f;->d()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/f;->start()V

    goto :goto_8
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/f;->c:Z

    return v0
.end method

.method public declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/f;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    invoke-static {}, Lcom/baidu/mobstat/g;->a()Lcom/baidu/mobstat/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/mobstat/f;->e()V

    sget-object v1, Lcom/baidu/mobstat/f;->a:Lcom/baidu/mobstat/f;

    monitor-enter v1

    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_24
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_21 .. :try_end_24} :catch_3f
    .catchall {:try_start_21 .. :try_end_24} :catchall_46

    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_46

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/b;->b()V

    invoke-static {}, Lcom/baidu/mobstat/g;->a()Lcom/baidu/mobstat/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->c(Landroid/content/Context;)V

    return-void

    :catch_3f
    move-exception v0

    :try_start_40
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_46

    throw v0
.end method
