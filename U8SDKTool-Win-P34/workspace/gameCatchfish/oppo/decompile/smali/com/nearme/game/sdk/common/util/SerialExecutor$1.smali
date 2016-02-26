.class Lcom/nearme/game/sdk/common/util/SerialExecutor$1;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/common/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/game/sdk/common/util/SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/common/util/SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;->this$0:Lcom/nearme/game/sdk/common/util/SerialExecutor;

    iput-object p2, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 21
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;->this$0:Lcom/nearme/game/sdk/common/util/SerialExecutor;

    invoke-virtual {v0}, Lcom/nearme/game/sdk/common/util/SerialExecutor;->scheduleNext()V

    .line 22
    return-void

    .line 21
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/SerialExecutor$1;->this$0:Lcom/nearme/game/sdk/common/util/SerialExecutor;

    invoke-virtual {v1}, Lcom/nearme/game/sdk/common/util/SerialExecutor;->scheduleNext()V

    throw v0
.end method
