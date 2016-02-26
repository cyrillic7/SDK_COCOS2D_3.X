.class public Lcom/tencent/msdk/timer/task/CheckLoginTask;
.super Lcom/tencent/msdk/timer/task/BaseTask;
.source "CheckLoginTask.java"


# static fields
.field private static final MY_INTERVAL:I = 0x1e

.field private static final TASK_DELAY_TIME_IN_SECOND:I = 0x3c


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/tencent/msdk/timer/task/BaseTask;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static startTask()I
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getMyInterval()I
    .registers 2

    .prologue
    .line 25
    const/16 v0, 0x1e

    return v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method
