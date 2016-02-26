.class Lcom/baidu/wallet/core/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/LinkedList;

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/baidu/wallet/core/a/b;


# direct methods
.method private constructor <init>(Lcom/baidu/wallet/core/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/core/a/b$b;->c:Lcom/baidu/wallet/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->a:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/wallet/core/a/b;Lcom/baidu/wallet/core/a/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/a/b$b;-><init>(Lcom/baidu/wallet/core/a/b;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->c:Lcom/baidu/wallet/core/a/b;

    invoke-static {v0}, Lcom/baidu/wallet/core/a/b;->b(Lcom/baidu/wallet/core/a/b;)Lcom/baidu/wallet/core/a/b$c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/a/b$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/a/b$c;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/baidu/wallet/core/a/a;

    invoke-direct {v1, p0, p1}, Lcom/baidu/wallet/core/a/a;-><init>(Lcom/baidu/wallet/core/a/b$b;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/wallet/core/a/b$b;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/baidu/wallet/core/a/b$b;->a()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
