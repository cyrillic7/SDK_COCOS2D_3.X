.class public Lcom/tencent/tmdownloader/internal/b/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static a(Lcom/tencent/tmdownloader/internal/a/d;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 231
    if-nez p0, :cond_5

    .line 232
    const/4 v0, -0x1

    .line 246
    :cond_4
    :goto_4
    return v0

    .line 235
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 236
    invoke-static {v0, p0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 237
    const-string v2, "downloadInfo"

    const-string v3, "taskUrl = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_21

    move-result v0

    .line 238
    if-gtz v0, :cond_4

    move v0, v1

    .line 241
    goto :goto_4

    .line 243
    :catch_21
    move-exception v0

    .line 244
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v0, -0x2

    goto :goto_4
.end method

.method public static a(Lcom/tencent/tmdownloader/internal/a/d;)V
    .registers 5

    .prologue
    .line 180
    if-eqz p0, :cond_20

    .line 182
    :try_start_2
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_20

    .line 184
    invoke-static {p0, v0}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Lcom/tencent/tmdownloader/internal/a/d;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 185
    if-gtz v1, :cond_20

    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-static {v1, p0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 188
    const-string v2, "downloadInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 198
    :cond_20
    :goto_20
    return-void

    .line 192
    :catch_21
    move-exception v0

    .line 193
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 207
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 210
    :try_start_8
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_1f

    .line 212
    const-string v1, "downloadInfo"

    const-string v2, "taskUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    .line 221
    :cond_1f
    :goto_1f
    return-void

    .line 215
    :catch_20
    move-exception v0

    .line 216
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 6

    .prologue
    .line 142
    if-eqz p0, :cond_3f

    .line 143
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_3f

    .line 146
    :try_start_c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 148
    invoke-static {v0, v1}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Lcom/tencent/tmdownloader/internal/a/d;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    .line 149
    if-gtz v3, :cond_13

    .line 150
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 151
    invoke-static {v3, v0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 152
    const-string v0, "downloadInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_34
    .catchall {:try_start_c .. :try_end_33} :catchall_50

    goto :goto_13

    .line 157
    :catch_34
    move-exception v0

    .line 158
    :try_start_35
    const-string v2, "DownloadInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_50

    .line 162
    :try_start_3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_5e

    .line 171
    :cond_3f
    :goto_3f
    return-void

    .line 155
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_34
    .catchall {:try_start_40 .. :try_end_43} :catchall_50

    .line 162
    :try_start_43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_3f

    .line 163
    :catch_47
    move-exception v0

    .line 164
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    :goto_4c
    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 161
    :catchall_50
    move-exception v0

    .line 162
    :try_start_51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 161
    :goto_54
    throw v0

    .line 163
    :catch_55
    move-exception v1

    .line 164
    const-string v2, "DownloadInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54

    .line 163
    :catch_5e
    move-exception v0

    .line 164
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    goto :goto_4c
.end method

.method public static b(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 258
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 260
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_30

    .line 264
    :try_start_13
    const-string v2, "select * from downloadInfo where taskUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_31
    .catchall {:try_start_13 .. :try_end_1e} :catchall_40

    move-result-object v2

    .line 265
    if-eqz v2, :cond_49

    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 267
    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_4e
    .catchall {:try_start_21 .. :try_end_2a} :catchall_4c

    move-result-object v0

    .line 275
    if-eqz v2, :cond_30

    .line 276
    :goto_2d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_30
    return-object v0

    .line 271
    :catch_31
    move-exception v1

    move-object v2, v0

    .line 272
    :goto_33
    :try_start_33
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_4c

    .line 275
    if-eqz v2, :cond_30

    goto :goto_2d

    :catchall_40
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_43
    if-eqz v2, :cond_48

    .line 276
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_48
    throw v0

    :cond_49
    if-eqz v2, :cond_30

    goto :goto_2d

    :catchall_4c
    move-exception v0

    goto :goto_43

    .line 271
    :catch_4e
    move-exception v1

    goto :goto_33
.end method

.method public static c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 292
    const-string v1, "DownloadInfoTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryByPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz p0, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 295
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_48

    .line 299
    :try_start_2b
    const-string v2, "select * from downloadInfo where taskPakcageName = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_49
    .catchall {:try_start_2b .. :try_end_36} :catchall_58

    move-result-object v2

    .line 300
    if-eqz v2, :cond_61

    .line 301
    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 303
    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_66
    .catchall {:try_start_39 .. :try_end_42} :catchall_64

    move-result-object v0

    .line 312
    if-eqz v2, :cond_48

    .line 313
    :goto_45
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_48
    return-object v0

    .line 308
    :catch_49
    move-exception v1

    move-object v2, v0

    .line 309
    :goto_4b
    :try_start_4b
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_64

    .line 312
    if-eqz v2, :cond_48

    goto :goto_45

    :catchall_58
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5b
    if-eqz v2, :cond_60

    .line 313
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_60
    throw v0

    :cond_61
    if-eqz v2, :cond_48

    goto :goto_45

    :catchall_64
    move-exception v0

    goto :goto_5b

    .line 308
    :catch_66
    move-exception v1

    goto :goto_4b
.end method

.method public static c()Ljava/util/ArrayList;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_31

    .line 113
    :try_start_10
    const-string v3, "select * from downloadInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 117
    :cond_1f
    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_32
    .catchall {:try_start_10 .. :try_end_29} :catchall_40

    move-result v1

    if-nez v1, :cond_1f

    .line 126
    :cond_2c
    if-eqz v2, :cond_31

    .line 127
    :goto_2e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_31
    return-object v0

    .line 121
    :catch_32
    move-exception v1

    .line 122
    :try_start_33
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_40

    .line 126
    if-eqz v2, :cond_31

    goto :goto_2e

    :catchall_40
    move-exception v0

    if-eqz v2, :cond_46

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_46
    throw v0
.end method

.method public static d()Ljava/util/ArrayList;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_52

    .line 334
    :try_start_10
    const-string v3, "select a.taskUrl,a.status,b.clientId from downloadInfo as a left outer join clientinfo as b on a.taskUrl = b.taskUrl where b.clientId is not null and (a.status = 2 or a.status = 1)"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_4d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 338
    :cond_1f
    const-string v1, "clientId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    const-string v3, "taskUrl"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    const-string v4, "status"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 341
    new-instance v5, Lcom/tencent/tmdownloader/internal/a/a/b;

    invoke-direct {v5, v1, v3}, Lcom/tencent/tmdownloader/internal/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput v4, v5, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 344
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4a} :catch_53
    .catchall {:try_start_10 .. :try_end_4a} :catchall_61

    move-result v1

    if-nez v1, :cond_1f

    .line 353
    :cond_4d
    if-eqz v2, :cond_52

    .line 354
    :goto_4f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_52
    return-object v0

    .line 348
    :catch_53
    move-exception v1

    .line 349
    :try_start_54
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_61

    .line 353
    if-eqz v2, :cond_52

    goto :goto_4f

    :catchall_61
    move-exception v0

    if-eqz v2, :cond_67

    .line 354
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_67
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string v0, "downloadInfo"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 364
    if-eqz p2, :cond_41

    if-eqz p1, :cond_41

    .line 365
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 369
    :try_start_8
    const-string v0, "select * from downloadInfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 371
    const-string v0, "downloadInfo"

    const-string v2, "start move data!"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_1e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 375
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/d;->b(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 376
    const-string v2, "downloadInfo"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_42
    .catchall {:try_start_8 .. :try_end_33} :catchall_57

    move-result v0

    if-nez v0, :cond_1e

    .line 386
    :cond_36
    if-eqz v1, :cond_3b

    .line 387
    :goto_38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_3b
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 392
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 395
    :cond_41
    return-void

    .line 381
    :catch_42
    move-exception v0

    .line 382
    :try_start_43
    const-string v2, "DownloadInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const-string v0, "downloadInfo"

    const-string v2, "move data exception!"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_57

    .line 386
    if-eqz v1, :cond_3b

    goto :goto_38

    :catchall_57
    move-exception v0

    if-eqz v1, :cond_5d

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_5d
    throw v0
.end method

.method public a(II)[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 66
    if-ne p1, v2, :cond_f

    if-ne p2, v3, :cond_f

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "alter table downloadInfo add column headerParams TEXT;"

    aput-object v1, v0, v4

    .line 88
    :goto_e
    return-object v0

    .line 70
    :cond_f
    if-ne p1, v3, :cond_5a

    if-ne p2, v5, :cond_5a

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "alter table downloadInfo add column appId INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "alter table downloadInfo add column taskPakcageName TEXT;"

    aput-object v1, v0, v2

    const-string v1, "alter table downloadInfo add column taskVersioncode TEXT;"

    aput-object v1, v0, v3

    const-string v1, "alter table downloadInfo add column clientIp TEXT;"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "alter table downloadInfo add column startTime INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alter table downloadInfo add column endTime INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "alter table downloadInfo add column downloadType INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alter table downloadInfo add column uin INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alter table downloadInfo add column uintype TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "alter table downloadInfo add column via TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "alter table downloadInfo add column channelId TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alter table downloadInfo add column traceId TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alter table downloadInfo add column extraData TEXT;"

    aput-object v2, v0, v1

    goto :goto_e

    .line 88
    :cond_5a
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "alter table downloadInfo add column netType TEXT;"

    aput-object v1, v0, v4

    const-string v1, "alter table downloadInfo add column downloadFailedErrCode INTEGER;"

    aput-object v1, v0, v2

    const-string v1, "alter table downloadInfo add column downloadFailedTime INTEGER;"

    aput-object v1, v0, v3

    goto :goto_e
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "CREATE TABLE if not exists downloadInfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, taskId INTEGER , uId TEXT, taskUrl TEXT, finalUrl TEXT, fileName TEXT, contentType TEXT, redirectCnt INTEGER, retryCnt INTEGER, totalBytes INTEGER,status INTEGER,receivedBytes INTEGER,priority INTEGER, netType TEXT,downloadFailedErrCode INTEGER,downloadFailedTime INTEGER,headerParams TEXT,appId INTEGER,taskPakcageName TEXT,taskVersioncode TEXT,clientIp TEXT,startTime INTEGER,endTime INTEGER,downloadType INTEGER,uin INTEGER,uintype TEXT,via TEXT,channelId TEXT,traceId TEXT,extraData TEXT);"

    return-object v0
.end method
