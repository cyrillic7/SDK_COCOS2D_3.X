.class public Lcom/tencent/msdk/timer/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/timer/TaskManager$1;,
        Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/tencent/msdk/timer/TaskManager;


# instance fields
.field private final PERIOD:I

.field private mDeedDelTaskNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseTime:J

.field private mRunningTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/timer/task/BaseTask;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/timer/TaskManager;->instance:Lcom/tencent/msdk/timer/TaskManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/msdk/timer/TaskManager;->PERIOD:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->timer:Ljava/util/Timer;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mPauseTime:J

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/timer/TaskManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/timer/TaskManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/timer/TaskManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/timer/TaskManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/msdk/timer/TaskManager;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/msdk/timer/TaskManager;->instance:Lcom/tencent/msdk/timer/TaskManager;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/tencent/msdk/timer/TaskManager;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/timer/TaskManager;->instance:Lcom/tencent/msdk/timer/TaskManager;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/tencent/msdk/timer/TaskManager;

    invoke-direct {v0}, Lcom/tencent/msdk/timer/TaskManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/timer/TaskManager;->instance:Lcom/tencent/msdk/timer/TaskManager;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/tencent/msdk/timer/TaskManager;->instance:Lcom/tencent/msdk/timer/TaskManager;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static onPause()V
    .registers 6

    .prologue
    .line 136
    invoke-static {}, Lcom/tencent/msdk/timer/TaskManager;->getInstance()Lcom/tencent/msdk/timer/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/timer/TaskManager;->stopTimer()V

    .line 137
    invoke-static {}, Lcom/tencent/msdk/timer/TaskManager;->getInstance()Lcom/tencent/msdk/timer/TaskManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/msdk/timer/TaskManager;->mPauseTime:J

    .line 138
    return-void
.end method

.method public static onResume()V
    .registers 1

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/msdk/timer/TaskManager;->getInstance()Lcom/tencent/msdk/timer/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/timer/TaskManager;->startTimer()V

    .line 142
    return-void
.end method


# virtual methods
.method public addDelTaskByName(Ljava/lang/String;)I
    .registers 4
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deleted!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 94
    :try_start_1f
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 95
    const/4 v0, -0x1

    monitor-exit v1

    .line 98
    :goto_29
    return v0

    .line 97
    :cond_2a
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_29

    .line 100
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method

.method public addRunningTask(Lcom/tencent/msdk/timer/task/BaseTask;)I
    .registers 4
    .param p1, "task"    # Lcom/tencent/msdk/timer/task/BaseTask;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    :try_start_3
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 83
    const/4 v0, -0x1

    monitor-exit v1

    .line 86
    :goto_d
    return v0

    .line 85
    :cond_e
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_d

    .line 88
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getTaskByName(Ljava/lang/String;)Lcom/tencent/msdk/timer/task/BaseTask;
    .registers 6
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v3, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 124
    :try_start_3
    iget-object v2, p0, Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/msdk/timer/task/BaseTask;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/timer/task/BaseTask;

    .line 127
    .local v1, "tempTask":Lcom/tencent/msdk/timer/task/BaseTask;
    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->getmTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 128
    monitor-exit v3

    .line 131
    .end local v1    # "tempTask":Lcom/tencent/msdk/timer/task/BaseTask;
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_20

    .line 132
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/msdk/timer/task/BaseTask;>;"
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public resetNotifiedTimesByTaskName(Ljava/lang/String;)V
    .registers 3
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/timer/TaskManager;->getTaskByName(Ljava/lang/String;)Lcom/tencent/msdk/timer/task/BaseTask;

    move-result-object v0

    .line 110
    .local v0, "tempTask":Lcom/tencent/msdk/timer/task/BaseTask;
    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v0}, Lcom/tencent/msdk/timer/task/BaseTask;->resetNotifiedTimes()V

    .line 113
    :cond_9
    return-void
.end method

.method public startTimer()V
    .registers 7

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->timer:Ljava/util/Timer;

    if-nez v0, :cond_21

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->timer:Ljava/util/Timer;

    .line 41
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;-><init>(Lcom/tencent/msdk/timer/TaskManager;Lcom/tencent/msdk/timer/TaskManager$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 42
    const-string v0, "TaskManager start Timer"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 46
    :goto_20
    return-void

    .line 44
    :cond_21
    const-string v0, "TaskManager timer started"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public stopTimer()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    .line 50
    iget-object v0, p0, Lcom/tencent/msdk/timer/TaskManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 51
    const-string v0, "TaskManager stopTimer"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 55
    :goto_e
    return-void

    .line 53
    :cond_f
    const-string v0, "TaskManager no timer"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_e
.end method
