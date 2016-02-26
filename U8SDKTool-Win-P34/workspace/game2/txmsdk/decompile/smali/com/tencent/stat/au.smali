.class public Lcom/tencent/stat/au;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/tencent/stat/common/StatLogger;

.field private static i:Landroid/content/Context;

.field private static j:Lcom/tencent/stat/au;


# instance fields
.field volatile a:I

.field b:Lcom/tencent/stat/common/a;

.field private c:Lcom/tencent/stat/bc;

.field private d:Lcom/tencent/stat/bc;

.field private e:Lcom/tencent/stat/common/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private k:I

.field private l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/tencent/stat/a/e;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    sput-object v1, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    sput-object v1, Lcom/tencent/stat/au;->j:Lcom/tencent/stat/au;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    iput-object v1, p0, Lcom/tencent/stat/au;->d:Lcom/tencent/stat/bc;

    iput-object v1, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/au;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/au;->g:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/stat/au;->a:I

    iput-object v1, p0, Lcom/tencent/stat/au;->b:Lcom/tencent/stat/common/a;

    iput v2, p0, Lcom/tencent/stat/au;->k:I

    iput-object v1, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v2, p0, Lcom/tencent/stat/au;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/au;->n:Ljava/util/HashMap;

    :try_start_24
    new-instance v0, Lcom/tencent/stat/common/e;

    invoke-direct {v0}, Lcom/tencent/stat/common/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/au;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pri_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/au;->g:Ljava/lang/String;

    new-instance v0, Lcom/tencent/stat/bc;

    sget-object v1, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/stat/au;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/stat/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    new-instance v0, Lcom/tencent/stat/bc;

    sget-object v1, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/stat/au;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/stat/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/stat/au;->d:Lcom/tencent/stat/bc;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/stat/au;->a(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/stat/au;->a(Z)V

    invoke-direct {p0}, Lcom/tencent/stat/au;->f()V

    sget-object v0, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tencent/stat/au;->b(Landroid/content/Context;)Lcom/tencent/stat/common/a;

    invoke-virtual {p0}, Lcom/tencent/stat/au;->d()V

    invoke-direct {p0}, Lcom/tencent/stat/au;->j()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_83} :catch_84

    :goto_83
    return-void

    :catch_84
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_83
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/stat/au;
    .registers 3

    sget-object v0, Lcom/tencent/stat/au;->j:Lcom/tencent/stat/au;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/stat/au;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/stat/au;->j:Lcom/tencent/stat/au;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/stat/au;

    invoke-direct {v0, p0}, Lcom/tencent/stat/au;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/stat/au;->j:Lcom/tencent/stat/au;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/stat/au;->j:Lcom/tencent/stat/au;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/stat/bd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "event_id in ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/stat/bd;

    iget-wide v6, v0, Lcom/tencent/stat/bd;->a:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-eq v1, v0, :cond_34

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_38
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(IZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/stat/au;->a:I

    if-lez v0, :cond_d

    if-lez p1, :cond_d

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->a()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_7e
    .catchall {:try_start_1 .. :try_end_a} :catchall_85

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/stat/au;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/stat/au;->b(Ljava/util/List;IZ)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peek "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unsent events."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_6b
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/stat/au;->a(Ljava/util/List;IZ)V

    sget-object v1, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/stat/g;->b(Landroid/content/Context;)Lcom/tencent/stat/g;

    move-result-object v1

    new-instance v2, Lcom/tencent/stat/ba;

    invoke-direct {v2, p0, v0, p2}, Lcom/tencent/stat/ba;-><init>(Lcom/tencent/stat/au;Ljava/util/List;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/stat/g;->b(Ljava/util/List;Lcom/tencent/stat/StatDispatchCallback;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_7d} :catch_7e
    .catchall {:try_start_f .. :try_end_7d} :catchall_85

    goto :goto_d

    :catch_7e
    move-exception v0

    :try_start_7f
    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_85

    goto :goto_d

    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;Z)V
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p3, :cond_2d

    iget v0, p0, Lcom/tencent/stat/au;->a:I

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v2

    if-le v0, v2, :cond_2d

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    const-string v2, "Too many events stored in db."

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget v0, p0, Lcom/tencent/stat/au;->a:I

    iget-object v2, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const-string v4, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/stat/au;->a:I

    :cond_2d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert 1 event, content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_54
    invoke-static {v2}, Lcom/tencent/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "send_count"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_85} :catch_c7
    .catchall {:try_start_1 .. :try_end_85} :catchall_de

    if-eqz v1, :cond_109

    :try_start_87
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_bf

    move-wide v0, v2

    :goto_8b
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_ec

    iget v0, p0, Lcom/tencent/stat/au;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/stat/au;->a:I

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directStoreEvent insert event to db, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_b9
    if-eqz p2, :cond_be

    invoke-interface {p2}, Lcom/tencent/stat/StatDispatchCallback;->onDispatchSuccess()V

    :cond_be
    :goto_be
    return-void

    :catch_bf
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_8b

    :catch_c7
    move-exception v0

    const-wide/16 v2, -0x1

    :try_start_ca
    sget-object v4, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v4, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_cf
    .catchall {:try_start_ca .. :try_end_cf} :catchall_de

    if-eqz v1, :cond_109

    :try_start_d1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d4} :catch_d6

    move-wide v0, v2

    goto :goto_8b

    :catch_d6
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_8b

    :catchall_de
    move-exception v0

    if-eqz v1, :cond_e4

    :try_start_e1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_e4} :catch_e5

    :cond_e4
    :goto_e4
    throw v0

    :catch_e5
    move-exception v1

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_e4

    :cond_ec
    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to store event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_be

    :cond_109
    move-wide v0, v2

    goto :goto_8b
