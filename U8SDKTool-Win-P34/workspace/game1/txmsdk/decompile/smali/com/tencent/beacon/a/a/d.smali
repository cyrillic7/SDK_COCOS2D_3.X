.class public final Lcom/tencent/beacon/a/a/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# static fields
.field private static b:Lcom/tencent/beacon/a/a/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/a/a/d;->b:Lcom/tencent/beacon/a/a/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 28
    const-string v0, "beacon_db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    iput-object p1, p0, Lcom/tencent/beacon/a/a/d;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    .registers 3

    .prologue
    .line 33
    const-class v1, Lcom/tencent/beacon/a/a/d;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/tencent/beacon/a/a/d;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/a/d;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 105
    monitor-enter p0

    .line 107
    :try_start_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 108
    const-string v1, "sqlite_master"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "type = \'table\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1d} :catch_94
    .catchall {:try_start_4 .. :try_end_1d} :catchall_91

    move-result-object v1

    .line 110
    if-eqz v1, :cond_41

    .line 111
    :goto_20
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 112
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_74

    goto :goto_20

    .line 124
    :catch_2f
    move-exception v0

    .line 125
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_74

    .line 126
    if-eqz v1, :cond_3e

    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_81

    :cond_3e
    move v0, v9

    :goto_3f
    monitor-exit p0

    return v0

    .line 116
    :cond_41
    :try_start_41
    const-string v2, "drop table if exists %s"

    .line 117
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_84

    .line 118
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v4, "drop %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_73} :catch_2f
    .catchall {:try_start_41 .. :try_end_73} :catchall_74

    goto :goto_4d

    .line 128
    :catchall_74
    move-exception v0

    :goto_75
    if-eqz v1, :cond_80

    :try_start_77
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_80

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_80
    throw v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_81

    .line 105
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_84
    if-eqz v1, :cond_8f

    :try_start_86
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_81

    :cond_8f
    move v0, v8

    goto :goto_3f

    .line 128
    :catchall_91
    move-exception v0

    move-object v1, v10

    goto :goto_75

    .line 124
    :catch_94
    move-exception v0

    move-object v1, v10

    goto :goto_30
.end method


# virtual methods
.method public final declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 136
    monitor-enter p0

    const/4 v1, 0x0

    .line 138
    :goto_4
    if-nez v1, :cond_37

    if-ge v0, v6, :cond_37

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    :try_start_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_f
    .catchall {:try_start_a .. :try_end_d} :catchall_34

    move-result-object v1

    goto :goto_4

    .line 144
    :catch_f
    move-exception v2

    :try_start_10
    const-string v2, "getReadableDatabase error count  %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    if-ne v0, v6, :cond_29

    .line 146
    const-string v2, "error get DB failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_34

    .line 149
    :cond_29
    const-wide/16 v2, 0xc8

    :try_start_2b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    goto :goto_4

    .line 150
    :catch_2f
    move-exception v2

    .line 151
    :try_start_30
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_4

    .line 136
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    :cond_37
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 160
    monitor-enter p0

    const/4 v1, 0x0

    .line 162
    :goto_4
    if-nez v1, :cond_37

    if-ge v0, v6, :cond_37

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 166
    :try_start_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f
    .catchall {:try_start_a .. :try_end_d} :catchall_34

    move-result-object v1

    goto :goto_4

    .line 168
    :catch_f
    move-exception v2

    :try_start_10
    const-string v2, "getWritableDatabase error count %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    if-ne v0, v6, :cond_29

    .line 170
    const-string v2, "error get DB failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_34

    .line 174
    :cond_29
    const-wide/16 v2, 0xc8

    :try_start_2b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    goto :goto_4

    .line 175
    :catch_2f
    move-exception v2

    .line 176
    :try_start_30
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_4

    .line 160
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_37
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 45
    monitor-enter p0

    if-eqz p1, :cond_26

    :try_start_4
    sget-object v1, Lcom/tencent/beacon/a/a/c;->a:[[Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 47
    sget-object v1, Lcom/tencent/beacon/a/a/c;->a:[[Ljava/lang/String;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 49
    const-string v4, "table:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v3, v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 55
    :cond_26
    monitor-exit p0

    return-void

    .line 45
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    invoke-static {}, Lcom/tencent/beacon/a/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    .line 81
    const-string v0, "downgrade a db  [%s] from v %d to  v%d , deleted all tables!"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "beacon_db"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 84
    const-string v0, "drop all success recreate!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_5c

    .line 95
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    .line 88
    :cond_40
    :try_start_40
    const-string v0, "drop all fail try deleted file,may next time will success!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/beacon/a/a/d;->a:Landroid/content/Context;

    const-string v1, "beacon_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_5c

    goto :goto_3e

    .line 80
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    const-string v0, "upgrade a db  [%s] from v %d to v %d , deleted all tables!"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "beacon_db"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 64
    const-string v0, "drop all success recreate!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_4b

    .line 74
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    .line 68
    :cond_2f
    :try_start_2f
    const-string v0, "drop all fail try deleted file,may next time will success!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/beacon/a/a/d;->a:Landroid/content/Context;

    const-string v1, "beacon_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4b

    goto :goto_2d

    .line 61
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
