.class public abstract Lcom/tencent/msdk/timer/task/BaseTask;
.super Ljava/util/TimerTask;
.source "BaseTask.java"


# instance fields
.field private mTaskName:Ljava/lang/String;

.field private notifiedTimes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->notifiedTimes:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/timer/task/BaseTask;->setmTaskName(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public abstract getMyInterval()I
.end method

.method public final getNotifiedTimes()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->notifiedTimes:I

    return v0
.end method

.method public getmTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public final increaseNotifiedTimes()V
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->notifiedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->notifiedTimes:I

    .line 34
    return-void
.end method

.method public final resetNotifiedTimes()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/timer/task/BaseTask;->notifiedTimes:I

    .line 44
    return-void
.end method

.method public setmTaskName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTaskName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/msdk/timer/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 52
    return-void
.end method