.end method

.method static synthetic a(Lcom/tencent/stat/au;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/stat/au;->i()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/au;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/au;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/au;Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;ZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/stat/au;->b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/au;Lcom/tencent/stat/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/stat/au;->b(Lcom/tencent/stat/f;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/au;Ljava/util/List;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/stat/au;->a(Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/au;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/au;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/stat/bd;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8b

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-direct {p0, p3}, Lcom/tencent/stat/au;->b(Z)I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_8b

    move-result v3

    :try_start_e
    invoke-direct {p0, p3}, Lcom/tencent/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_f6
    .catchall {:try_start_e .. :try_end_11} :catchall_e5

    move-result-object v1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8e

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update events set status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", send_count=send_count+1  where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/stat/au;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update sql:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v2, :cond_7a

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update for delete sql:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/stat/au;->f()V

    :cond_7a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_7d} :catch_d0
    .catchall {:try_start_15 .. :try_end_7d} :catchall_f4

    if-eqz v1, :cond_8

    :try_start_7f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_8b

    goto :goto_8

    :catch_83
    move-exception v0

    :try_start_84
    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_8b

    goto/16 :goto_8

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8e
    :try_start_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update events set status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " where "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/stat/au;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/tencent/stat/au;->k:I

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_c8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from events where send_count>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_c8
    iget v3, p0, Lcom/tencent/stat/au;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/stat/au;->k:I
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_ce} :catch_d0
    .catchall {:try_start_8e .. :try_end_ce} :catchall_f4

    goto/16 :goto_36

    :catch_d0
    move-exception v0

    :goto_d1
    :try_start_d1
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_f4

    if-eqz v1, :cond_8

    :try_start_d8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_db} :catch_dd
    .catchall {:try_start_d8 .. :try_end_db} :catchall_8b

    goto/16 :goto_8

    :catch_dd
    move-exception v0

    :try_start_de
    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_8b

    goto/16 :goto_8

    :catchall_e5
    move-exception v0

    move-object v1, v2

    :goto_e7
    if-eqz v1, :cond_ec

    :try_start_e9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_8b

    :cond_ec
    :goto_ec
    :try_start_ec
    throw v0

    :catch_ed
    move-exception v1

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_8b

    goto :goto_ec

    :catchall_f4
    move-exception v0

    goto :goto_e7

    :catch_f6
    move-exception v0

    move-object v1, v2

    goto :goto_d1
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/stat/bd;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_d6

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events, important:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "event_id in ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/stat/bd;

    iget-wide v6, v0, Lcom/tencent/stat/bd;->a:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, -0x1

    if-eq v2, v0, :cond_6a

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_50

    :cond_6e
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catchall {:try_start_a .. :try_end_73} :catchall_d6

    :try_start_73
    invoke-direct {p0, p2}, Lcom/tencent/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "events"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_bb

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", success delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_bb
    iget v2, p0, Lcom/tencent/stat/au;->a:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/tencent/stat/au;->a:I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-direct {p0}, Lcom/tencent/stat/au;->f()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_c7} :catch_d9
    .catchall {:try_start_73 .. :try_end_c7} :catchall_ee

    if-eqz v1, :cond_8

    :try_start_c9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_ce
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_d6

    goto/16 :goto_8

    :catch_ce
    move-exception v0

    :try_start_cf
    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_d6

    goto/16 :goto_8

    :catchall_d6
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_d9
    move-exception v0

    :try_start_da
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_ee

    if-eqz v1, :cond_8

    :try_start_e1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_e4} :catch_e6
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_d6

    goto/16 :goto_8

    :catch_e6
    move-exception v0

    :try_start_e7
    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_d6

    goto/16 :goto_8

    :catchall_ee
    move-exception v0

    if-eqz v1, :cond_f4

    :try_start_f1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_f4} :catch_f5
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_d6

    :cond_f4
    :goto_f4
    :try_start_f4
    throw v0

    :catch_f5
    move-exception v1

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_fb
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_d6

    goto :goto_f4
