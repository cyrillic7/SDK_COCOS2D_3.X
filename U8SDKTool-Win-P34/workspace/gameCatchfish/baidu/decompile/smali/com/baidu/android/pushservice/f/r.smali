.class Lcom/baidu/android/pushservice/f/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/baidu/android/pushservice/f/q;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/f/q;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/r;->c:Lcom/baidu/android/pushservice/f/q;

    iput-wide p2, p0, Lcom/baidu/android/pushservice/f/r;->a:J

    iput-wide p4, p0, Lcom/baidu/android/pushservice/f/r;->b:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/16 v7, 0x3e8

    const-string v0, "StatisticPoster"

    const-string v1, "SendStatisticTask doInBackground "

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/r;->c:Lcom/baidu/android/pushservice/f/q;

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/q;->a(Lcom/baidu/android/pushservice/f/q;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/android/pushservice/f/r;->a:J

    iget-wide v4, p0, Lcom/baidu/android/pushservice/f/r;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/baidu/android/pushservice/util/PushDatabase;->getBehaviorEnumCount(Landroid/content/Context;JJ)I

    move-result v0

    invoke-static {}, Lcom/baidu/android/pushservice/f/q;->b()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendStatisticTask behaviorcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-gtz v0, :cond_38

    :cond_37
    :goto_37
    return-void

    :cond_38
    const/4 v6, 0x0

    move v8, v0

    :goto_3a
    if-lt v8, v7, :cond_4e

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/r;->c:Lcom/baidu/android/pushservice/f/q;

    iget-wide v2, p0, Lcom/baidu/android/pushservice/f/r;->a:J

    iget-wide v4, p0, Lcom/baidu/android/pushservice/f/r;->b:J

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/android/pushservice/f/q;->b(JJII)Z

    move-result v0

    if-eqz v0, :cond_37

    add-int/lit16 v0, v8, -0x3e8

    add-int/lit16 v6, v6, 0x3e8

    move v8, v0

    goto :goto_3a

    :cond_4e
    const/4 v0, 0x1

    if-gt v8, v7, :cond_5e

    if-lez v8, :cond_5e

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/r;->c:Lcom/baidu/android/pushservice/f/q;

    iget-wide v2, p0, Lcom/baidu/android/pushservice/f/r;->a:J

    iget-wide v4, p0, Lcom/baidu/android/pushservice/f/r;->b:J

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/android/pushservice/f/q;->b(JJII)Z

    move-result v0

    :cond_5e
    if-eqz v0, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushSettings;->a(J)V

    :try_start_67
    iget-object v0, p0, Lcom/baidu/android/pushservice/f/r;->c:Lcom/baidu/android/pushservice/f/q;

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/q;->a(Lcom/baidu/android/pushservice/f/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/PushDatabase;->clearBehaviorInfo(Landroid/content/Context;)J
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_37

    :catch_71
    move-exception v0

    const-string v0, "StatisticPoster"

    const-string v1, "clearBehaviorInfo exception"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method
