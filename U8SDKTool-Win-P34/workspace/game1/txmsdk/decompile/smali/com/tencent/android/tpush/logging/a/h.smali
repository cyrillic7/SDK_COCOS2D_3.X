.class public Lcom/tencent/android/tpush/logging/a/h;
.super Lcom/tencent/android/tpush/logging/a/i;
.source "ProGuard"


# static fields
.field private static c:Lcom/tencent/android/tpush/logging/a/h;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/i;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/h;->a:Lcom/tencent/android/tpush/logging/a/b;

    if-nez v0, :cond_a

    .line 85
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/h;->d()V

    .line 87
    :cond_a
    new-instance v0, Lcom/tencent/android/tpush/logging/a/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/h;->a:Lcom/tencent/android/tpush/logging/a/b;

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/logging/a/a;-><init>(Lcom/tencent/android/tpush/logging/a/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/h;->b:Lcom/tencent/android/tpush/logging/a/a;

    .line 88
    sget v0, Lcom/tencent/android/tpush/service/a/a;->r:I

    if-nez v0, :cond_1f

    const/16 v0, 0x3f

    .line 91
    :goto_19
    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/h;->b:Lcom/tencent/android/tpush/logging/a/a;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/logging/a/a;->a(I)V

    .line 93
    return-void

    .line 88
    :cond_1f
    sget v0, Lcom/tencent/android/tpush/service/a/a;->r:I

    goto :goto_19
.end method

.method public static declared-synchronized a()Lcom/tencent/android/tpush/logging/a/h;
    .registers 2

    .prologue
    .line 24
    const-class v1, Lcom/tencent/android/tpush/logging/a/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/android/tpush/logging/a/h;->c:Lcom/tencent/android/tpush/logging/a/h;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/tencent/android/tpush/logging/a/h;

    invoke-direct {v0}, Lcom/tencent/android/tpush/logging/a/h;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/logging/a/h;->c:Lcom/tencent/android/tpush/logging/a/h;

    .line 27
    :cond_e
    sget-object v0, Lcom/tencent/android/tpush/logging/a/h;->c:Lcom/tencent/android/tpush/logging/a/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 38
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 46
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 54
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 62
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 66
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 74
    if-nez p2, :cond_c

    .line 75
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/android/tpush/logging/a/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_b
    return-void

    .line 77
    :cond_c
    invoke-static {}, Lcom/tencent/android/tpush/logging/a/h;->a()Lcom/tencent/android/tpush/logging/a/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 96
    const-class v1, Lcom/tencent/android/tpush/logging/a/h;

    monitor-enter v1

    .line 97
    :try_start_3
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/h;->b:Lcom/tencent/android/tpush/logging/a/a;

    if-eqz v0, :cond_17

    .line 98
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/h;->b:Lcom/tencent/android/tpush/logging/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/logging/a/a;->a()V

    .line 99
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/h;->b:Lcom/tencent/android/tpush/logging/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/logging/a/a;->b()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/h;->b:Lcom/tencent/android/tpush/logging/a/a;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/logging/a/h;->c:Lcom/tencent/android/tpush/logging/a/h;

    .line 103
    :cond_17
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method