.end method

.method private a(Z)V
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "events"

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " unsent events."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_4f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_52} :catch_5f
    .catchall {:try_start_1 .. :try_end_52} :catchall_72

    if-eqz v1, :cond_57

    :try_start_54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_57

    :catch_5f
    move-exception v0

    :try_start_60
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_72

    if-eqz v1, :cond_57

    :try_start_67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_57

    :catch_6b
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_57

    :catchall_72
    move-exception v0

    if-eqz v1, :cond_78

    :try_start_75
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_79

    :cond_78
    :goto_78
    throw v0

    :catch_79
    move-exception v1

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_78
.end method

.method private b(Z)I
    .registers 3

    if-nez p1, :cond_7

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxSendRetryCount()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxImportantDataSendRetryCount()I

    move-result v0

    goto :goto_6
.end method

.method public static b()Lcom/tencent/stat/au;
    .registers 1

    sget-object v0, Lcom/tencent/stat/au;->j:Lcom/tencent/stat/au;

    return-object v0
.end method

.method private b(IZ)V
    .registers 11

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7d

    if-nez p2, :cond_72

    invoke-direct {p0}, Lcom/tencent/stat/au;->g()I

    move-result v0

    :goto_9
    if-lez v0, :cond_7c

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getNumEventsCommitPerSec()I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1b

    if-lez v1, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I

    move-result v2

    div-int v3, v0, v2

    rem-int v4, v0, v2

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_69

    sget-object v5, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sentStoreEventsByDb sendNumbers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",important="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",maxSendNumPerFor1Period="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",restNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    if-ge v0, v3, :cond_77

    invoke-direct {p0, v2, p2}, Lcom/tencent/stat/au;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_72
    invoke-direct {p0}, Lcom/tencent/stat/au;->h()I

    move-result v0

    goto :goto_9

    :cond_77
    if-lez v4, :cond_7c

    invoke-direct {p0, v4, p2}, Lcom/tencent/stat/au;->a(IZ)V

    :cond_7c
    return-void

    :cond_7d
    move v0, p1

    goto :goto_9
.end method

