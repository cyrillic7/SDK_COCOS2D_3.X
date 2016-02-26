.class public Lcom/tencent/beacon/applog/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Lcom/tencent/beacon/b/a;

.field private b:Lcom/tencent/beacon/b/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/tencent/beacon/applog/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/applog/a$1;-><init>(Lcom/tencent/beacon/applog/a;)V

    iput-object v0, p0, Lcom/tencent/beacon/applog/a;->d:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/tencent/beacon/applog/a$2;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/applog/a$2;-><init>(Lcom/tencent/beacon/applog/a;)V

    iput-object v0, p0, Lcom/tencent/beacon/applog/a;->e:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/tencent/beacon/applog/a$3;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/applog/a$3;-><init>(Lcom/tencent/beacon/applog/a;)V

    .line 64
    iput-object p1, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/tencent/beacon/b/a;

    invoke-direct {v0}, Lcom/tencent/beacon/b/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    .line 66
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/tencent/beacon/applog/a;->e:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7530

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 21
    const-string v0, " FileDAO.querySum() start"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :try_start_9
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_6a
    .catchall {:try_start_9 .. :try_end_c} :catchall_9b

    move-result-object v9

    .line 30
    :try_start_d
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_d1
    .catchall {:try_start_d .. :try_end_10} :catchall_c1

    move-result-object v0

    .line 31
    :try_start_11
    const-string v1, "t_file"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*) as sum"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_23} :catch_d5
    .catchall {:try_start_11 .. :try_end_23} :catchall_c4

    move-result-object v2

    .line 34
    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    const-string v1, "sum"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " query sum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_46} :catch_dc
    .catchall {:try_start_24 .. :try_end_46} :catchall_c9

    .line 41
    if-eqz v2, :cond_51

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_51

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_51
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 45
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 47
    :cond_5c
    if-eqz v9, :cond_61

    .line 48
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 50
    :cond_61
    const-string v0, " FileDAO.querySum() end"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 52
    :goto_69
    return v0

    .line 37
    :catch_6a
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 38
    :goto_6d
    :try_start_6d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_cd

    .line 39
    const/4 v0, -0x1

    .line 41
    if-eqz v1, :cond_83

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_83

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_83
    if-eqz v8, :cond_8e

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 45
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 47
    :cond_8e
    if-eqz v2, :cond_93

    .line 48
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 50
    :cond_93
    const-string v1, " FileDAO.querySum() end"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_69

    .line 41
    :catchall_9b
    move-exception v0

    move-object v2, v8

    move-object v9, v8

    :goto_9e
    if-eqz v2, :cond_a9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_a9
    if-eqz v8, :cond_b4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 45
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 47
    :cond_b4
    if-eqz v9, :cond_b9

    .line 48
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 50
    :cond_b9
    const-string v1, " FileDAO.querySum() end"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 41
    :catchall_c1
    move-exception v0

    move-object v2, v8

    goto :goto_9e

    :catchall_c4
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_9e

    :catchall_c9
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_9e

    :catchall_cd
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    goto :goto_9e

    .line 37
    :catch_d1
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    goto :goto_6d

    :catch_d5
    move-exception v1

    move-object v2, v9

    move-object v11, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_6d

    :catch_dc
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_6d
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/b/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 270
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 272
    :cond_10
    const-string v3, "rqdp{  FileDAO.insert, context == null || fileList == null || fileList.size() , pls check! fileList }%s "

    new-array v4, v5, [Ljava/lang/Object;

    if-nez p1, :cond_1e

    const-string v0, "null"

    :goto_18
    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :goto_1d
    return v1

    .line 272
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 277
    :cond_30
    const-string v0, "rqdp{  FileDAO.insert() start num:}%d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :try_start_41
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_e2
    .catchall {:try_start_41 .. :try_end_44} :catchall_11e

    move-result-object v4

    .line 285
    :try_start_45
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 286
    if-nez v3, :cond_79

    .line 288
    const-string v0, "rqdp{  getWritableDatabase fail, insert fail and return!}"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    const-string v0, "rqdp{  Error:insertFile getWritableDatabase fail!}"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_5b} :catch_144
    .catchall {:try_start_45 .. :try_end_5b} :catchall_13f

    .line 290
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 316
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 319
    :cond_66
    if-eqz v4, :cond_6b

    .line 321
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 324
    :cond_6b
    const-string v0, "rqdp{  FileDAO.insert() end success }%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 293
    :cond_79
    :try_start_79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_144
    .catchall {:try_start_79 .. :try_end_7c} :catchall_13f

    move-result-object v7

    move v1, v2

    :goto_7e
    :try_start_7e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/b/a;

    .line 295
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->d(Lcom/tencent/beacon/b/a;)Landroid/content/ContentValues;

    move-result-object v6

    .line 296
    if-eqz v6, :cond_bc

    .line 298
    const-string v8, "t_file"

    const-string v9, "_id"

    invoke-virtual {v3, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 299
    invoke-virtual {v0, v8, v9}, Lcom/tencent/beacon/b/a;->a(J)V

    .line 300
    cmp-long v6, v8, v12

    if-ltz v6, :cond_bf

    move v6, v5

    :goto_a0
    add-int/2addr v1, v6

    .line 301
    const-string v6, "rqdp{  insertFile name:}%s rqdp{  result:}%b"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    cmp-long v0, v8, v12

    if-ltz v0, :cond_c1

    move v0, v5

    :goto_b3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-static {v6, v10}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_bc} :catch_147
    .catchall {:try_start_7e .. :try_end_bc} :catchall_142

    :cond_bc
    move v0, v1

    move v1, v0

    .line 303
    goto :goto_7e

    :cond_bf
    move v6, v2

    .line 300
    goto :goto_a0

    :cond_c1
    move v0, v2

    .line 301
    goto :goto_b3

    .line 314
    :cond_c3
    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 316
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 319
    :cond_ce
    if-eqz v4, :cond_d3

    .line 321
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 324
    :cond_d3
    const-string v0, "rqdp{  FileDAO.insert() end success }%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 305
    :catch_e2
    move-exception v0

    move v1, v2

    move-object v4, v3

    .line 307
    :goto_e5
    :try_start_e5
    const-string v6, "rqdp{  Error in FileDAO insert!}"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-string v6, "rqdp{  Error:insertFile }%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ff
    .catchall {:try_start_e5 .. :try_end_ff} :catchall_142

    .line 314
    if-eqz v3, :cond_10a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 316
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 319
    :cond_10a
    if-eqz v4, :cond_10f

    .line 321
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 324
    :cond_10f
    const-string v0, "rqdp{  FileDAO.insert() end success }%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 314
    :catchall_11e
    move-exception v0

    move v1, v2

    move-object v4, v3

    :goto_121
    if-eqz v3, :cond_12c

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_12c

    .line 316
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 319
    :cond_12c
    if-eqz v4, :cond_131

    .line 321
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 324
    :cond_131
    const-string v3, "rqdp{  FileDAO.insert() end success }%d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 314
    :catchall_13f
    move-exception v0

    move v1, v2

    goto :goto_121

    :catchall_142
    move-exception v0

    goto :goto_121

    .line 305
    :catch_144
    move-exception v0

    move v1, v2

    goto :goto_e5

    :catch_147
    move-exception v0

    goto :goto_e5
.end method

