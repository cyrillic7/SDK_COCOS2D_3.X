.class final Lcom/baidu/wallet/core/b/a$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/b/a;

.field private b:J

.field private c:J

.field private d:I

.field private final e:Lcom/baidu/wallet/core/b/b;

.field private final f:Ljava/util/HashSet;


# direct methods
.method private constructor <init>(Lcom/baidu/wallet/core/b/a;Landroid/content/Context;J)V
    .registers 10

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/baidu/wallet/core/b/a$a;->a:Lcom/baidu/wallet/core/b/a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-wide v2, p0, Lcom/baidu/wallet/core/b/a$a;->b:J

    iput-wide v2, p0, Lcom/baidu/wallet/core/b/a$a;->c:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/wallet/core/b/a$a;->d:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->f:Ljava/util/HashSet;

    new-instance v0, Lcom/baidu/wallet/core/b/b;

    invoke-direct {v0, p3, p4}, Lcom/baidu/wallet/core/b/b;-><init>(J)V

    iput-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/wallet/core/b/a;Landroid/content/Context;JLcom/baidu/wallet/core/b/a$1;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/wallet/core/b/a$a;-><init>(Lcom/baidu/wallet/core/b/a;Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/b/a$a;Lcom/baidu/wallet/core/b/a$b;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/b/a$a;->a(Lcom/baidu/wallet/core/b/a$b;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Lcom/baidu/wallet/core/b/a$b;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/baidu/wallet/core/b/a$a;Lcom/baidu/wallet/core/b/a$b;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/b/a$a;->b(Lcom/baidu/wallet/core/b/a$b;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Lcom/baidu/wallet/core/b/a$b;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .registers 10

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->a:Lcom/baidu/wallet/core/b/a;

    iget-object v1, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/b/a;->a(Lcom/baidu/wallet/core/b/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/baidu/wallet/core/b/a$a;->d:I

    iget-object v3, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v3

    if-ne v2, v3, :cond_24

    iget-wide v2, p0, Lcom/baidu/wallet/core/b/a$a;->b:J

    iget-object v4, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/b/b;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    :cond_24
    iget-wide v2, p0, Lcom/baidu/wallet/core/b/a$a;->c:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2b

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v3

    if-ne v2, v3, :cond_78

    iget-object v2, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    iget-object v3, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/b/b;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/wallet/core/b/a$a;->b:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/wallet/core/b/a$a;->c:J

    sub-long v6, v0, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/baidu/wallet/core/b/b;->c(J)V

    :goto_4a
    iget-object v2, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/b/b;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/wallet/core/b/a$a;->b:J

    iget-object v2, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/b/b;->a()I

    move-result v2

    iput v2, p0, Lcom/baidu/wallet/core/b/a$a;->d:I

    iput-wide v0, p0, Lcom/baidu/wallet/core/b/a$a;->c:J

    monitor-enter p0

    :try_start_5d
    iget-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v0, [Lcom/baidu/wallet/core/b/a$b;

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a$a;->f:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6c
    if-ge v0, v2, :cond_80

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    invoke-interface {v3, v4}, Lcom/baidu/wallet/core/b/a$b;->a(Lcom/baidu/wallet/core/b/b;)V
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_82

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_78
    iget-object v2, p0, Lcom/baidu/wallet/core/b/a$a;->e:Lcom/baidu/wallet/core/b/b;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/baidu/wallet/core/b/b;->c(J)V

    goto :goto_4a

    :cond_80
    :try_start_80
    monitor-exit p0

    goto :goto_2a

    :catchall_82
    move-exception v0

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_82

    throw v0
.end method