.method private declared-synchronized b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;ZZ)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v0

    if-lez v0, :cond_12

    sget v0, Lcom/tencent/stat/StatConfig;->m:I

    if-lez v0, :cond_f

    if-nez p3, :cond_f

    if-eqz p4, :cond_14

    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/stat/au;->a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_96

    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    sget v0, Lcom/tencent/stat/StatConfig;->m:I

    if-lez v0, :cond_12

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheEventsInMemory.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numEventsCachedInMemory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/stat/StatConfig;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numStoredEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/stat/au;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_70
    iget-object v0, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget v1, Lcom/tencent/stat/StatConfig;->m:I

    if-lt v0, v1, :cond_84

    invoke-direct {p0}, Lcom/tencent/stat/au;->i()V

    :cond_84
    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_91

    invoke-direct {p0}, Lcom/tencent/stat/au;->i()V

    :cond_91
    invoke-interface {p2}, Lcom/tencent/stat/StatDispatchCallback;->onDispatchSuccess()V
    :try_end_94
    .catchall {:try_start_14 .. :try_end_94} :catchall_96

    goto/16 :goto_12

    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/tencent/stat/f;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p1}, Lcom/tencent/stat/f;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/stat/common/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "content"

    iget-object v2, p1, Lcom/tencent/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md5sum"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/tencent/stat/f;->c:Ljava/lang/String;

    const-string v0, "version"

    iget v1, p1, Lcom/tencent/stat/f;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3f} :catch_10e
    .catchall {:try_start_4 .. :try_end_3f} :catchall_f6

    move-result-object v1

    :cond_40
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_113

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v2, p1, Lcom/tencent/stat/f;->a:I

    if-ne v0, v2, :cond_40

    move v0, v9

    :goto_50
    iget-object v2, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ne v9, v0, :cond_ad

    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "config"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/tencent/stat/f;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    :goto_76
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_c6

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store cfg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_94
    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_9d} :catch_df
    .catchall {:try_start_40 .. :try_end_9d} :catchall_10c

    if-eqz v1, :cond_a2

    :try_start_9f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_107

    :cond_a2
    :try_start_a2
    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ab} :catch_111
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_107

    :goto_ab
    monitor-exit p0

    return-void

    :cond_ad
    :try_start_ad
    const-string v0, "type"

    iget v2, p1, Lcom/tencent/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_76

    :cond_c6
    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sucessed to store cfg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_de} :catch_df
    .catchall {:try_start_ad .. :try_end_de} :catchall_10c

    goto :goto_94

    :catch_df
    move-exception v0

    :goto_e0
    :try_start_e0
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_10c

    if-eqz v1, :cond_ea

    :try_start_e7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_107

    :cond_ea
    :try_start_ea
    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f3} :catch_f4
    .catchall {:try_start_ea .. :try_end_f3} :catchall_107

    goto :goto_ab

    :catch_f4
    move-exception v0

    goto :goto_ab

    :catchall_f6
    move-exception v0

    move-object v1, v8

    :goto_f8
    if-eqz v1, :cond_fd

    :try_start_fa
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_107

    :cond_fd
    :try_start_fd
    iget-object v1, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v1}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_106} :catch_10a
    .catchall {:try_start_fd .. :try_end_106} :catchall_107

    :goto_106
    :try_start_106
    throw v0
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_10a
    move-exception v1

    goto :goto_106

    :catchall_10c
    move-exception v0

    goto :goto_f8

    :catch_10e
    move-exception v0

    move-object v1, v8

    goto :goto_e0

    :catch_111
    move-exception v0

    goto :goto_ab

    :cond_113
    move v0, v10

    goto/16 :goto_50
.end method

.method private b(Ljava/util/List;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/stat/bd;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v9, 0x0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/stat/au;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_a2
    .catchall {:try_start_1 .. :try_end_1f} :catchall_95

    move-result-object v7

    :goto_20
    :try_start_20
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/tencent/stat/StatConfig;->g:Z

    if-nez v0, :cond_38

    invoke-static {v4}, Lcom/tencent/stat/common/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_38
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v1, Lcom/tencent/stat/bd;

    invoke-direct/range {v1 .. v6}, Lcom/tencent/stat/bd;-><init>(JLjava/lang/String;II)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peek event, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",send_count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_7e
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_81} :catch_82
    .catchall {:try_start_20 .. :try_end_81} :catchall_9d

    goto :goto_20

    :catch_82
    move-exception v0

    move-object v1, v7

    :goto_84
    :try_start_84
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_9f

    if-eqz v1, :cond_8e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    if-eqz v7, :cond_8e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8e

    :catchall_95
    move-exception v0

    move-object v7, v9

    :goto_97
    if-eqz v7, :cond_9c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9c
    throw v0

    :catchall_9d
    move-exception v0

    goto :goto_97

    :catchall_9f
    move-exception v0

    move-object v7, v1

    goto :goto_97

    :catch_a2
    move-exception v0

    move-object v1, v9

    goto :goto_84