.method public static a(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I
    .registers 13

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 16
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p1

    if-gtz v1, :cond_b

    :cond_9
    move v3, v0

    .line 40
    :cond_a
    :goto_a
    return v3

    .line 20
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    array-length v9, p1

    move v7, v3

    :goto_13
    if-ge v7, v9, :cond_33

    aget-object v10, p1, v7

    .line 23
    invoke-static {v10}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/Object;)[B

    move-result-object v6

    .line 24
    if-eqz v6, :cond_2f

    .line 25
    new-instance v1, Lcom/tencent/beacon/a/a/a;

    const/4 v2, 0x6

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/a/a/a;-><init>(IIJ[B)V

    .line 29
    invoke-virtual {v10}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/beacon/a/a/a;->a(J)Lcom/tencent/beacon/a/a/a;

    .line 30
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2f
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_13

    .line 33
    :cond_33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 34
    invoke-static {p0, v8}, Lcom/tencent/beacon/a/a/a;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_a

    :cond_44
    move v3, v0

    .line 37
    goto :goto_a
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/Long;)I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 333
    const-string v0, " RecordDAO.deleteRecordList() start"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    if-nez p0, :cond_13

    .line 337
    const-string v0, " deleteRecordList() have null args!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    const/4 v0, -0x1

    .line 342
    :goto_12
    return v0

    .line 341
    :cond_13
    const-string v0, " RecordDAO.deleteRecordList() end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {p0, p1}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;I)Lcom/tencent/beacon/a/b/h;
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 144
    if-nez p0, :cond_d

    .line 145
    const-string v0, "context == null}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 182
    :cond_c
    :goto_c
    return-object v0

    .line 154
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_d5
    .catchall {:try_start_d .. :try_end_10} :catchall_fa

    move-result-object v9

    .line 155
    :try_start_11
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_12b
    .catchall {:try_start_11 .. :try_end_14} :catchall_119

    move-result-object v0

    .line 156
    if-nez v0, :cond_31

    .line 157
    :try_start_17
    const-string v1, "getWritableDatabase fail! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1f} :catch_131
    .catchall {:try_start_17 .. :try_end_1f} :catchall_11c

    .line 158
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 178
    :cond_2a
    if-eqz v9, :cond_2f

    .line 179
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    :cond_2f
    move-object v0, v8

    goto :goto_c

    .line 161
    :cond_31
    :try_start_31
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " %s = %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_key"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v1, "t_strategy"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_54} :catch_131
    .catchall {:try_start_31 .. :try_end_54} :catchall_11c

    move-result-object v2

    .line 163
    if-eqz v2, :cond_147

    .line 164
    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_147

    if-eqz v2, :cond_6b

    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_68} :catch_136
    .catchall {:try_start_57 .. :try_end_68} :catchall_121

    move-result v1

    if-eqz v1, :cond_9f

    :cond_6b
    :goto_6b
    if-eqz v8, :cond_80

    .line 166
    :try_start_6d
    const-string v1, "read strategy key: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/h;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_80} :catch_13d
    .catchall {:try_start_6d .. :try_end_80} :catchall_121

    :cond_80
    move-object v1, v8

    .line 172
    :goto_81
    if-eqz v2, :cond_8c

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8c

    .line 173
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_8c
    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 178
    :cond_97
    if-eqz v9, :cond_144

    .line 179
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    move-object v0, v1

    goto/16 :goto_c

    .line 164
    :cond_9f
    :try_start_9f
    const-string v1, "parse bean}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/beacon/a/b/h;

    invoke-direct {v1}, Lcom/tencent/beacon/a/b/h;-><init>()V

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/beacon/a/b/h;->a(J)V

    const-string v3, "_key"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/beacon/a/b/h;->a(I)V

    const-string v3, "_datas"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/beacon/a/b/h;->a([B)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_d3} :catch_136
    .catchall {:try_start_9f .. :try_end_d3} :catchall_121

    move-object v8, v1

    goto :goto_6b

    .line 169
    :catch_d5
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v8

    move-object v0, v8

    .line 170
    :goto_da
    :try_start_da
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_125

    .line 172
    if-eqz v8, :cond_e8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e8

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_e8
    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 176
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 178
    :cond_f3
    if-eqz v3, :cond_c

    .line 179
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    goto/16 :goto_c

    .line 172
    :catchall_fa
    move-exception v0

    move-object v2, v8

    move-object v9, v8

    :goto_fd
    if-eqz v2, :cond_108

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_108

    .line 173
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_108
    if-eqz v8, :cond_113

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 176
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 178
    :cond_113
    if-eqz v9, :cond_118

    .line 179
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    :cond_118
    throw v0

    .line 172
    :catchall_119
    move-exception v0

    move-object v2, v8

    goto :goto_fd

    :catchall_11c
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_fd

    :catchall_121
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_fd

    :catchall_125
    move-exception v0

    move-object v9, v3

    move-object v10, v2

    move-object v2, v8

    move-object v8, v10

    goto :goto_fd

    .line 169
    :catch_12b
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    move-object v0, v8

    goto :goto_da

    :catch_131
    move-exception v1

    move-object v2, v0

    move-object v3, v9

    move-object v0, v8

    goto :goto_da

    :catch_136
    move-exception v1

    move-object v3, v9

    move-object v10, v2

    move-object v2, v0

    move-object v0, v8

    move-object v8, v10

    goto :goto_da

    :catch_13d
    move-exception v1

    move-object v3, v9

    move-object v10, v2

    move-object v2, v0

    move-object v0, v8

    move-object v8, v10

    goto :goto_da

    :cond_144
    move-object v0, v1

    goto/16 :goto_c

    :cond_147
    move-object v1, v8

    goto/16 :goto_81
.end method

.method protected static a(Landroid/database/Cursor;)Lcom/tencent/beacon/b/a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 470
    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    move-object v0, v1

    .line 497
    :goto_11
    return-object v0

    .line 475
    :cond_12
    new-instance v0, Lcom/tencent/beacon/b/a;

    invoke-direct {v0}, Lcom/tencent/beacon/b/a;-><init>()V

    .line 479
    :try_start_17
    const-string v2, "_n"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/String;)V

    .line 480
    const-string v2, "_sa"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/b/a;->b(Ljava/lang/String;)V

    .line 481
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/b/a;->a(J)V

    .line 482
    const-string v2, "_t"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/b/a;->a(I)V

    .line 483
    const-string v2, "_sz"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/b/a;->c(J)V

    .line 484
    const-string v2, "_ut"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/b/a;->b(J)V

    .line 485
    const-string v2, "_ac"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/b/a;->c(Ljava/lang/String;)V

    .line 486
    const-string v2, "_p"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/b/a;->d(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_80} :catch_81

    goto :goto_11

    .line 488
    :catch_81
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 491
    const-string v0, "rqdp{  Error:getFileBean fail!}"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    const-string v0, "rqdp{  Error: getFileBean fail!}"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 494
    goto/16 :goto_11
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x2800

    const/16 v9, 0x400

    const/16 v8, 0x40

    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 84
    const-string v0, "map 2 str"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    if-nez p0, :cond_15

    .line 87
    const-string v0, ""

    .line 151
    :goto_14
    return-object v0

    .line 93
    :cond_15
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 95
    if-nez v0, :cond_1e

    .line 96
    const-string v0, ""

    goto :goto_14

    .line 97
    :cond_1e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 98
    const/16 v2, 0x32

    if-le v1, v2, :cond_2d

    .line 99
    const-string v1, "The Map<String, String> params size is more than 50, effective size is <= 50!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_2d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_36
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 107
    if-lez v4, :cond_d2

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 110
    if-le v4, v8, :cond_5c

    .line 111
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_5c
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v4, "|"

    const-string v5, "%7C"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "&"

    const-string v5, "%26"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "="

    const-string v5, "%3D"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    if-eqz v0, :cond_36

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_a9

    .line 130
    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_a9
    :goto_a9
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v4, "%7C"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v4, "%26"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v4, "%3D"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_36

    .line 114
    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "The Map<String, String> params key is invalid!! key should be ASCII code in 32-126! key:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 141
    :cond_e8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_a9

    .line 142
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    .line 149
    :cond_f3
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_14
.end method

