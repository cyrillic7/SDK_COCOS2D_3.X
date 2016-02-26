.class public abstract Lcom/tencent/tmassistantsdk/internal/e/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    .prologue
    .line 118
    const-string v0, "sqliteHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tables count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->c()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->c()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v1, v3, :cond_7d

    aget-object v0, v2, v1

    .line 124
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/e/b/d;

    .line 125
    invoke-interface {v0}, Lcom/tencent/tmassistantsdk/internal/e/b/d;->b()Ljava/lang/String;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3d

    .line 129
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    :cond_3d
    const-string v5, "sqliteHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sql="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v4, "tmassistant_sdk.db"

    invoke-static {v4}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->isDBExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 135
    const-string v4, "sqliteHelper"

    const-string v5, "dataMovement"

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/e/a/a;->a()Lcom/tencent/tmassistantsdk/internal/e/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Lcom/tencent/tmassistantsdk/internal/e/b/d;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6f
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_6f} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_6f} :catch_78

    .line 119
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 140
    :catch_73
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_6f

    .line 144
    :catch_78
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6f

    .line 152
    :cond_7d
    const-string v0, "tmassistant_sdk.db"

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->deleteOldDB(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->c()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_28

    aget-object v0, v2, v1

    .line 166
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/e/b/d;

    .line 167
    invoke-interface {v0}, Lcom/tencent/tmassistantsdk/internal/e/b/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_1a} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1a} :catch_23

    .line 162
    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 169
    :catch_1e
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1a

    .line 173
    :catch_23
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1a

    .line 178
    :cond_28
    return-void
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()[Ljava/lang/Class;
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    .line 69
    monitor-enter p0

    const/4 v1, 0x0

    .line 71
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_21
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result-object v0

    .line 72
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 74
    :cond_12
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    goto :goto_6

    .line 76
    :catch_18
    move-exception v1

    .line 77
    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    .line 80
    :cond_1c
    monitor-exit p0

    return-object v0

    .line 69
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :catch_21
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_19
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    .line 47
    monitor-enter p0

    const/4 v1, 0x0

    .line 49
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_21
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result-object v0

    .line 50
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 52
    :cond_12
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    goto :goto_6

    .line 55
    :catch_18
    move-exception v1

    .line 56
    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    .line 59
    :cond_1c
    monitor-exit p0

    return-object v0

    .line 47
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :catch_21
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_19
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 92
    const-string v1, "sqliteHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dbversion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-nez v0, :cond_30

    .line 103
    :goto_2f
    return-void

    .line 96
    :cond_30
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->b()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 97
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->b()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2f

    .line 98
    :cond_3e
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->b()I

    move-result v1

    if-le v0, v1, :cond_4c

    .line 99
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->b()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2f

    .line 101
    :cond_4c
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2f
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 195
    :goto_1
    if-ge p2, p3, :cond_4a

    .line 197
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->c()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_9
    if-ge v2, v4, :cond_47

    aget-object v0, v3, v2

    .line 201
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/e/b/d;

    .line 202
    add-int/lit8 v5, p2, 0x1

    invoke-interface {v0, p2, v5}, Lcom/tencent/tmassistantsdk/internal/e/b/d;->a(II)[Ljava/lang/String;

    move-result-object v5

    .line 203
    const-string v0, "sqliteHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " upgrade:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz v5, :cond_43

    move v0, v1

    .line 206
    :goto_34
    array-length v6, v5

    if-ge v0, v6, :cond_43

    .line 208
    aget-object v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_3f

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 213
    :catch_3f
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :cond_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 195
    :cond_47
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 219
    :cond_4a
    return-void
.end method