.end method

.method private c(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/stat/au;->d:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_8
.end method

.method private d(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/stat/au;->d:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_8
.end method

.method static synthetic e()Lcom/tencent/stat/common/StatLogger;
    .registers 1

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method

.method private f()V
    .registers 3

    invoke-direct {p0}, Lcom/tencent/stat/au;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/stat/au;->h()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/stat/au;->a:I

    return-void
.end method

.method private g()I
    .registers 3

    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private h()I
    .registers 3

    iget-object v0, p0, Lcom/tencent/stat/au;->d:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private i()V
    .registers 10

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/stat/au;->m:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_16

    monitor-exit v2

    goto :goto_5

    :catchall_13
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p0, Lcom/tencent/stat/au;->m:Z

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events ,numEventsCachedInMemory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/stat/StatConfig;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",numStoredEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/stat/au;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_17 .. :try_end_55} :catchall_13

    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/stat/a/e;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/stat/a/e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_a1

    sget-object v6, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_a1
    invoke-static {v5}, Lcom/tencent/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "send_count"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    invoke-virtual {v0}, Lcom/tencent/stat/a/e;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "events"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_d1} :catch_d2
    .catchall {:try_start_55 .. :try_end_d1} :catchall_13c

    goto :goto_68

    :catch_d2
    move-exception v0

    :try_start_d3
    sget-object v3, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_d8
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_13c

    if-eqz v1, :cond_e0

    :try_start_da
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/stat/au;->f()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_e0} :catch_135
    .catchall {:try_start_da .. :try_end_e0} :catchall_13

    :cond_e0
    :goto_e0
    const/4 v0, 0x0

    :try_start_e1
    iput-boolean v0, p0, Lcom/tencent/stat/au;->m:Z

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_11f

    sget-object v0, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after insert, cacheEventsInMemory.size():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",numEventsCachedInMemory:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/tencent/stat/StatConfig;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",numStoredEvents:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/tencent/stat/au;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_11f
    monitor-exit v2
    :try_end_120
    .catchall {:try_start_e1 .. :try_end_120} :catchall_13

    goto/16 :goto_5

    :cond_122
    :try_start_122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_125} :catch_d2
    .catchall {:try_start_122 .. :try_end_125} :catchall_13c

    if-eqz v1, :cond_e0

    :try_start_127
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/stat/au;->f()V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_12d} :catch_12e
    .catchall {:try_start_127 .. :try_end_12d} :catchall_13

    goto :goto_e0

    :catch_12e
    move-exception v0

    :try_start_12f
    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_e0

    :catch_135
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_13b
    .catchall {:try_start_12f .. :try_end_13b} :catchall_13

    goto :goto_e0

    :catchall_13c
    move-exception v0

    if-eqz v1, :cond_145

    :try_start_13f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/stat/au;->f()V
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_145} :catch_146
    .catchall {:try_start_13f .. :try_end_145} :catchall_13

    :cond_145
    :goto_145
    :try_start_145
    throw v0

    :catch_146
    move-exception v1

    sget-object v3, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_14c
    .catchall {:try_start_145 .. :try_end_14c} :catchall_13

    goto :goto_145
.end method

.method private j()V
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "keyvalues"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_45
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    move-result-object v1

    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/tencent/stat/au;->n:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_43

    goto :goto_13

    :catch_29
    move-exception v0

    :goto_2a
    :try_start_2a
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_43

    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3b
    move-exception v0

    move-object v1, v8

    :goto_3d
    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0

    :catchall_43
    move-exception v0

    goto :goto_3d

    :catch_45
    move-exception v0

    move-object v1, v8

    goto :goto_2a
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tencent/stat/au;->a:I

    return v0
.end method

