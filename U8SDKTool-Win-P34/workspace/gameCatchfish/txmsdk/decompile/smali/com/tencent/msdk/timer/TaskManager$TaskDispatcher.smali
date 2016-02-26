.class Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;
.super Ljava/util/TimerTask;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/timer/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/timer/TaskManager;


# direct methods
.method private constructor <init>(Lcom/tencent/msdk/timer/TaskManager;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;->this$0:Lcom/tencent/msdk/timer/TaskManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/timer/TaskManager;Lcom/tencent/msdk/timer/TaskManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tencent/msdk/timer/TaskManager;
    .param p2, "x1"    # Lcom/tencent/msdk/timer/TaskManager$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;-><init>(Lcom/tencent/msdk/timer/TaskManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 60
    const-string v2, "TaskDispatcher run"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;->this$0:Lcom/tencent/msdk/timer/TaskManager;

    # getter for: Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tencent/msdk/timer/TaskManager;->access$100(Lcom/tencent/msdk/timer/TaskManager;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 62
    :try_start_c
    iget-object v2, p0, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;->this$0:Lcom/tencent/msdk/timer/TaskManager;

    # getter for: Lcom/tencent/msdk/timer/TaskManager;->mRunningTaskList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tencent/msdk/timer/TaskManager;->access$100(Lcom/tencent/msdk/timer/TaskManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/msdk/timer/task/BaseTask;>;"
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/timer/task/BaseTask;

    .line 65
    .local v1, "task":Lcom/tencent/msdk/timer/task/BaseTask;
    iget-object v2, p0, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;->this$0:Lcom/tencent/msdk/timer/TaskManager;

    # getter for: Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tencent/msdk/timer/TaskManager;->access$200(Lcom/tencent/msdk/timer/TaskManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->getmTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 67
    iget-object v2, p0, Lcom/tencent/msdk/timer/TaskManager$TaskDispatcher;->this$0:Lcom/tencent/msdk/timer/TaskManager;

    # getter for: Lcom/tencent/msdk/timer/TaskManager;->mDeedDelTaskNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tencent/msdk/timer/TaskManager;->access$200(Lcom/tencent/msdk/timer/TaskManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->getmTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    .line 76
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/msdk/timer/task/BaseTask;>;"
    .end local v1    # "task":Lcom/tencent/msdk/timer/task/BaseTask;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_43

    throw v2

    .line 69
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/msdk/timer/task/BaseTask;>;"
    .restart local v1    # "task":Lcom/tencent/msdk/timer/task/BaseTask;
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->increaseNotifiedTimes()V

    .line 70
    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->getNotifiedTimes()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->getMyInterval()I

    move-result v4

    if-ne v2, v4, :cond_16

    .line 71
    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->run()V

    .line 72
    invoke-virtual {v1}, Lcom/tencent/msdk/timer/task/BaseTask;->resetNotifiedTimes()V

    goto :goto_16

    .line 76
    .end local v1    # "task":Lcom/tencent/msdk/timer/task/BaseTask;
    :cond_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_43

    .line 77
    return-void
.end method
