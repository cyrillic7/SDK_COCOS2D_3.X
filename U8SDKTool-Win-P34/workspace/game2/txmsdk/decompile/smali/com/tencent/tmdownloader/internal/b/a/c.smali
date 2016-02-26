.class public abstract Lcom/tencent/tmdownloader/internal/b/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    .prologue
    .line 121
    const-string v0, "SqliteHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tables count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->c()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->c()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v1, v3, :cond_8b

    aget-object v0, v2, v1

    .line 127
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/b/c/j;

    .line 128
    invoke-interface {v0}, Lcom/tencent/tmdownloader/internal/b/c/j;->b()Ljava/lang/String;

    move-result-object v4

    .line 130
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3d

    .line 132
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    :cond_3d
    const-string v5, "SqliteHelper"

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

    .line 137
    const-string v4, "tmassistant_sdk.db"

    invoke-static {v4}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->isDBExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 138
    const-string v4, "SqliteHelper"

    const-string v5, "dataMovement"

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/a;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Lcom/tencent/tmdownloader/internal/b/c/j;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6f
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_6f} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_6f} :catch_7f

    .line 122
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 143
    :catch_73
    move-exception v0

    .line 145
    const-string v4, "SqliteHelper"

    const-string v5, "exception: "

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_6f

    .line 148
    :catch_7f
    move-exception v0

    .line 150
    const-string v4, "SqliteHelper"

    const-string v5, "exception: "

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6f

    .line 157
    :cond_8b
    const-string v0, "tmassistant_sdk.db"

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->deleteOldDB(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->c()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_36

    aget-object v0, v2, v1

    .line 171
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/b/c/j;

    .line 172
    invoke-interface {v0}, Lcom/tencent/tmdownloader/internal/b/c/j;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_1a} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1a} :catch_2a

    .line 167
    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 174
    :catch_1e
    move-exception v0

    .line 176
    const-string v4, "SqliteHelper"

    const-string v5, "exception: "

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1a

    .line 179
    :catch_2a
    move-exception v0

    .line 181
    const-string v4, "SqliteHelper"

    const-string v5, "exception: "

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1a

    .line 185
    :cond_36
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
    .line 71
    monitor-enter p0

    const/4 v1, 0x0

    .line 73
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_28
    .catchall {:try_start_2 .. :try_end_5} :catchall_25

    move-result-object v0

    .line 74
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 76
    :cond_12
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18
    .catchall {:try_start_6 .. :try_end_17} :catchall_25

    goto :goto_6

    .line 78
    :catch_18
    move-exception v1

    .line 79
    :goto_19
    :try_start_19
    const-string v2, "SqliteHelper"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_25

    .line 83
    :cond_23
    monitor-exit p0

    return-object v0

    .line 71
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :catch_28
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_19
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    .line 48
    monitor-enter p0

    const/4 v1, 0x0

    .line 50
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_28
    .catchall {:try_start_2 .. :try_end_5} :catchall_25

    move-result-object v0

    .line 51
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 53
    :cond_12
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18
    .catchall {:try_start_6 .. :try_end_17} :catchall_25

    goto :goto_6

    .line 56
    :catch_18
    move-exception v1

    .line 57
    :goto_19
    :try_start_19
    const-string v2, "SqliteHelper"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_25

    .line 61
    :cond_23
    monitor-exit p0

    return-object v0

    .line 48
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :catch_28
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_19
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/b/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/b/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/b/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 95
    const-string v1, "SqliteHelper"

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

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-nez v0, :cond_30

    .line 106
    :goto_2f
    return-void

    .line 99
    :cond_30
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->b()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 100
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->b()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2f

    .line 101
    :cond_3e
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->b()I

    move-result v1

    if-le v0, v1, :cond_4c

    .line 102
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->b()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2f

    .line 104
    :cond_4c
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/b/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2f
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 202
    :goto_1
    if-ge p2, p3, :cond_51

    .line 204
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/a/c;->c()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_9
    if-ge v2, v4, :cond_4e

    aget-object v0, v3, v2

    .line 208
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/b/c/j;

    .line 209
    add-int/lit8 v5, p2, 0x1

    invoke-interface {v0, p2, v5}, Lcom/tencent/tmdownloader/internal/b/c/j;->a(II)[Ljava/lang/String;

    move-result-object v5

    .line 210
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

    .line 211
    if-eqz v5, :cond_4a

    move v0, v1

    .line 213
    :goto_34
    array-length v6, v5

    if-ge v0, v6, :cond_4a

    .line 215
    aget-object v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_3f

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 220
    :catch_3f
    move-exception v0

    .line 222
    const-string v5, "SqliteHelper"

    const-string v6, "exception: "

    invoke-static {v5, v6, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    :cond_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 202
    :cond_4e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 227
    :cond_51
    return-void
.end method
