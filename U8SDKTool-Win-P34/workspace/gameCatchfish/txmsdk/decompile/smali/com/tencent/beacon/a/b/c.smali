.class public final Lcom/tencent/beacon/a/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/beacon/a/b/c;


# instance fields
.field private b:Lcom/tencent/beacon/a/b/e;

.field private c:Z

.field private d:I

.field private e:Lcom/tencent/beacon/upload/f;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/beacon/upload/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/beacon/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/a/b/c;->a:Lcom/tencent/beacon/a/b/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->b:Lcom/tencent/beacon/a/b/e;

    .line 24
    iput-boolean v2, p0, Lcom/tencent/beacon/a/b/c;->c:Z

    .line 26
    iput v2, p0, Lcom/tencent/beacon/a/b/c;->d:I

    .line 28
    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->e:Lcom/tencent/beacon/upload/f;

    .line 30
    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->f:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->j:Landroid/util/SparseArray;

    .line 37
    iput-boolean v2, p0, Lcom/tencent/beacon/a/b/c;->k:Z

    .line 76
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->b:Lcom/tencent/beacon/a/b/e;

    .line 79
    new-instance v0, Lcom/tencent/beacon/a/b/a;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->e:Lcom/tencent/beacon/upload/f;

    .line 80
    new-instance v0, Lcom/tencent/beacon/a/b/d;

    invoke-direct {v0, p1}, Lcom/tencent/beacon/a/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->f:Ljava/lang/Runnable;

    .line 81
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/b/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;
    .registers 3

    .prologue
    .line 41
    const-class v1, Lcom/tencent/beacon/a/b/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/a/b/c;->a:Lcom/tencent/beacon/a/b/c;

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    .line 43
    new-instance v0, Lcom/tencent/beacon/a/b/c;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/a/b/c;->a:Lcom/tencent/beacon/a/b/c;

    .line 45
    :cond_10
    sget-object v0, Lcom/tencent/beacon/a/b/c;->a:Lcom/tencent/beacon/a/b/c;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/tencent/beacon/upload/g;
    .registers 2

    .prologue
    .line 66
    const-class v1, Lcom/tencent/beacon/a/b/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/a/b/c;->a:Lcom/tencent/beacon/a/b/c;

    if-eqz v0, :cond_f

    .line 67
    sget-object v0, Lcom/tencent/beacon/a/b/c;->a:Lcom/tencent/beacon/a/b/c;

    invoke-direct {v0}, Lcom/tencent/beacon/a/b/c;->i()Lcom/tencent/beacon/upload/g;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 70
    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 66
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized i()Lcom/tencent/beacon/upload/g;
    .registers 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 112
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/upload/g;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    .line 114
    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    .line 111
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()[Lcom/tencent/beacon/a/b/f;
    .registers 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 195
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/beacon/a/b/f;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/a/b/f;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 196
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 194
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/beacon/a/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->j:Landroid/util/SparseArray;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .registers 6

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/tencent/beacon/a/b/c;->d:I

    .line 219
    const-string v0, "step:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 220
    monitor-exit p0

    return-void

    .line 218
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILcom/tencent/beacon/a/b/g;)V
    .registers 5

    .prologue
    .line 298
    monitor-enter p0

    if-eqz p2, :cond_d

    :try_start_3
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->j:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    .line 299
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->j:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 301
    :cond_d
    monitor-exit p0

    return-void

    .line 298
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILcom/tencent/beacon/upload/g;)V
    .registers 5

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    .line 128
    if-nez p2, :cond_e

    .line 129
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1d

    .line 137
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 131
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const/16 v0, 0x65

    invoke-virtual {p0}, Lcom/tencent/beacon/a/b/c;->e()Lcom/tencent/beacon/upload/f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/tencent/beacon/upload/g;->a(ILcom/tencent/beacon/upload/f;)Z
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1d

    goto :goto_c

    .line 127
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILjava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/c;->k()Landroid/util/SparseArray;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_11

    .line 328
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/b/g;

    .line 329
    if-eqz v0, :cond_11

    .line 330
    invoke-interface {v0, p2}, Lcom/tencent/beacon/a/b/g;->a(Ljava/util/Map;)V

    .line 333
    :cond_11
    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/beacon/a/b/b;)V
    .registers 7

    .prologue
    .line 228
    monitor-enter p0

    if-nez p1, :cond_5

    .line 273
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 232
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    if-nez v0, :cond_10

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    .line 236
    :cond_10
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/tencent/beacon/a/b/c;->h()I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/tencent/beacon/a/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 240
    const-string v1, "add listener should notify app first run! %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    new-instance v2, Lcom/tencent/beacon/a/b/c$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/beacon/a/b/c$1;-><init>(Lcom/tencent/beacon/a/b/c;Lcom/tencent/beacon/a/b/b;)V

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 254
    :cond_42
    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 255
    const-string v1, "add listener should notify app start query! %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    new-instance v2, Lcom/tencent/beacon/a/b/c$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/beacon/a/b/c$2;-><init>(Lcom/tencent/beacon/a/b/c;Lcom/tencent/beacon/a/b/b;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_61

    goto :goto_3

    .line 228
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/tencent/beacon/a/b/e;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/tencent/beacon/a/b/c;->j()[Lcom/tencent/beacon/a/b/f;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_26

    .line 314
    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    .line 316
    :try_start_d
    invoke-interface {v4, p1}, Lcom/tencent/beacon/a/b/f;->a(Lcom/tencent/beacon/a/b/e;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_13

    .line 314
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 317
    :catch_13
    move-exception v4

    .line 318
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 319
    const-string v5, "com strategy changed error %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 323
    :cond_26
    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/beacon/a/b/f;)V
    .registers 3

    .prologue
    .line 280
    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 282
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 284
    :cond_14
    monitor-exit p0

    return-void

    .line 280
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/beacon/a/b/c;->k:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/a/b/c;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Z)V
    .registers 6

    .prologue
    .line 172
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/beacon/a/b/c;->c:Z

    .line 173
    const-string v0, "isFirst }%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 174
    monitor-exit p0

    return-void

    .line 172
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->f:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/tencent/beacon/a/b/e;
    .registers 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->b:Lcom/tencent/beacon/a/b/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/tencent/beacon/upload/f;
    .registers 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->e:Lcom/tencent/beacon/upload/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .registers 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/a/b/c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()[Lcom/tencent/beacon/a/b/b;
    .registers 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 179
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->g:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/beacon/a/b/b;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/a/b/b;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 180
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 178
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()I
    .registers 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/a/b/c;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
