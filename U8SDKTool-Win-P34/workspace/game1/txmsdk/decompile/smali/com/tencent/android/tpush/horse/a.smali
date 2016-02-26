.class public abstract Lcom/tencent/android/tpush/horse/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/concurrent/LinkedBlockingQueue;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;

.field private d:Lcom/tencent/android/tpush/horse/b;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/horse/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    iput-boolean v1, p0, Lcom/tencent/android/tpush/horse/a;->f:Z

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/a;Z)Z
    .registers 2

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/android/tpush/horse/a;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/android/tpush/horse/a;)Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/android/tpush/horse/a;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/horse/a;)Lcom/tencent/android/tpush/horse/b;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->d:Lcom/tencent/android/tpush/horse/b;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/horse/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/android/tpush/horse/a;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 297
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ stopOtherHorse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :try_start_1e
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 300
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 301
    if-eq v0, p1, :cond_30

    .line 302
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/c;

    .line 303
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->a()Lcom/tencent/android/tpush/horse/o;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 304
    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->a()Lcom/tencent/android/tpush/horse/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/o;->c()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5d} :catch_5e

    goto :goto_30

    .line 313
    :catch_5e
    move-exception v0

    .line 314
    const-string v1, "XGHorse"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_68
    :goto_68
    return-void

    .line 308
    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/c;

    .line 309
    if-eqz v0, :cond_68

    .line 310
    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->interrupt()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7a} :catch_5e

    goto :goto_68
.end method

.method public a(Lcom/tencent/android/tpush/horse/b;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/a;->d:Lcom/tencent/android/tpush/horse/b;

    .line 320
    return-void
.end method

.method declared-synchronized a(Ljava/util/List;)V
    .registers 5

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    const-string v0, "XGHorse"

    const-string v1, "@@ addStrategyItem()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 93
    :cond_11
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->d:Lcom/tencent/android/tpush/horse/b;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/tencent/android/tpush/horse/a;->c()Z

    move-result v0

    if-nez v0, :cond_21

    .line 94
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->d:Lcom/tencent/android/tpush/horse/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/android/tpush/horse/b;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_51

    .line 107
    :cond_21
    monitor-exit p0

    return-void

    .line 98
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/horse/a;->f:Z

    .line 100
    invoke-virtual {p0}, Lcom/tencent/android/tpush/horse/a;->b()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 102
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 103
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_51

    goto :goto_32

    .line 90
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "XGHorse"

    const-string v1, "@@ reSetRemain()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 42
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tencent/android/tpush/horse/a;->f:Z

    return v0
.end method

.method public e()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()V
    .registers 5

    .prologue
    .line 71
    const-string v0, "XGHorse"

    const-string v1, "@@ startTask()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/4 v0, 0x2

    if-ge v1, v0, :cond_77

    .line 74
    :try_start_c
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/c;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_41

    .line 75
    :cond_2c
    new-instance v0, Lcom/tencent/android/tpush/horse/c;

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/horse/c;-><init>(Lcom/tencent/android/tpush/horse/a;I)V

    .line 76
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->start()V

    .line 72
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 78
    :cond_41
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/c;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 79
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/c;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/c;->start()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_62} :catch_63

    goto :goto_3d

    .line 81
    :catch_63
    move-exception v0

    .line 82
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "XGHorse"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 87
    :cond_77
    return-void
.end method
