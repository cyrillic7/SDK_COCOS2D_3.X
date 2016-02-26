.class Lcom/baidu/mobstat/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/c;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/c;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/mobstat/d;->e:Lcom/baidu/mobstat/c;

    iput-object p2, p0, Lcom/baidu/mobstat/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/d;->b:Ljava/lang/String;

    iput p4, p0, Lcom/baidu/mobstat/d;->c:I

    iput-object p5, p0, Lcom/baidu/mobstat/d;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Lcom/baidu/mobstat/f;->a()Lcom/baidu/mobstat/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/f;->c()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/baidu/mobstat/f;->a()Lcom/baidu/mobstat/f;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    invoke-static {}, Lcom/baidu/mobstat/f;->a()Lcom/baidu/mobstat/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_32
    .catchall {:try_start_f .. :try_end_16} :catchall_39

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_39

    :cond_17
    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/d;->b:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/mobstat/d;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/b;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/d;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    return-void

    :catch_32
    move-exception v0

    :try_start_33
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_39

    throw v0
.end method
