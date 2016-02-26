.class public final Lcom/tencent/beacon/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/beacon/a/b/b;


# static fields
.field private static a:Lcom/tencent/beacon/b/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/beacon/upload/g;

.field private d:Lcom/tencent/beacon/upload/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/b/d;->a:Lcom/tencent/beacon/b/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/beacon/upload/g;)V
    .registers 6

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tencent/beacon/b/d;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/tencent/beacon/b/d;->c:Lcom/tencent/beacon/upload/g;

    .line 45
    new-instance v0, Lcom/tencent/beacon/b/e;

    invoke-direct {v0}, Lcom/tencent/beacon/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/b/d;->d:Lcom/tencent/beacon/upload/f;

    .line 46
    iget-object v0, p0, Lcom/tencent/beacon/b/d;->c:Lcom/tencent/beacon/upload/g;

    if-eqz v0, :cond_1b

    .line 47
    iget-object v0, p0, Lcom/tencent/beacon/b/d;->c:Lcom/tencent/beacon/upload/g;

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/tencent/beacon/b/d;->d:Lcom/tencent/beacon/upload/f;

    invoke-interface {v0, v1, v2}, Lcom/tencent/beacon/upload/g;->a(ILcom/tencent/beacon/upload/f;)Z

    .line 49
    :cond_1b
    iget-object v0, p0, Lcom/tencent/beacon/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, Lcom/tencent/beacon/a/b/c;->a(Lcom/tencent/beacon/a/b/b;)V

    .line 52
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/beacon/b/d;->c:Lcom/tencent/beacon/upload/g;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/b/c;->a(ILcom/tencent/beacon/upload/g;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/beacon/upload/g;)Lcom/tencent/beacon/b/d;
    .registers 5

    .prologue
    .line 29
    const-class v1, Lcom/tencent/beacon/b/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/b/d;->a:Lcom/tencent/beacon/b/d;

    if-nez v0, :cond_1a

    .line 30
    sget-boolean v0, Lcom/tencent/beacon/event/p;->b:Z

    if-nez v0, :cond_1a

    .line 31
    const-string v0, " SpeedMonitorModule create instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lcom/tencent/beacon/b/d;

    invoke-direct {v0, p0, p1}, Lcom/tencent/beacon/b/d;-><init>(Landroid/content/Context;Lcom/tencent/beacon/upload/g;)V

    sput-object v0, Lcom/tencent/beacon/b/d;->a:Lcom/tencent/beacon/b/d;

    .line 35
    :cond_1a
    sget-object v0, Lcom/tencent/beacon/b/d;->a:Lcom/tencent/beacon/b/d;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Lcom/tencent/beacon/b/d;
    .registers 2

    .prologue
    .line 39
    const-class v0, Lcom/tencent/beacon/b/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/beacon/b/d;->a:Lcom/tencent/beacon/b/d;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()Z
    .registers 2

    .prologue
    .line 56
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_c

    .line 58
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/e;->c(I)Z

    move-result v0

    .line 60
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public final a([Lcom/tencent/beacon/b/b;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 71
    if-eqz p1, :cond_6

    array-length v0, p1

    if-gtz v0, :cond_7

    .line 76
    :cond_6
    :goto_6
    return v4

    .line 74
    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    new-instance v2, Lcom/tencent/beacon/b/c;

    iget-object v3, p0, Lcom/tencent/beacon/b/d;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/tencent/beacon/b/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/beacon/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/c;->d()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    .line 87
    if-nez v0, :cond_d

    .line 101
    :cond_c
    :goto_c
    return-void

    .line 90
    :cond_d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/e;->b(I)Lcom/tencent/beacon/a/b/e$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->e()Lcom/tencent/beacon/c/e/e;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 93
    :try_start_20
    iget-object v1, p0, Lcom/tencent/beacon/b/d;->d:Lcom/tencent/beacon/upload/f;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/b/e$a;->e()Lcom/tencent/beacon/c/e/e;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/b/e;->a(Lcom/tencent/beacon/c/e/e;)Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_c

    .line 95
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/beacon/b/b;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/b/b;

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/b/d;->a([Lcom/tencent/beacon/b/b;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_38} :catch_39

    goto :goto_c

    .line 97
    :catch_39
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method
