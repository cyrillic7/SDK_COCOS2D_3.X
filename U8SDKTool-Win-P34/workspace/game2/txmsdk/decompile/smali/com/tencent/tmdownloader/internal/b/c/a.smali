.class public abstract Lcom/tencent/tmdownloader/internal/b/c/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method


# virtual methods
.method public a(I)Lcom/tencent/tmdownloader/internal/b/c/b;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 110
    new-instance v10, Lcom/tencent/tmdownloader/internal/b/c/b;

    invoke-direct {v10}, Lcom/tencent/tmdownloader/internal/b/c/b;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/tencent/tmdownloader/internal/b/c/b;->a:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    .line 116
    if-lez p1, :cond_97

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 119
    :goto_29
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->c()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_77

    .line 123
    :try_start_33
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_79
    .catchall {:try_start_33 .. :try_end_41} :catchall_8b

    move-result-object v1

    .line 124
    if-eqz v1, :cond_72

    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 129
    :cond_4a
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 130
    iget-object v0, v10, Lcom/tencent/tmdownloader/internal/b/c/b;->a:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v0, "logData"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 134
    iget-object v2, v10, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6f} :catch_95
    .catchall {:try_start_44 .. :try_end_6f} :catchall_93

    move-result v0

    if-nez v0, :cond_4a

    .line 144
    :cond_72
    if-eqz v1, :cond_77

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_77
    move-object v9, v10

    .line 150
    :cond_78
    :goto_78
    return-object v9

    .line 139
    :catch_79
    move-exception v0

    move-object v1, v9

    .line 140
    :goto_7b
    :try_start_7b
    const-string v2, "BaseLogTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_93

    .line 144
    if-eqz v1, :cond_78

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_78

    .line 144
    :catchall_8b
    move-exception v0

    move-object v1, v9

    :goto_8d
    if-eqz v1, :cond_92

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_92
    throw v0

    :catchall_93
    move-exception v0

    goto :goto_8d

    .line 139
    :catch_95
    move-exception v0

    goto :goto_7b

    :cond_97
    move-object v8, v9

    goto :goto_29
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 184
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 45
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->c()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_4d

    move-result-object v2

    .line 46
    if-eqz v2, :cond_46

    .line 48
    :try_start_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 52
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 53
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_2f
    .catchall {:try_start_c .. :try_end_2e} :catchall_48

    goto :goto_1b

    .line 57
    :catch_2f
    move-exception v0

    .line 58
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const-string v1, "BaseLogTable"

    const-string v3, "exception: "

    invoke-static {v1, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_48

    .line 60
    const/4 v0, 0x0

    .line 62
    :try_start_3b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4d

    .line 66
    :goto_3e
    monitor-exit p0

    return v0

    .line 56
    :cond_40
    :try_start_40
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_2f
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 62
    :try_start_43
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_46
    move v0, v1

    .line 66
    goto :goto_3e

    .line 62
    :catchall_48
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4d

    .line 45
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)Z
    .registers 6

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    const-string v1, "logData"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 34
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->c()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    const/4 v0, 0x1

    :goto_23
    monitor-exit p0

    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_23

    .line 32
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 166
    invoke-virtual {p0, p2}, Lcom/tencent/tmdownloader/internal/b/c/a;->b(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/util/List;)Z
    .registers 7

    .prologue
    .line 75
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    move-result v0

    if-gtz v0, :cond_c

    .line 76
    :cond_9
    const/4 v0, 0x0

    .line 99
    :goto_a
    monitor-exit p0

    return v0

    .line 80
    :cond_c
    :try_start_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 84
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2c

    goto :goto_17

    .line 75
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 92
    :cond_3e
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->c()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_68

    .line 96
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_2f .. :try_end_68} :catchall_2c

    .line 99
    :cond_68
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected abstract b(I)[Ljava/lang/String;
.end method

.method public c()Lcom/tencent/tmdownloader/internal/b/a/c;
    .registers 2

    .prologue
    .line 171
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method