.method a(I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/bb;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/bb;-><init>(Lcom/tencent/stat/au;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;ZZ)V
    .registers 12

    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    if-eqz v0, :cond_13

    iget-object v6, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    new-instance v0, Lcom/tencent/stat/ay;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/stat/ay;-><init>(Lcom/tencent/stat/au;Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;ZZ)V

    invoke-virtual {v6, v0}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method a(Lcom/tencent/stat/f;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/az;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/az;-><init>(Lcom/tencent/stat/au;Lcom/tencent/stat/f;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method a(Ljava/util/List;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/stat/bd;",
            ">;IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    if-eqz v0, :cond_13

    iget-object v6, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    new-instance v0, Lcom/tencent/stat/av;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/stat/av;-><init>(Lcom/tencent/stat/au;Ljava/util/List;IZZ)V

    invoke-virtual {v6, v0}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method a(Ljava/util/List;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/stat/bd;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/aw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/stat/aw;-><init>(Lcom/tencent/stat/au;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lcom/tencent/stat/common/a;
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->b:Lcom/tencent/stat/common/a;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->b:Lcom/tencent/stat/common/a;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1fb

    :goto_b
    monitor-exit p0

    return-object v2

    :cond_d
    const/4 v11, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    const-string v3, "try to load user info from db."

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3a} :catch_1fe
    .catchall {:try_start_e .. :try_end_3a} :catchall_21d

    move-result-object v5

    const/4 v2, 0x0

    :try_start_3c
    const-string v3, ""

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12f

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/stat/common/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const/4 v2, 0x1

    if-eq v9, v2, :cond_254

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    invoke-static {v12, v13}, Lcom/tencent/stat/common/k;->a(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/tencent/stat/common/k;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_254

    const/4 v2, 0x1

    :goto_7e
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_251

    or-int/lit8 v2, v2, 0x2

    move v8, v2

    :goto_8b
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    if-eqz v11, :cond_1c1

    array-length v2, v11

    if-lez v2, :cond_1c1

    const/4 v2, 0x0

    aget-object v3, v11, v2

    if-eqz v3, :cond_a4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v12, 0xb

    if-ge v2, v12, :cond_249

    :cond_a4
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_245

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_245

    const/4 v3, 0x1

    :goto_b3
    move-object v4, v7

    move-object v7, v2

    :goto_b5
    if-eqz v11, :cond_1ce

    array-length v2, v11

    const/4 v12, 0x2

    if-lt v2, v12, :cond_1ce

    const/4 v2, 0x1

    aget-object v2, v11, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d5
    :goto_d5
    new-instance v11, Lcom/tencent/stat/common/a;

    invoke-direct {v11, v7, v2, v8}, Lcom/tencent/stat/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/tencent/stat/au;->b:Lcom/tencent/stat/common/a;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Lcom/tencent/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "uid"

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "app_ver"

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ts"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v3, :cond_11e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user"

    const-string v7, "uid=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v3, v4, v2, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_11e
    if-eq v8, v9, :cond_242

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v2, v6

    :cond_12f
    :goto_12f
    if-nez v2, :cond_1a0

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_158
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Lcom/tencent/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "uid"

    invoke-virtual {v10, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "app_ver"

    invoke-virtual {v10, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ts"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v7, "user"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v2, Lcom/tencent/stat/common/a;

    invoke-direct {v2, v3, v4, v6}, Lcom/tencent/stat/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/stat/au;->b:Lcom/tencent/stat/common/a;

    :cond_1a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1ab
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_1ab} :catch_23c
    .catchall {:try_start_3c .. :try_end_1ab} :catchall_237

    if-eqz v5, :cond_1b0

    :try_start_1ad
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1bb
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1bb} :catch_1f4
    .catchall {:try_start_1ad .. :try_end_1bb} :catchall_1fb

    :goto_1bb
    :try_start_1bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->b:Lcom/tencent/stat/common/a;
    :try_end_1bf
    .catchall {:try_start_1bb .. :try_end_1bf} :catchall_1fb

    goto/16 :goto_b

    :cond_1c1
    :try_start_1c1
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v7, v3

    move/from16 v18, v4

    move-object v4, v3

    move/from16 v3, v18

    goto/16 :goto_b5

    :cond_1ce
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f0
    .catch Ljava/lang/Throwable; {:try_start_1c1 .. :try_end_1f0} :catch_23c
    .catchall {:try_start_1c1 .. :try_end_1f0} :catchall_237

    move-result-object v4

    const/4 v3, 0x1

    goto/16 :goto_d5

    :catch_1f4
    move-exception v2

    :try_start_1f5
    sget-object v3, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1fa
    .catchall {:try_start_1f5 .. :try_end_1fa} :catchall_1fb

    goto :goto_1bb

    :catchall_1fb
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1fe
    move-exception v2

    move-object v3, v11

    :goto_200
    :try_start_200
    sget-object v4, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v4, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_205
    .catchall {:try_start_200 .. :try_end_205} :catchall_239

    if-eqz v3, :cond_20a

    :try_start_207
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_20a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_215
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_215} :catch_216
    .catchall {:try_start_207 .. :try_end_215} :catchall_1fb

    goto :goto_1bb

    :catch_216
    move-exception v2

    :try_start_217
    sget-object v3, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_21c
    .catchall {:try_start_217 .. :try_end_21c} :catchall_1fb

    goto :goto_1bb

    :catchall_21d
    move-exception v2

    move-object v5, v11

    :goto_21f
    if-eqz v5, :cond_224

    :try_start_221
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_22f
    .catch Ljava/lang/Throwable; {:try_start_221 .. :try_end_22f} :catch_230
    .catchall {:try_start_221 .. :try_end_22f} :catchall_1fb

    :goto_22f
    :try_start_22f
    throw v2

    :catch_230
    move-exception v3

    sget-object v4, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v4, v3}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_236
    .catchall {:try_start_22f .. :try_end_236} :catchall_1fb

    goto :goto_22f

    :catchall_237
    move-exception v2

    goto :goto_21f

    :catchall_239
    move-exception v2

    move-object v5, v3

    goto :goto_21f

    :catch_23c
    move-exception v2

    move-object v3, v5

    goto :goto_200

    :cond_23f
    move-object v2, v3

    goto/16 :goto_158

    :cond_242
    move v2, v6

    goto/16 :goto_12f

    :cond_245
    move-object v2, v3

    move v3, v4

    goto/16 :goto_b3

    :cond_249
    move-object/from16 v18, v3

    move v3, v4

    move-object v4, v7

    move-object/from16 v7, v18

    goto/16 :goto_b5

    :cond_251
    move v8, v2

    goto/16 :goto_8b

    :cond_254
    move v2, v9

    goto/16 :goto_7e
.end method

.method c()V
    .registers 3

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/tencent/stat/au;->e:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/ax;

    invoke-direct {v1, p0}, Lcom/tencent/stat/ax;-><init>(Lcom/tencent/stat/au;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_6

    :catch_12
    move-exception v0

    sget-object v1, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method d()V
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/stat/au;->c:Lcom/tencent/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_61
    .catchall {:try_start_1 .. :try_end_12} :catchall_57

    move-result-object v1

    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/tencent/stat/f;

    invoke-direct {v5, v0}, Lcom/tencent/stat/f;-><init>(I)V

    iput v0, v5, Lcom/tencent/stat/f;->a:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/tencent/stat/f;->b:Lorg/json/JSONObject;

    iput-object v3, v5, Lcom/tencent/stat/f;->c:Ljava/lang/String;

    iput v4, v5, Lcom/tencent/stat/f;->d:I

    sget-object v0, Lcom/tencent/stat/au;->i:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/tencent/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/stat/f;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_44} :catch_45
    .catchall {:try_start_13 .. :try_end_44} :catchall_5f

    goto :goto_13

    :catch_45
    move-exception v0

    :goto_46
    :try_start_46
    sget-object v2, Lcom/tencent/stat/au;->h:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_5f

    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    :goto_50
    return-void

    :cond_51
    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_50

    :catchall_57
    move-exception v0

    move-object v1, v8

    :goto_59
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v0

    :catchall_5f
    move-exception v0

    goto :goto_59

    :catch_61
    move-exception v0

    move-object v1, v8

    goto :goto_46
.end method