.method private static a(Landroid/content/Context;J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p0, :cond_c

    .line 68
    const-string v0, "rqdp{  FileDAO.query , context == null || numLimit == 0 , pls check! num:}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    .line 144
    :goto_b
    return-object v0

    .line 72
    :cond_c
    const/4 v2, 0x0

    .line 73
    const/4 v1, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v9, 0x0

    .line 78
    :try_start_10
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_1df
    .catchall {:try_start_10 .. :try_end_13} :catchall_183

    move-result-object v11

    .line 79
    :try_start_14
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1e6
    .catchall {:try_start_14 .. :try_end_17} :catchall_1ca

    move-result-object v0

    .line 80
    if-nez v0, :cond_5c

    .line 82
    :try_start_1a
    const-string v1, "rqdp{  getWritableDatabase fail, insert fail and return!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-string v1, "rqdp{  Error:queryFile getWritableDatabase fail!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2a} :catch_1ed
    .catchall {:try_start_1a .. :try_end_2a} :catchall_1cf

    .line 84
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_35
    if-eqz v11, :cond_3a

    .line 136
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 139
    :cond_3a
    const-string v0, "rqdp{  FileDAO.query() end success} %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v0, "rqdp{  queryFile result num } %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_b

    .line 87
    :cond_5c
    :try_start_5c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_89

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_76

    .line 94
    const-string v4, " and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_76
    const-string v4, "_ut"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v4, " < \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 99
    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_89
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_139

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    :goto_93
    const-string v1, "t_file"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_9e} :catch_1ed
    .catchall {:try_start_5c .. :try_end_9e} :catchall_1cf

    move-result-object v2

    .line 105
    if-eqz v2, :cond_1fc

    .line 107
    :try_start_a1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a6} :catch_1f5
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_1d1

    .line 109
    :goto_a6
    :try_start_a6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-static {v2}, Lcom/tencent/beacon/applog/a;->a(Landroid/database/Cursor;)Lcom/tencent/beacon/b/a;

    move-result-object v1

    if-eqz v1, :cond_13c

    .line 111
    const-string v4, "rqdp{  queryFile: n:}%s rqdp{  , sha:}%s rqdp{  , tp:}%d rqdp{  ,arh:}%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->g()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_dd} :catch_de
    .catchall {:try_start_a6 .. :try_end_dd} :catchall_1d4

    goto :goto_a6

    .line 116
    :catch_de
    move-exception v1

    move-object v4, v11

    move-object v12, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v12

    .line 118
    :goto_e4
    :try_start_e4
    const-string v5, "rqdp{  Error in FileDAO.query() fail!}"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const-string v5, "rqdp{  Error:queryFile getWritableDatabase fail!}"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f7
    .catchall {:try_start_e4 .. :try_end_f7} :catchall_1d8

    .line 124
    if-eqz v2, :cond_102

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_102

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_102
    if-eqz v3, :cond_10d

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 131
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_10d
    if-eqz v4, :cond_112

    .line 136
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 139
    :cond_112
    if-eqz v1, :cond_181

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    :goto_118
    const-string v2, "rqdp{  FileDAO.query() end success} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v2, "rqdp{  queryFile result num } %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 143
    goto/16 :goto_b

    .line 103
    :cond_139
    const/4 v3, 0x0

    goto/16 :goto_93

    :cond_13c
    move-object v1, v3

    .line 124
    :goto_13d
    if-eqz v2, :cond_148

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_148

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_148
    if-eqz v0, :cond_153

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_153

    .line 131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_153
    if-eqz v11, :cond_158

    .line 136
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 139
    :cond_158
    if-eqz v1, :cond_17f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    :goto_15e
    const-string v2, "rqdp{  FileDAO.query() end success} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v2, "rqdp{  queryFile result num } %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 143
    goto/16 :goto_b

    .line 139
    :cond_17f
    const/4 v0, -0x1

    goto :goto_15e

    :cond_181
    const/4 v0, -0x1

    goto :goto_118

    .line 124
    :catchall_183
    move-exception v0

    move-object v11, v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_188
    if-eqz v9, :cond_193

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_193

    .line 126
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_193
    if-eqz v0, :cond_19e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_19e
    if-eqz v11, :cond_1a3

    .line 136
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 139
    :cond_1a3
    if-eqz v10, :cond_1c8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    :goto_1a9
    const-string v2, "rqdp{  FileDAO.query() end success} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v2, "rqdp{  queryFile result num } %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    throw v1

    .line 139
    :cond_1c8
    const/4 v0, -0x1

    goto :goto_1a9

    .line 124
    :catchall_1ca
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_188

    :catchall_1cf
    move-exception v1

    goto :goto_188

    :catchall_1d1
    move-exception v1

    move-object v9, v2

    goto :goto_188

    :catchall_1d4
    move-exception v1

    move-object v9, v2

    move-object v10, v3

    goto :goto_188

    :catchall_1d8
    move-exception v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v4

    move-object v1, v0

    move-object v0, v3

    goto :goto_188

    .line 116
    :catch_1df
    move-exception v0

    move-object v3, v1

    move-object v4, v2

    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_e4

    :catch_1e6
    move-exception v0

    move-object v2, v9

    move-object v3, v1

    move-object v4, v11

    move-object v1, v10

    goto/16 :goto_e4

    :catch_1ed
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    move-object v4, v11

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_e4

    :catch_1f5
    move-exception v1

    move-object v3, v0

    move-object v4, v11

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_e4

    :cond_1fc
    move-object v1, v10

    goto/16 :goto_13d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p0, :cond_4

    if-nez p3, :cond_15

    .line 159
    :cond_4
    const-string v1, "rqdp{  FileDAO.query , context == null || numLimit == 0 , pls check! num:}%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v1, 0x0

    .line 246
    :goto_14
    return-object v1

    .line 162
    :cond_15
    const-string v1, "rqdp{  FileDAO.query() start query name:}%s rqdp{   , type}:%d rqdp{  , num:}%d "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "any"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v2, 0x0

    .line 165
    const/4 v11, 0x0

    .line 166
    const/4 v10, 0x0

    .line 169
    :try_start_35
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_1ef
    .catchall {:try_start_35 .. :try_end_38} :catchall_193

    move-result-object v12

    .line 170
    :try_start_39
    invoke-virtual {v12}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_1f6
    .catchall {:try_start_39 .. :try_end_3c} :catchall_1db

    move-result-object v1

    .line 171
    if-nez v1, :cond_81

    .line 173
    :try_start_3f
    const-string v2, "rqdp{  getWritableDatabase fail, insert fail and return!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v2, "rqdp{  Error:queryFile getWritableDatabase fail!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_4f} :catch_1fd
    .catchall {:try_start_3f .. :try_end_4f} :catchall_1e1

    .line 175
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 233
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_5a
    if-eqz v12, :cond_5f

    .line 238
    invoke-virtual {v12}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 241
    :cond_5f
    const-string v1, "rqdp{  FileDAO.query() end success} %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v1, "rqdp{  queryFile result num } %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const/4 v1, 0x0

    goto :goto_14

    .line 178
    :cond_81
    :try_start_81
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_146

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    :goto_90
    const-string v2, "t_file"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-lez p3, :cond_149

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_a8
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_ab} :catch_1fd
    .catchall {:try_start_81 .. :try_end_ab} :catchall_1e1

    move-result-object v3

    .line 207
    if-eqz v3, :cond_20c

    .line 209
    :try_start_ae
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_205
    .catchall {:try_start_ae .. :try_end_b3} :catchall_1e4

    .line 211
    :goto_b3
    :try_start_b3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14c

    invoke-static {v3}, Lcom/tencent/beacon/applog/a;->a(Landroid/database/Cursor;)Lcom/tencent/beacon/b/a;

    move-result-object v2

    if-eqz v2, :cond_14c

    .line 213
    const-string v5, "rqdp{  queryFile: n:}%s rqdp{  , sha:}%s rqdp{  , tp:}%d rqdp{  ,arh:}%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/tencent/beacon/b/a;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/tencent/beacon/b/a;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Lcom/tencent/beacon/b/a;->f()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Lcom/tencent/beacon/b/a;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_ea} :catch_eb
    .catchall {:try_start_b3 .. :try_end_ea} :catchall_1e6

    goto :goto_b3

    .line 218
    :catch_eb
    move-exception v2

    move-object v5, v12

    move-object v13, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v13

    .line 220
    :goto_f1
    :try_start_f1
    const-string v6, "rqdp{  Error in FileDAO.query() fail!}"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const-string v6, "rqdp{  Error:queryFile getWritableDatabase fail!}"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_104
    .catchall {:try_start_f1 .. :try_end_104} :catchall_1e9

    .line 226
    if-eqz v3, :cond_10f

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_10f

    .line 228
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_10f
    if-eqz v4, :cond_11a

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 233
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_11a
    if-eqz v5, :cond_11f

    .line 238
    invoke-virtual {v5}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 241
    :cond_11f
    if-eqz v2, :cond_191

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    :goto_125
    const-string v3, "rqdp{  FileDAO.query() end success} %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v3, "rqdp{  queryFile result num } %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 245
    goto/16 :goto_14

    .line 181
    :cond_146
    const/4 v4, 0x0

    goto/16 :goto_90

    .line 206
    :cond_149
    const/4 v9, 0x0

    goto/16 :goto_a8

    :cond_14c
    move-object v2, v4

    .line 226
    :goto_14d
    if-eqz v3, :cond_158

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_158

    .line 228
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_158
    if-eqz v1, :cond_163

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 233
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_163
    if-eqz v12, :cond_168

    .line 238
    invoke-virtual {v12}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 241
    :cond_168
    if-eqz v2, :cond_18f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    :goto_16e
    const-string v3, "rqdp{  FileDAO.query() end success} %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v3, "rqdp{  queryFile result num } %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 245
    goto/16 :goto_14

    .line 241
    :cond_18f
    const/4 v1, -0x1

    goto :goto_16e

    :cond_191
    const/4 v1, -0x1

    goto :goto_125

    .line 226
    :catchall_193
    move-exception v1

    move-object v12, v3

    move-object v3, v10

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_199
    if-eqz v3, :cond_1a4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1a4

    .line 228
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_1a4
    if-eqz v1, :cond_1af

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 233
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_1af
    if-eqz v12, :cond_1b4

    .line 238
    invoke-virtual {v12}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 241
    :cond_1b4
    if-eqz v11, :cond_1d9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    :goto_1ba
    const-string v3, "rqdp{  FileDAO.query() end success} %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v3, "rqdp{  queryFile result num } %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    throw v2

    .line 241
    :cond_1d9
    const/4 v1, -0x1

    goto :goto_1ba

    .line 226
    :catchall_1db
    move-exception v1

    move-object v3, v10

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto :goto_199

    :catchall_1e1
    move-exception v2

    move-object v3, v10

    goto :goto_199

    :catchall_1e4
    move-exception v2

    goto :goto_199

    :catchall_1e6
    move-exception v2

    move-object v11, v4

    goto :goto_199

    :catchall_1e9
    move-exception v1

    move-object v11, v2

    move-object v12, v5

    move-object v2, v1

    move-object v1, v4

    goto :goto_199

    .line 218
    :catch_1ef
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v10

    move-object v2, v11

    goto/16 :goto_f1

    :catch_1f6
    move-exception v1

    move-object v3, v10

    move-object v4, v2

    move-object v5, v12

    move-object v2, v11

    goto/16 :goto_f1

    :catch_1fd
    move-exception v2

    move-object v3, v10

    move-object v4, v1

    move-object v5, v12

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_f1

    :catch_205
    move-exception v2

    move-object v4, v1

    move-object v5, v12

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_f1

    :cond_20c
    move-object v2, v11

    goto/16 :goto_14d
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 16
    const-string v0, " AppUseListDAO.queryAppUseData() start"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    if-nez p0, :cond_15

    .line 18
    const-string v0, " AppUseListDAO.queryAppUseData() context null "

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 58
    :goto_14
    return-object v0

    .line 26
    :cond_15
    :try_start_15
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_10e
    .catchall {:try_start_15 .. :try_end_18} :catchall_dc

    move-result-object v9

    .line 27
    :try_start_19
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_114
    .catchall {:try_start_19 .. :try_end_1c} :catchall_102

    move-result-object v0

    .line 29
    :try_start_1d
    const-string v3, "_is_uped = 0 "

    .line 32
    const-string v1, "t_app_use"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_11a
    .catchall {:try_start_1d .. :try_end_29} :catchall_105

    move-result-object v2

    .line 33
    :try_start_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_120
    .catchall {:try_start_2a .. :try_end_2f} :catchall_10a

    .line 34
    :goto_2f
    :try_start_2f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 35
    new-instance v4, Lcom/tencent/beacon/a/a/b;

    invoke-direct {v4}, Lcom/tencent/beacon/a/a/b;-><init>()V

    .line 36
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v4, Lcom/tencent/beacon/a/a/b;->a:J

    .line 37
    const-string v3, "_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    .line 38
    const-string v3, "_pid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcom/tencent/beacon/a/a/b;->c:I

    .line 39
    const-string v3, "_is_sys"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v10, :cond_9c

    move v3, v10

    :goto_6c
    iput-boolean v3, v4, Lcom/tencent/beacon/a/a/b;->d:Z

    .line 40
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_71} :catch_72
    .catchall {:try_start_2f .. :try_end_71} :catchall_10a

    goto :goto_2f

    .line 45
    :catch_72
    move-exception v3

    move-object v8, v2

    move-object v2, v9

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 47
    :goto_78
    if-eqz v8, :cond_83

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_83

    .line 48
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_83
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    :cond_8e
    if-eqz v2, :cond_93

    .line 54
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 56
    :cond_93
    const-string v1, " AppUseListDAO.queryAppUseData() end"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_9c
    move v3, v11

    .line 39
    goto :goto_6c

    .line 42
    :cond_9e
    :try_start_9e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryAppUseData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b7} :catch_72
    .catchall {:try_start_9e .. :try_end_b7} :catchall_10a

    .line 47
    if-eqz v2, :cond_c2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c2

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_c2
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    :cond_cd
    if-eqz v9, :cond_d2

    .line 54
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 56
    :cond_d2
    const-string v0, " AppUseListDAO.queryAppUseData() end"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 57
    goto/16 :goto_14

    .line 47
    :catchall_dc
    move-exception v0

    move-object v2, v8

    move-object v9, v8

    :goto_df
    if-eqz v2, :cond_ea

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ea

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_ea
    if-eqz v8, :cond_f5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 51
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    :cond_f5
    if-eqz v9, :cond_fa

    .line 54
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 56
    :cond_fa
    const-string v1, " AppUseListDAO.queryAppUseData() end"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 47
    :catchall_102
    move-exception v0

    move-object v2, v8

    goto :goto_df

    :catchall_105
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_df

    :catchall_10a
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_df

    .line 45
    :catch_10e
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    move-object v2, v8

    goto/16 :goto_78

    :catch_114
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    move-object v2, v9

    goto/16 :goto_78

    :catch_11a
    move-exception v1

    move-object v1, v0

    move-object v2, v9

    move-object v0, v8

    goto/16 :goto_78

    :catch_120
    move-exception v1

    move-object v1, v0

    move-object v0, v8

    move-object v8, v2

    move-object v2, v9

    goto/16 :goto_78
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;I)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-string v0, " RecordDAO.queryRecentRecord() start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    if-nez p0, :cond_14

    .line 169
    const-string v0, " queryRecentRecord() have null args!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const/4 v0, 0x0

    .line 251
    :goto_13
    return-object v0

    .line 175
    :cond_14
    const/4 v0, 0x4

    new-array v2, v0, [I

    fill-array-data v2, :array_d0

    .line 184
    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v12, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    move-object v1, p0

    move/from16 v5, p2

    invoke-static/range {v1 .. v13}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IIIIIIIIJJ)Ljava/util/List;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_33

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_35

    .line 209
    :cond_33
    const/4 v0, 0x0

    goto :goto_13

    .line 211
    :cond_35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 215
    :cond_3e
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 217
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/beacon/a/a/a;

    .line 219
    :try_start_4b
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_3e

    const-class v5, Lcom/tencent/beacon/event/k;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 222
    const-class v5, Lcom/tencent/beacon/event/k;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/event/k;

    .line 223
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/tencent/beacon/event/k;->a(J)V

    .line 224
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_72} :catch_73

    goto :goto_3e

    .line 230
    :catch_73
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    const-string v0, " query have error!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    .line 236
    :cond_80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " there are error datas ,should be remove "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Long;

    .line 243
    const/4 v0, 0x0

    move v1, v0

    :goto_a7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c1

    .line 244
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a7

    .line 247
    :cond_c1
    invoke-static {p0, v4}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 249
    :cond_c4
    const-string v0, " RecordDAO.queryRecentRecord() end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 251
    goto/16 :goto_13

    .line 175
    nop

    :array_d0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    .line 42
    :cond_4
    const-string v0, " err addVMap, pls check!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_c
    return-void

    .line 46
    :cond_d
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/beacon/a/b/h;)Z
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    if-eqz p0, :cond_9

    if-nez p1, :cond_11

    .line 78
    :cond_9
    const-string v1, "context == null || bean == null}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_10
    :goto_10
    return v0

    .line 86
    :cond_11
    :try_start_11
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_c9
    .catchall {:try_start_11 .. :try_end_18} :catchall_b9

    move-result-object v2

    .line 88
    if-nez v2, :cond_2f

    .line 89
    :try_start_1b
    const-string v1, "get db fail!,return false "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_23} :catch_84
    .catchall {:try_start_1b .. :try_end_23} :catchall_c7

    .line 90
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 109
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_10

    .line 92
    :cond_2f
    if-nez p1, :cond_53

    .line 93
    :goto_31
    if-eqz v3, :cond_47

    .line 94
    :try_start_33
    const-string v4, "t_strategy"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 97
    cmp-long v3, v4, v8

    if-gez v3, :cond_a1

    .line 98
    const-string v1, "insert failure! return false "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_47} :catch_84
    .catchall {:try_start_33 .. :try_end_47} :catchall_c7

    .line 108
    :cond_47
    :goto_47
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 109
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_10

    .line 92
    :cond_53
    :try_start_53
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/h;->a()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-ltz v4, :cond_6d

    const-string v4, "_id"

    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/h;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6d
    const-string v4, "_key"

    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/h;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_datas"

    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/h;->c()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_83} :catch_84
    .catchall {:try_start_53 .. :try_end_83} :catchall_c7

    goto :goto_31

    .line 105
    :catch_84
    move-exception v1

    .line 106
    :goto_85
    :try_start_85
    const-string v3, "Error strategy update!  %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_c7

    .line 108
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 109
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_10

    .line 100
    :cond_a1
    :try_start_a1
    invoke-virtual {p1, v4, v5}, Lcom/tencent/beacon/a/b/h;->a(J)V

    .line 101
    const-string v3, "update strategy  %d true "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/beacon/a/b/h;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_b7} :catch_84
    .catchall {:try_start_a1 .. :try_end_b7} :catchall_c7

    move v0, v1

    .line 102
    goto :goto_47

    .line 108
    :catchall_b9
    move-exception v0

    move-object v2, v3

    :goto_bb
    if-eqz v2, :cond_c6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 109
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c6
    throw v0

    .line 108
    :catchall_c7
    move-exception v0

    goto :goto_bb

    .line 105
    :catch_c9
    move-exception v1

    move-object v2, v3

    goto :goto_85
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/beacon/event/k;)Z
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 38
    const-string v1, " RecordDAO.insert() start"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 41
    :cond_13
    const-string v1, " insert() have null args!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_1a
    return v0

    .line 45
    :cond_1b
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 50
    const/4 v2, 0x1

    .line 72
    :goto_28
    :try_start_28
    new-instance v1, Lcom/tencent/beacon/a/a/a;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v4

    invoke-static {p1}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/a/a/a;-><init>(IIJ[B)V

    .line 74
    if-eqz p0, :cond_39

    if-nez v1, :cond_89

    :cond_39
    const-string v2, "AnalyticsDAO.insert() have null args"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 75
    :goto_42
    if-eqz v2, :cond_4b

    .line 77
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/tencent/beacon/event/k;->a(J)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_4b} :catch_96
    .catchall {:try_start_28 .. :try_end_4b} :catchall_ab

    .line 86
    :cond_4b
    const-string v1, " RecordDAO.insert() end"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_1a

    .line 53
    :cond_54
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 55
    const/4 v2, 0x2

    move v3, v0

    .line 56
    goto :goto_28

    .line 58
    :cond_63
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    move v2, v3

    move v3, v0

    .line 61
    goto :goto_28

    .line 62
    :cond_72
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 64
    const/4 v2, 0x4

    move v3, v0

    .line 65
    goto :goto_28

    .line 67
    :cond_81
    const-string v1, " bean\'s type is error!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 74
    :cond_89
    :try_start_89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_94} :catch_96
    .catchall {:try_start_89 .. :try_end_94} :catchall_ab

    move-result v2

    goto :goto_42

    .line 81
    :catch_96
    move-exception v1

    .line 82
    :try_start_97
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    const-string v1, " insert error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_ab

    .line 84
    const-string v1, " RecordDAO.insert() end"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1a

    :catchall_ab
    move-exception v1

    const-string v2, " RecordDAO.insert() end"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/b;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    const-string v3, " insertAppUseData start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    move v0, v2

    .line 95
    :goto_15
    return v0

    .line 70
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_df
    .catchall {:try_start_16 .. :try_end_19} :catchall_b4

    move-result-object v4

    .line 71
    :try_start_1a
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_e2
    .catchall {:try_start_1a .. :try_end_1d} :catchall_d3

    move-result-object v3

    .line 72
    :try_start_1e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/b;

    .line 74
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v7, "_name"

    iget-object v8, v0, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v7, "_pid"

    iget v8, v0, Lcom/tencent/beacon/a/a/b;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v7, "_is_sys"

    iget-boolean v0, v0, Lcom/tencent/beacon/a/a/b;->d:Z

    if-eqz v0, :cond_90

    move v0, v1

    :goto_4f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v7, "_is_uped"

    if-eqz p2, :cond_92

    move v0, v1

    :goto_5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v0, "t_app_use"

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_68} :catch_69
    .catchall {:try_start_1e .. :try_end_68} :catchall_d7

    goto :goto_25

    .line 83
    :catch_69
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    .line 84
    :goto_6c
    :try_start_6c
    const-string v3, "insertAppUseData failure!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_d9

    .line 86
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    :cond_82
    if-eqz v1, :cond_87

    .line 91
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 93
    :cond_87
    const-string v0, "insertAppUseData end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 94
    goto :goto_15

    :cond_90
    move v0, v2

    .line 77
    goto :goto_4f

    :cond_92
    move v0, v2

    .line 78
    goto :goto_5b

    .line 81
    :cond_94
    :try_start_94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_69
    .catchall {:try_start_94 .. :try_end_97} :catchall_d7

    .line 86
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 87
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    :cond_a5
    if-eqz v4, :cond_aa

    .line 91
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 93
    :cond_aa
    const-string v0, "insertAppUseData end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 94
    goto/16 :goto_15

    .line 86
    :catchall_b4
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_b8
    if-eqz v3, :cond_c6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 87
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    :cond_c6
    if-eqz v4, :cond_cb

    .line 91
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 93
    :cond_cb
    const-string v1, "insertAppUseData end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 86
    :catchall_d3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_b8

    :catchall_d7
    move-exception v0

    goto :goto_b8

    :catchall_d9
    move-exception v3

    move-object v4, v1

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_b8

    .line 83
    :catch_df
    move-exception v1

    move-object v1, v0

    goto :goto_6c

    :catch_e2
    move-exception v1

    move-object v1, v4

    goto :goto_6c
