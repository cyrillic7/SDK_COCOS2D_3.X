.class public abstract Lcom/tencent/tmassistantsdk/internal/e/b/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantsdk/internal/e/b/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method


# virtual methods
.method public a(I)Lcom/tencent/tmassistantsdk/internal/e/b/b;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 107
    new-instance v10, Lcom/tencent/tmassistantsdk/internal/e/b/b;

    invoke-direct {v10}, Lcom/tencent/tmassistantsdk/internal/e/b/b;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/tencent/tmassistantsdk/internal/e/b/b;->a:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/tencent/tmassistantsdk/internal/e/b/b;->b:Ljava/util/List;

    .line 113
    if-lez p1, :cond_90

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    :goto_29
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->c()Lcom/tencent/tmassistantsdk/internal/e/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_77

    .line 120
    :try_start_33
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->d()Ljava/lang/String;

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
    .catchall {:try_start_33 .. :try_end_41} :catchall_84

    move-result-object v1

    .line 121
    if-eqz v1, :cond_72

    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 126
    :cond_4a
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 127
    iget-object v0, v10, Lcom/tencent/tmassistantsdk/internal/e/b/b;->a:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v0, "logData"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 131
    iget-object v2, v10, Lcom/tencent/tmassistantsdk/internal/e/b/b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6f} :catch_8e
    .catchall {:try_start_44 .. :try_end_6f} :catchall_8c

    move-result v0

    if-nez v0, :cond_4a

    .line 140
    :cond_72
    if-eqz v1, :cond_77

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_77
    move-object v9, v10

    .line 146
    :cond_78
    :goto_78
    return-object v9

    .line 136
    :catch_79
    move-exception v0

    move-object v1, v9

    .line 137
    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8c

    .line 140
    if-eqz v1, :cond_78

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_78

    .line 140
    :catchall_84
    move-exception v0

    move-object v1, v9

    :goto_86
    if-eqz v1, :cond_8b

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_8b
    throw v0

    :catchall_8c
    move-exception v0

    goto :goto_86

    .line 136
    :catch_8e
    move-exception v0

    goto :goto_7b

    :cond_90
    move-object v8, v9

    goto :goto_29
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 180
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 43
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->c()Lcom/tencent/tmassistantsdk/internal/e/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_46

    move-result-object v2

    .line 44
    if-eqz v2, :cond_3f

    .line 46
    :try_start_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 47
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 50
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 51
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_2f
    .catchall {:try_start_c .. :try_end_2e} :catchall_41

    goto :goto_1b

    .line 55
    :catch_2f
    move-exception v0

    .line 56
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_41

    .line 57
    const/4 v0, 0x0

    .line 59
    :try_start_34
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_46

    .line 63
    :goto_37
    monitor-exit p0

    return v0

    .line 54
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_2f
    .catchall {:try_start_39 .. :try_end_3c} :catchall_41

    .line 59
    :try_start_3c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3f
    move v0, v1

    .line 63
    goto :goto_37

    .line 59
    :catchall_41
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_46

    .line 43
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)Z
    .registers 6

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    const-string v1, "logData"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 32
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->c()Lcom/tencent/tmassistantsdk/internal/e/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->d()Ljava/lang/String;

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

    .line 30
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 162
    invoke-virtual {p0, p2}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->b(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/util/List;)Z
    .registers 7

    .prologue
    .line 72
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    move-result v0

    if-gtz v0, :cond_c

    .line 73
    :cond_9
    const/4 v0, 0x0

    .line 96
    :goto_a
    monitor-exit p0

    return v0

    .line 77
    :cond_c
    :try_start_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 81
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2c

    goto :goto_17

    .line 72
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3e

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 89
    :cond_3e
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->c()Lcom/tencent/tmassistantsdk/internal/e/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/e/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_68

    .line 93
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;->d()Ljava/lang/String;

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

    .line 96
    :cond_68
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected abstract b(I)[Ljava/lang/String;
.end method

.method public c()Lcom/tencent/tmassistantsdk/internal/e/a/c;
    .registers 2

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/e/a/b;->a()Lcom/tencent/tmassistantsdk/internal/e/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method
