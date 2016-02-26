.class public Lcom/tencent/msdk/MsdkActivity;
.super Landroid/app/Activity;
.source "MsdkActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isReduplicateGameActivity()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/tencent/msdk/MsdkActivity;->getActivityNum()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getActivityNum()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/tencent/msdk/MsdkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 103
    .local v0, "manager":Landroid/app/ActivityManager;
    if-nez v0, :cond_c

    .line 110
    :cond_b
    :goto_b
    return v2

    .line 106
    :cond_c
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_b

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18
    const-string v0, "MsdkActivity onCreate~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/tencent/msdk/MsdkActivity;->finish()V

    .line 22
    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    const-string v0, "MsdkActivity onDestroy~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 90
    :cond_e
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 94
    const-string v0, "***~~~!!!onLowMemory()!!!~~~***"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    const-string v0, "MsdkActivity onPause~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 67
    :goto_e
    return-void

    .line 65
    :cond_f
    const-string v0, "onPause()"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "MsdkActivity onRestart~~~"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 29
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 30
    const-string v0, "YellowGame onRestart~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 33
    :cond_13
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    const-string v0, "MsdkActivity onResume~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 55
    :goto_e
    return-void

    .line 54
    :cond_f
    const-string v0, "onResume()"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 39
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    const-string v0, "MsdkActivity onStart~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 44
    :goto_e
    return-void

    .line 43
    :cond_f
    const-string v0, "onStart()"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    invoke-direct {p0}, Lcom/tencent/msdk/MsdkActivity;->isReduplicateGameActivity()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    const-string v0, "MsdkActivity onStop~~~.Reduplicate game activity was detected.Return immediately."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 79
    :goto_e
    return-void

    .line 77
    :cond_f
    const-string v0, "onStop()"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_e
.end method