.end method

.method public static a([BLjava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 50
    array-length v1, p0

    if-eqz v1, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 75
    :cond_a
    :goto_a
    return v0

    .line 54
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 58
    :cond_19
    const/4 v3, 0x0

    .line 60
    :try_start_1a
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_31
    .catchall {:try_start_1a .. :try_end_24} :catchall_41

    .line 61
    :try_start_24
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_50
    .catchall {:try_start_24 .. :try_end_27} :catchall_4d

    .line 62
    const/4 v0, 0x1

    .line 67
    :try_start_28
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_a

    .line 70
    :catch_2c
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 63
    :catch_31
    move-exception v1

    move-object v2, v3

    .line 64
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_4d

    .line 67
    if-eqz v2, :cond_a

    .line 68
    :try_start_38
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_a

    .line 70
    :catch_3c
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    :goto_42
    if-eqz v3, :cond_47

    .line 68
    :try_start_44
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 72
    :cond_47
    :goto_47
    throw v0

    .line 70
    :catch_48
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 66
    :catchall_4d
    move-exception v0

    move-object v3, v2

    goto :goto_42

    .line 63
    :catch_50
    move-exception v1

    goto :goto_33
.end method

.method public static a(ILjava/lang/String;[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    if-ne p0, v1, :cond_38

    .line 16
    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 20
    :cond_8
    :goto_8
    return-object v0

    .line 16
    :cond_9
    const-string v0, "DES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_8

    .line 17
    :cond_38
    const/4 v1, 0x3

    if-ne p0, v1, :cond_8

    .line 18
    invoke-static {p1, p2}, Lcom/tencent/beacon/applog/a;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_8
.end method

.method public static a(I[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2d

    .line 15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "zip"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    :goto_2c
    return-object v0

    .line 16
    :cond_2d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4b

    .line 17
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2c

    .line 19
    :cond_4b
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 20
    .line 21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 39
    :goto_c
    return-object v0

    .line 29
    :cond_d
    :try_start_d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 31
    new-array v0, v2, [B

    .line 32
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 33
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_c

    .line 34
    :catch_1f
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private static a(Ljava/lang/String;[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 62
    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 63
    :cond_7
    const/4 v0, 0x0

    .line 87
    :cond_8
    return-object v0

    .line 66
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 67
    :goto_d
    if-lt v0, v4, :cond_61

    .line 70
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    array-length v4, p1

    move v0, v1

    :goto_1a
    if-lt v0, v4, :cond_77

    .line 77
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 79
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 80
    const/4 v2, 0x2

    invoke-virtual {v3, v2, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 81
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    array-length v3, v0

    :goto_44
    if-ge v1, v3, :cond_8

    aget-byte v4, v0, v1

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 68
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 73
    :cond_77
    aget-byte v5, p1, v0

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method private static a([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 86
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    :goto_14
    array-length v4, v2

    invoke-virtual {v1, v2, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2d

    .line 90
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 91
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 95
    return-object v2

    .line 88
    :cond_2d
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14
.end method

.method public static b(Landroid/content/Context;I)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 233
    if-nez p0, :cond_c

    .line 234
    const-string v1, "context == null ||key < -1}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_b
    :goto_b
    return v0

    .line 242
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_76
    .catchall {:try_start_c .. :try_end_f} :catchall_8c

    move-result-object v3

    .line 243
    :try_start_10
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 244
    if-nez v2, :cond_2f

    .line 245
    const-string v1, "get db fail!,return "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1e} :catch_a1
    .catchall {:try_start_10 .. :try_end_1e} :catchall_9f

    .line 256
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 257
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 259
    :cond_29
    if-eqz v3, :cond_b

    .line 260
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    goto :goto_b

    .line 249
    :cond_2f
    :try_start_2f
    const-string v1, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_key"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x65

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string v4, "t_strategy"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 252
    const-string v1, "delete Strategy key} %d , num} %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x65

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_65} :catch_a1
    .catchall {:try_start_2f .. :try_end_65} :catchall_9f

    .line 256
    if-eqz v2, :cond_70

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 257
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 259
    :cond_70
    if-eqz v3, :cond_b

    .line 260
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    goto :goto_b

    .line 253
    :catch_76
    move-exception v1

    move-object v3, v2

    .line 254
    :goto_78
    :try_start_78
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_9f

    .line 256
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 257
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 259
    :cond_86
    if-eqz v3, :cond_b

    .line 260
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    goto :goto_b

    .line 256
    :catchall_8c
    move-exception v0

    move-object v3, v2

    :goto_8e
    if-eqz v2, :cond_99

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 257
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 259
    :cond_99
    if-eqz v3, :cond_9e

    .line 260
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    :cond_9e
    throw v0

    .line 256
    :catchall_9f
    move-exception v0

    goto :goto_8e

    .line 253
    :catch_a1
    move-exception v1

    goto :goto_78
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/b/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 339
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 341
    :cond_e
    const-string v3, "rqdp{  FileDAO.delete, context == null || fileList == null || fileList.size() , pls check! fileList }%s "

    new-array v4, v9, [Ljava/lang/Object;

    if-nez p1, :cond_1d

    const-string v0, "null"

    :goto_16
    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 396
    :goto_1c
    return v0

    .line 341
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 345
    :cond_2f
    const-string v0, "rqdp{  FileDAO.delete() start num:}%d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :try_start_40
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_162
    .catchall {:try_start_40 .. :try_end_43} :catchall_139

    move-result-object v4

    .line 352
    :try_start_44
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 353
    if-nez v3, :cond_79

    .line 355
    const-string v0, "rqdp{  getWritableDatabase fail, delete fail and return!}"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    const-string v0, "rqdp{  Error:fileDelete getWritableDatabase fail!}"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_5a} :catch_c0
    .catchall {:try_start_44 .. :try_end_5a} :catchall_15a

    .line 357
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 387
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 389
    :cond_65
    if-eqz v4, :cond_6a

    .line 391
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 393
    :cond_6a
    const-string v0, "rqdp{  FileDAO.delete() end success} %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1c

    .line 359
    :cond_79
    :try_start_79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/b/a;

    .line 362
    const-string v6, "or ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v6, "_p"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const-string v6, " = \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v6, "\' and "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v6, "_t"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v6, " = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 370
    const-string v0, " ) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_bf} :catch_c0
    .catchall {:try_start_79 .. :try_end_bf} :catchall_15a

    goto :goto_82

    .line 376
    :catch_c0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 378
    :goto_c3
    :try_start_c3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    const-string v5, "rqdp{  Error in FileDAO delete!}"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    const-string v5, "rqdp{  Error:fileDelete} %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_dd
    .catchall {:try_start_c3 .. :try_end_dd} :catchall_15d

    .line 385
    if-eqz v3, :cond_e8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 387
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 389
    :cond_e8
    if-eqz v4, :cond_ed

    .line 391
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 393
    :cond_ed
    const-string v1, "rqdp{  FileDAO.delete() end success} %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 372
    :cond_fc
    const/4 v0, 0x2

    :try_start_fd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    const-string v0, "t_file"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_107} :catch_c0
    .catchall {:try_start_fd .. :try_end_107} :catchall_15a

    move-result v0

    .line 374
    :try_start_108
    const-string v5, "rqdp{  fileDelete deletedNum:%d deleted List:\n}%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_11a} :catch_168
    .catchall {:try_start_108 .. :try_end_11a} :catchall_15d

    .line 385
    if-eqz v3, :cond_125

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 387
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 389
    :cond_125
    if-eqz v4, :cond_12a

    .line 391
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 393
    :cond_12a
    const-string v1, "rqdp{  FileDAO.delete() end success} %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 385
    :catchall_139
    move-exception v0

    move v1, v2

    move-object v4, v3

    :goto_13c
    if-eqz v3, :cond_147

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_147

    .line 387
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 389
    :cond_147
    if-eqz v4, :cond_14c

    .line 391
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 393
    :cond_14c
    const-string v3, "rqdp{  FileDAO.delete() end success} %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 385
    :catchall_15a
    move-exception v0

    move v1, v2

    goto :goto_13c

    :catchall_15d
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_13c

    .line 376
    :catch_162
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move v0, v2

    goto/16 :goto_c3

    :catch_168
    move-exception v1

    goto/16 :goto_c3
.end method

.method public static b(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_5

    .line 89
    const/4 v0, -0x1

    .line 109
    :cond_4
    :goto_4
    return v0

    .line 92
    :cond_5
    if-nez p1, :cond_1a

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x6

    aput v2, v1, v0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_4

    .line 97
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    array-length v3, p1

    move v1, v0

    :goto_21
    if-ge v1, v3, :cond_3d

    aget-object v4, p1, v1

    .line 99
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3a

    .line 100
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 103
    :cond_3d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 104
    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;)J
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    if-nez p0, :cond_5

    .line 25
    :goto_4
    return-wide v0

    .line 22
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    .line 23
    :catch_a
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 59
    :goto_12
    return-object v0

    .line 56
    :catch_13
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const-string v0, ""

    goto :goto_12
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    const-string v2, " updateAppUseData start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    if-nez p0, :cond_c

    .line 123
    :goto_b
    return v1

    .line 107
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_33
    .catchall {:try_start_c .. :try_end_f} :catchall_56

    move-result-object v3

    .line 108
    :try_start_10
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_80
    .catchall {:try_start_10 .. :try_end_13} :catchall_73

    move-result-object v2

    .line 109
    :try_start_14
    const-string v0, "update t_app_use set _is_uped = 1 where _is_uped = 0"

    .line 110
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_83
    .catchall {:try_start_14 .. :try_end_19} :catchall_78

    .line 111
    const/4 v0, 0x1

    .line 115
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 116
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_25
    if-eqz v3, :cond_2a

    .line 119
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 121
    :cond_2a
    const-string v2, "updateAppUseData end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_31
    move v1, v0

    .line 123
    goto :goto_b

    .line 112
    :catch_33
    move-exception v2

    move-object v2, v0

    .line 113
    :goto_35
    :try_start_35
    const-string v3, "updateAppUseData failure!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_7a

    .line 115
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_48
    if-eqz v2, :cond_4d

    .line 119
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 121
    :cond_4d
    const-string v0, "updateAppUseData end"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 122
    goto :goto_31

    .line 115
    :catchall_56
    move-exception v2

    move-object v3, v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    :goto_5b
    if-eqz v2, :cond_66

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 116
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_66
    if-eqz v3, :cond_6b

    .line 119
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 121
    :cond_6b
    const-string v2, "updateAppUseData end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 115
    :catchall_73
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_5b

    :catchall_78
    move-exception v0

    goto :goto_5b

    :catchall_7a
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_5b

    .line 112
    :catch_80
    move-exception v2

    move-object v2, v3

    goto :goto_35

    :catch_83
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_35
.end method

.method public static b(ILjava/lang/String;[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 25
    if-ne p0, v4, :cond_37

    .line 26
    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 30
    :cond_8
    :goto_8
    return-object v0

    .line 26
    :cond_9
    const-string v0, "DES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_8

    .line 27
    :cond_37
    const/4 v1, 0x3

    if-ne p0, v1, :cond_8

    .line 28
    invoke-static {p1, p2}, Lcom/tencent/beacon/applog/a;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_8
.end method

.method public static b(I[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 24
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3c

    .line 25
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_f
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 29
    :cond_1b
    :goto_1b
    return-object v0

    .line 25
    :cond_1c
    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_25
    array-length v4, v0

    invoke-virtual {v2, v0, v6, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_38

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_f

    :cond_38
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    .line 26
    :cond_3c
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1b

    .line 27
    invoke-static {p1}, Lcom/tencent/beacon/applog/a;->a([B)[B

    move-result-object v0

    goto :goto_1b
.end method

.method private static b(Ljava/lang/String;[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 91
    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 92
    :cond_7
    const/4 v0, 0x0

    .line 116
    :cond_8
    return-object v0

    .line 95
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 96
    :goto_d
    if-lt v0, v4, :cond_61

    .line 99
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    array-length v4, p1

    move v0, v1

    :goto_1a
    if-lt v0, v4, :cond_77

    .line 106
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 107
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 108
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 110
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 112
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    array-length v3, v0

    :goto_44
    if-ge v1, v3, :cond_8

    aget-byte v4, v0, v1

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 97
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 102
    :cond_77
    aget-byte v5, p1, v0

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static c(Landroid/content/Context;[Lcom/tencent/beacon/a/a/e;)I
    .registers 13

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 118
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p1

    if-gtz v1, :cond_b

    :cond_9
    move v3, v0

    .line 142
    :cond_a
    :goto_a
    return v3

    .line 122
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    array-length v9, p1

    move v7, v3

    :goto_13
    if-ge v7, v9, :cond_33

    aget-object v10, p1, v7

    .line 125
    invoke-static {v10}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/Object;)[B

    move-result-object v6

    .line 126
    if-eqz v6, :cond_2f

    .line 127
    new-instance v1, Lcom/tencent/beacon/a/a/a;

    const/4 v2, 0x7

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/a/a/a;-><init>(IIJ[B)V

    .line 131
    invoke-virtual {v10}, Lcom/tencent/beacon/a/a/e;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/beacon/a/a/a;->a(J)Lcom/tencent/beacon/a/a/a;

    .line 132
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2f
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_13

    .line 135
    :cond_33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 136
    invoke-static {p0, v8}, Lcom/tencent/beacon/a/a/a;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 137
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_a

    :cond_44
    move v3, v0

    .line 139
    goto :goto_a
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x80

    const/4 v3, 0x0

    .line 20
    const/16 v0, 0x7c

    const/16 v2, 0x5f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 23
    const-string v0, "eventName is invalid!! eventName length == 0!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 34
    :cond_1e
    :goto_1e
    return-object v0

    .line 26
    :cond_1f
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1e

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eventName is invalid!! eventName length should be less than 128! eventName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 33
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "eventName is invalid!! eventName should be ASCII code in 32-126! eventName:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 34
    goto :goto_1e
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    const-string v0, " deleteAppUseData start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-nez p0, :cond_13

    .line 129
    const-string v0, " delete() context is null arg"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :goto_12
    return v1

    .line 137
    :cond_13
    :try_start_13
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_54
    .catchall {:try_start_13 .. :try_end_16} :catchall_79

    move-result-object v3

    .line 138
    :try_start_17
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 139
    const-string v0, "t_app_use"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " deleted num: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_38} :catch_95
    .catchall {:try_start_17 .. :try_end_38} :catchall_93

    .line 141
    if-lez v0, :cond_97

    .line 142
    const/4 v0, 0x1

    .line 147
    :goto_3b
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 148
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    :cond_46
    if-eqz v3, :cond_4b

    .line 151
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 153
    :cond_4b
    const-string v2, " deleteAppUseData end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_52
    move v1, v0

    .line 155
    goto :goto_12

    .line 144
    :catch_54
    move-exception v0

    move-object v3, v2

    .line 145
    :goto_56
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_93

    .line 147
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 148
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    :cond_6b
    if-eqz v3, :cond_70

    .line 151
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 153
    :cond_70
    const-string v0, " deleteAppUseData end"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 154
    goto :goto_52

    .line 147
    :catchall_79
    move-exception v0

    move-object v3, v2

    :goto_7b
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 148
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    :cond_86
    if-eqz v3, :cond_8b

    .line 151
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 153
    :cond_8b
    const-string v2, " deleteAppUseData end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 147
    :catchall_93
    move-exception v0

    goto :goto_7b

    .line 144
    :catch_95
    move-exception v0

    goto :goto_56

    :cond_97
    move v0, v1

    goto :goto_3b
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Long;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 91
    const-string v0, " RecordDAO.insertList() start"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    if-eqz p0, :cond_e

    if-nez p1, :cond_17

    .line 94
    :cond_e
    const-string v0, " insertList() have null args!"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 159
    :goto_16
    return-object v0

    .line 98
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    .line 100
    if-nez v12, :cond_26

    .line 101
    const-string v0, " list siez == 0 , return true!"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 102
    goto :goto_16

    .line 105
    :cond_26
    new-array v9, v12, [Ljava/lang/Long;

    .line 107
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v10, v7

    .line 111
    :goto_2e
    if-ge v10, v12, :cond_92

    .line 112
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/event/k;

    .line 114
    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 116
    const/4 v2, 0x1

    move v3, v11

    .line 139
    :goto_44
    :try_start_44
    new-instance v1, Lcom/tencent/beacon/a/a/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v4

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/a/a/a;-><init>(IIJ[B)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_54} :catch_8d

    .line 144
    :goto_54
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_2e

    .line 119
    :cond_58
    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 121
    const/4 v2, 0x2

    move v3, v7

    .line 122
    goto :goto_44

    .line 124
    :cond_67
    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    move v3, v7

    move v2, v11

    .line 127
    goto :goto_44

    .line 128
    :cond_76
    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 130
    const/4 v2, 0x4

    move v3, v7

    .line 131
    goto :goto_44

    .line 133
    :cond_85
    const-string v0, " bean\'s type is error!"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54

    .line 142
    :catch_8d
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_54

    .line 147
    :cond_92
    invoke-static {p0, v13}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 148
    if-nez v0, :cond_9b

    move-object v0, v8

    .line 149
    goto/16 :goto_16

    .line 152
    :cond_9b
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v7

    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/a;

    .line 153
    if-ge v1, v12, :cond_b8

    .line 154
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v1

    .line 156
    :cond_b8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 157
    goto :goto_a0

    :cond_bc
    move-object v0, v9

    .line 159
    goto/16 :goto_16
.end method

.method protected static d(Lcom/tencent/beacon/b/a;)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 402
    if-nez p0, :cond_4

    .line 404
    const/4 v0, 0x0

    .line 415
    :goto_3
    return-object v0

    .line 406
    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 408
    const-string v1, "_n"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "_sa"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "_sz"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v1, "_ut"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const-string v1, "_t"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v1, "_ac"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "_p"

    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x7c

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_23

    .line 47
    const-string v1, " userID is invalid!! userID is too short, length < 5!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2d

    .line 49
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_2d
    :goto_2d
    return-object v0

    .line 51
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userID is invalid!! userID should be ASCII code in 32-126! userID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const-string v0, "10000"

    goto :goto_2d
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    .line 76
    :goto_3
    return-object v0

    .line 54
    :cond_4
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x6

    aput v1, v2, v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x5

    const-wide/16 v12, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v13}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IIIIIIIIJJ)Ljava/util/List;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_25

    .line 59
    :cond_23
    const/4 v0, 0x0

    goto :goto_3

    .line 60
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/beacon/a/a/a;

    .line 64
    :try_start_3f
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 66
    const-class v4, Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/e;

    .line 67
    if-eqz v0, :cond_32

    .line 68
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/a/a/e;->a(J)V

    .line 69
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_5b} :catch_5c

    goto :goto_32

    .line 71
    :catch_5c
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    const-string v1, "netconsume error %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    :cond_70
    move-object v0, v2

    .line 76
    goto :goto_3
.end method

.method private static d(Landroid/content/Context;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/b/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 420
    const-string v0, " insertOrUpdate FileBean start!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1a

    .line 423
    :cond_12
    const-string v0, " context == null || list == null|| list.size() <= 0 ? pls check!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :goto_19
    return v2

    .line 428
    :cond_1a
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x1

    .line 432
    :try_start_1c
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_e0
    .catchall {:try_start_1c .. :try_end_23} :catchall_c6

    move-result-object v3

    .line 435
    :try_start_24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/b/a;

    .line 436
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->d(Lcom/tencent/beacon/b/a;)Landroid/content/ContentValues;

    move-result-object v5

    .line 437
    if-nez v5, :cond_59

    .line 438
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 439
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_46} :catch_97
    .catchall {:try_start_24 .. :try_end_46} :catchall_db

    .line 441
    :cond_46
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 461
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 463
    :cond_51
    const-string v0, " insertOrUpdate alyticsBeans end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 443
    :cond_59
    :try_start_59
    const-string v6, "_id"

    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    const-string v6, "t_file"

    const-string v7, "_id"

    invoke-virtual {v3, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 447
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_7e

    .line 448
    const-string v0, " insertOrUpdate FileBean failure! return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 449
    goto :goto_29

    .line 451
    :cond_7e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " result id:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-virtual {v0, v6, v7}, Lcom/tencent/beacon/b/a;->a(J)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_96} :catch_97
    .catchall {:try_start_59 .. :try_end_96} :catchall_db

    goto :goto_29

    .line 456
    :catch_97
    move-exception v0

    move-object v1, v3

    .line 458
    :goto_99
    :try_start_99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_dd

    .line 460
    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 461
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 463
    :cond_a7
    const-string v0, " insertOrUpdate alyticsBeans end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_af
    move v2, v0

    .line 465
    goto/16 :goto_19

    .line 460
    :cond_b2
    if-eqz v3, :cond_bd

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 461
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 463
    :cond_bd
    const-string v0, " insertOrUpdate alyticsBeans end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 464
    goto :goto_af

    .line 460
    :catchall_c6
    move-exception v0

    move-object v3, v1

    :goto_c8
    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 461
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 463
    :cond_d3
    const-string v1, " insertOrUpdate alyticsBeans end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 460
    :catchall_db
    move-exception v0

    goto :goto_c8

    :catchall_dd
    move-exception v0

    move-object v3, v1

    goto :goto_c8

    .line 456
    :catch_e0
    move-exception v0

    goto :goto_99
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x10

    const/4 v2, 0x0

    .line 62
    const-string v0, "unknown"

    .line 63
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 74
    :cond_11
    :goto_11
    return-object v0

    .line 66
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3c

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2a

    const/16 v5, 0x39

    if-le v4, v5, :cond_1a

    :cond_2a
    move v1, v2

    :goto_2b
    if-eqz v1, :cond_3e

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_11

    .line 69
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 66
    :cond_3c
    const/4 v1, 0x1

    goto :goto_2b

    .line 73
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "channelID is invalid!! channelID should be Numeric! channelID:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static e(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 v0, 0x0

    .line 176
    :goto_3
    return-object v0

    .line 156
    :cond_4
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x7

    aput v1, v2, v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x5

    const-wide/16 v12, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v13}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IIIIIIIIJJ)Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_25

    .line 161
    :cond_23
    const/4 v0, 0x0

    goto :goto_3

    .line 162
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/beacon/a/a/a;

    .line 166
    :try_start_3f
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 168
    const-class v4, Lcom/tencent/beacon/a/a/e;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/e;

    .line 169
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/a/a/e;->a(J)V

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_59} :catch_5a

    goto :goto_32

    .line 171
    :catch_5a
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    const-string v1, " netconsume error:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    :cond_6e
    move-object v0, v2

    .line 176
    goto :goto_3
.end method

.method private static e(Lcom/tencent/beacon/b/a;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 199
    :try_start_1
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v4

    .line 200
    const/4 v2, 0x1

    .line 201
    const/4 v3, 0x2

    .line 202
    const-string v1, "*^@K#K@!"

    .line 203
    if-eqz v4, :cond_17

    .line 204
    invoke-virtual {v4}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v2

    .line 205
    invoke-virtual {v4}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v3

    .line 206
    invoke-virtual {v4}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_17
    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 209
    invoke-static {v4, v3, v2, v1}, Lcom/tencent/beacon/b/a;->a([BIILjava/lang/String;)[B

    move-result-object v1

    .line 211
    if-nez v1, :cond_30

    .line 212
    const-string v1, "encodeDatasByZipAndEncry failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_2f
    return v0

    .line 214
    :cond_30
    invoke-virtual {p0}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/beacon/applog/a;->a([BLjava/lang/String;)Z
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_37} :catch_39

    move-result v0

    goto :goto_2f

    .line 220
    :catch_39
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2f
.end method

.method public static f(Landroid/content/Context;)Lcom/tencent/beacon/a/a/f;
    .registers 15

    .prologue
    .line 19
    if-nez p0, :cond_4

    .line 20
    const/4 v1, 0x0

    .line 38
    :cond_3
    :goto_3
    return-object v1

    .line 21
    :cond_4
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0x8

    aput v1, v2, v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v13}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[IIIIIIIIJJ)Ljava/util/List;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_26

    .line 24
    :cond_24
    const/4 v1, 0x0

    goto :goto_3

    .line 27
    :cond_26
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/a;

    .line 28
    if-eqz v0, :cond_53

    .line 29
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/a;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/beacon/b/a;->a([B)Ljava/lang/Object;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_53

    const-class v2, Lcom/tencent/beacon/a/a/f;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 31
    const-class v2, Lcom/tencent/beacon/a/a/f;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/beacon/a/a/f;

    .line 32
    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/beacon/a/a/f;->e(J)V

    goto :goto_3

    .line 38
    :cond_53
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    move v0, v1

    move v1, v4

    :cond_8
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1a

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 180
    const/16 v3, 0x20

    if-lt v2, v3, :cond_18

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_8

    .line 182
    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    .line 185
    :cond_1a
    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 18
    const-string v0, " RecordDAO.countRecordNum() start"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    if-nez p0, :cond_13

    .line 21
    const-string v0, " countRecordNum() have null args!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/4 v0, -0x1

    .line 31
    :goto_12
    return v0

    .line 26
    :cond_13
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_26

    .line 31
    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/beacon/a/a/a;->b(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_12

    .line 26
    :array_26
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private static h(Landroid/content/Context;)Lcom/tencent/beacon/b/a;
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 500
    const-string v0, " FileDAO.querySum() start"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :try_start_9
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_4f
    .catchall {:try_start_9 .. :try_end_c} :catchall_81

    move-result-object v9

    .line 511
    :try_start_d
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_b7
    .catchall {:try_start_d .. :try_end_10} :catchall_a7

    move-result-object v0

    .line 513
    :try_start_11
    const-string v1, "t_file"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_sz ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_bc
    .catchall {:try_start_11 .. :try_end_1d} :catchall_aa

    move-result-object v2

    .line 517
    if-eqz v2, :cond_c9

    .line 519
    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 521
    invoke-static {v2}, Lcom/tencent/beacon/applog/a;->a(Landroid/database/Cursor;)Lcom/tencent/beacon/b/a;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_c2
    .catchall {:try_start_20 .. :try_end_29} :catchall_ae

    move-result-object v8

    move-object v1, v8

    .line 527
    :goto_2b
    if-eqz v2, :cond_36

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_36

    .line 528
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_36
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 533
    :cond_41
    if-eqz v9, :cond_46

    .line 534
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 536
    :cond_46
    const-string v0, " FileDAO.querySum() end"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 538
    :goto_4e
    return-object v0

    .line 524
    :catch_4f
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    .line 525
    :goto_53
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_b3

    .line 527
    if-eqz v1, :cond_68

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_68

    .line 528
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_68
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 531
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 533
    :cond_73
    if-eqz v3, :cond_78

    .line 534
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 536
    :cond_78
    const-string v0, " FileDAO.querySum() end"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 537
    goto :goto_4e

    .line 527
    :catchall_81
    move-exception v0

    move-object v2, v8

    move-object v9, v8

    :goto_84
    if-eqz v8, :cond_8f

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 528
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_8f
    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 531
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 533
    :cond_9a
    if-eqz v9, :cond_9f

    .line 534
    invoke-virtual {v9}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 536
    :cond_9f
    const-string v1, " FileDAO.querySum() end"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 527
    :catchall_a7
    move-exception v0

    move-object v2, v8

    goto :goto_84

    :catchall_aa
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_84

    :catchall_ae
    move-exception v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_84

    :catchall_b3
    move-exception v0

    move-object v8, v1

    move-object v9, v3

    goto :goto_84

    .line 524
    :catch_b7
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v9

    goto :goto_53

    :catch_bc
    move-exception v1

    move-object v2, v0

    move-object v3, v9

    move-object v0, v1

    move-object v1, v8

    goto :goto_53

    :catch_c2
    move-exception v1

    move-object v3, v9

    move-object v11, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_53

    :cond_c9
    move-object v1, v8

    goto/16 :goto_2b
.end method


# virtual methods
.method protected final a()V
    .registers 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->b:Lcom/tencent/beacon/b/a;

    if-eqz v0, :cond_1b

    .line 126
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->h()Lcom/tencent/beacon/upload/g;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/e/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-nez v0, :cond_1c

    .line 130
    :cond_16
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->b:Lcom/tencent/beacon/b/a;

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/applog/a;->c(Lcom/tencent/beacon/b/a;)V

    .line 136
    :cond_1b
    :goto_1b
    return-void

    .line 132
    :cond_1c
    new-instance v1, Lcom/tencent/beacon/applog/c;

    iget-object v2, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/beacon/applog/a;->b:Lcom/tencent/beacon/b/a;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/beacon/applog/c;-><init>(Landroid/content/Context;Lcom/tencent/beacon/b/a;Z)V

    invoke-interface {v0, v1}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V

    goto :goto_1b
.end method

.method public final declared-synchronized a(Lcom/tencent/beacon/b/a;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 79
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    if-eqz v1, :cond_8

    if-nez p1, :cond_12

    .line 80
    :cond_8
    const-string v1, "processUA return false, context is null or bean is null !"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_23

    .line 92
    :goto_10
    monitor-exit p0

    return v0

    .line 83
    :cond_12
    :try_start_12
    iput-object p1, p0, Lcom/tencent/beacon/applog/a;->b:Lcom/tencent/beacon/b/a;

    .line 84
    invoke-static {}, Lcom/tencent/beacon/applog/b;->a()Lcom/tencent/beacon/applog/b;

    move-result-object v1

    .line 85
    if-nez v1, :cond_26

    .line 86
    const-string v1, "isModuleAble:not init ua"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_23

    goto :goto_10

    .line 79
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 91
    const-string v0, "processUA:true!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_23

    .line 92
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public final b(Lcom/tencent/beacon/b/a;)Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x7530

    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    if-eqz v1, :cond_9

    if-nez p1, :cond_11

    .line 104
    :cond_9
    const-string v1, "saveUA return false, context is null or bean is null !"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_10
    return v0

    .line 107
    :cond_11
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    if-eqz v0, :cond_79

    .line 109
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/b/a;->d(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/b/a;->b(J)V

    .line 111
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {v2}, Lcom/tencent/beacon/b/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/b/a;->e(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/b/a;->c(J)V

    .line 113
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v0

    const-wide/32 v2, 0xc800

    cmp-long v0, v0, v2

    if-lez v0, :cond_79

    .line 114
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 115
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/tencent/beacon/applog/a;->e:Ljava/lang/Runnable;

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 120
    :cond_79
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public final declared-synchronized c(Lcom/tencent/beacon/b/a;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v0, 0x0

    .line 144
    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/tencent/beacon/applog/b;->a()Lcom/tencent/beacon/applog/b;

    move-result-object v3

    if-nez v3, :cond_e3

    const-string v3, "isModuleAble:not init ua"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    if-eqz v0, :cond_e1

    .line 147
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->h(Landroid/content/Context;)Lcom/tencent/beacon/b/a;

    move-result-object v4

    .line 148
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v0

    .line 151
    if-eqz v4, :cond_1c4

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->o()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_1c4

    .line 152
    const-string v0, "appLog upload append Log to File"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v4}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->a(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1b4

    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v6

    const/4 v0, 0x2

    const-string v3, "*^@K#K@!"

    if-eqz v6, :cond_243

    invoke-virtual {v6}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v0

    invoke-virtual {v6}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v2

    invoke-virtual {v6}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v3

    :goto_5e
    invoke-static {v5, v2, v0, v3}, Lcom/tencent/beacon/b/a;->b([BIILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1c1

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Lcom/tencent/beacon/b/a;->e(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/b/a;->d(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/b/a;->b(J)V

    .line 158
    invoke-static {p1}, Lcom/tencent/beacon/applog/a;->e(Lcom/tencent/beacon/b/a;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appLog upload   file size before append:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v0

    invoke-virtual {v4}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/beacon/b/a;->c(J)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appLog upload   file size after append:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/beacon/applog/a;->d(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e1} :catch_123
    .catchall {:try_start_5 .. :try_end_e1} :catchall_12d

    .line 191
    :cond_e1
    :goto_e1
    monitor-exit p0

    return-void

    .line 144
    :cond_e3
    :try_start_e3
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->p()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_135

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_135

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_130

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/b/a;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_122} :catch_123
    .catchall {:try_start_e3 .. :try_end_122} :catchall_12d

    goto :goto_10a

    .line 185
    :catch_123
    move-exception v0

    :try_start_124
    const-string v0, "save app Log Fail"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12c
    .catchall {:try_start_124 .. :try_end_12c} :catchall_12d

    goto :goto_e1

    .line 144
    :catchall_12d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_130
    :try_start_130
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;Ljava/util/List;)I

    :cond_135
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->q()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appLog upload   recordNum:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appLog upload   recordNumMax:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lt v0, v3, :cond_1b1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v0}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "appLog upload   deleteRecords:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_193
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/b/a;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_193

    :cond_1ac
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;Ljava/util/List;)I

    :cond_1b1
    move v0, v2

    goto/16 :goto_13

    .line 153
    :cond_1b4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;Ljava/util/List;)I

    :cond_1c1
    move-object v0, v1

    goto/16 :goto_6a

    .line 170
    :cond_1c4
    const-string v0, "appLog upload    create newLog File with default path"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1de

    const-string v0, ""

    invoke-virtual {p1}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 172
    :cond_1de
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/appLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_209

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 176
    :cond_209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/b/a;->d(Ljava/lang/String;)V

    .line 178
    :cond_22b
    invoke-static {p1}, Lcom/tencent/beacon/applog/a;->e(Lcom/tencent/beacon/b/a;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 179
    iget-object v0, p0, Lcom/tencent/beacon/applog/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Ljava/util/List;)I
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_23e} :catch_123
    .catchall {:try_start_130 .. :try_end_23e} :catchall_12d

    move-result v0

    if-eq v0, v10, :cond_e1

    goto/16 :goto_e1

    :cond_243
    move v11, v2

    move v2, v0

    move v0, v11

    goto/16 :goto_5e
.end method
