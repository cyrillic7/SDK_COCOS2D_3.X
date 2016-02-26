.class public Lcom/tencent/tmdownloader/internal/b/c/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method private static a(Lcom/tencent/tmdownloader/internal/b/b/a;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p0, :cond_5

    .line 94
    const/4 v0, -0x1

    .line 109
    :cond_4
    :goto_4
    return v0

    .line 97
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    invoke-static {v0, p0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 99
    const-string v2, "clientinfo"

    const-string v3, "clientId = ? and taskUrl = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_26

    move-result v0

    .line 101
    if-gtz v0, :cond_4

    move v0, v1

    .line 104
    goto :goto_4

    .line 106
    :catch_26
    move-exception v0

    .line 107
    const-string v1, "ClientInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const/4 v0, -0x2

    goto :goto_4
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/b/b/a;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b/a;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/b/a;-><init>()V

    .line 52
    const-string v1, "clientId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    .line 53
    const-string v1, "taskId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->b:I

    .line 54
    const-string v1, "taskUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    .line 56
    return-object v0
.end method

.method private static a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V
    .registers 4

    .prologue
    .line 35
    if-eqz p1, :cond_1b

    .line 36
    const-string v0, "clientId"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "taskId"

    iget v1, p1, Lcom/tencent/tmdownloader/internal/b/b/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const-string v0, "taskUrl"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1b
    return-void
.end method

.method public static a(Lcom/tencent/tmdownloader/internal/b/b/a;)V
    .registers 5

    .prologue
    .line 65
    if-eqz p0, :cond_20

    .line 67
    :try_start_2
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_20

    .line 69
    invoke-static {p0, v0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Lcom/tencent/tmdownloader/internal/b/b/a;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 70
    if-gtz v1, :cond_20

    .line 71
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    invoke-static {v1, p0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 73
    const-string v2, "clientinfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 82
    :cond_20
    :goto_20
    return-void

    .line 77
    :catch_21
    move-exception v0

    .line 78
    const-string v1, "ClientInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 183
    :try_start_6
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1d

    .line 185
    const-string v1, "clientinfo"

    const-string v2, "taskUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 193
    :cond_1d
    :goto_1d
    return-void

    .line 188
    :catch_1e
    move-exception v0

    .line 189
    const-string v1, "ClientInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b/a;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/b/a;-><init>()V

    .line 86
    iput-object p0, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    .line 87
    iput-object p1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 89
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    const-string v0, "clientinfo"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 231
    if-eqz p2, :cond_3a

    if-eqz p1, :cond_3a

    .line 232
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    :try_start_8
    const-string v0, "select * from clientinfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 240
    :cond_17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 241
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/b/b/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 242
    const-string v2, "clientinfo"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_3b
    .catchall {:try_start_8 .. :try_end_2c} :catchall_49

    move-result v0

    if-nez v0, :cond_17

    .line 250
    :cond_2f
    if-eqz v1, :cond_34

    .line 251
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_34
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 256
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 258
    :cond_3a
    return-void

    .line 246
    :catch_3b
    move-exception v0

    .line 247
    :try_start_3c
    const-string v2, "ClientInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_49

    .line 250
    if-eqz v1, :cond_34

    goto :goto_31

    :catchall_49
    move-exception v0

    if-eqz v1, :cond_4f

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_4f
    throw v0
.end method

.method public a(II)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    const-string v0, "CREATE TABLE if not exists clientinfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, clientId TEXT , taskId INTEGER, taskUrl TEXT);"

    return-object v0
.end method
