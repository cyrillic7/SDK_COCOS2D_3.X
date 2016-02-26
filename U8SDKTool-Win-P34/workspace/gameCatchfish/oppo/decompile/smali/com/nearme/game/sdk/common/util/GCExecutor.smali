.class public Lcom/nearme/game/sdk/common/util/GCExecutor;
.super Ljava/lang/Object;
.source "GCExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/nearme/game/sdk/common/util/GCExecutor;->a:I

    .line 9
    sget v0, Lcom/nearme/game/sdk/common/util/GCExecutor;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nearme/game/sdk/common/util/GCExecutor;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v0, Lcom/nearme/game/sdk/common/util/GCExecutor;->b:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/GCExecutor;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 14
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/GCExecutor;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 15
    monitor-exit p0

    return-void

    .line 14
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
