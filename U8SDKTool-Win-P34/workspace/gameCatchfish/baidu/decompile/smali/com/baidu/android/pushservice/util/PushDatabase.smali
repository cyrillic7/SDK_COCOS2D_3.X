.class public Lcom/baidu/android/pushservice/util/PushDatabase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/util/PushDatabase$h;,
        Lcom/baidu/android/pushservice/util/PushDatabase$g;,
        Lcom/baidu/android/pushservice/util/PushDatabase$k;,
        Lcom/baidu/android/pushservice/util/PushDatabase$j;,
        Lcom/baidu/android/pushservice/util/PushDatabase$i;,
        Lcom/baidu/android/pushservice/util/PushDatabase$n;,
        Lcom/baidu/android/pushservice/util/PushDatabase$b;,
        Lcom/baidu/android/pushservice/util/PushDatabase$m;,
        Lcom/baidu/android/pushservice/util/PushDatabase$a;,
        Lcom/baidu/android/pushservice/util/PushDatabase$c;,
        Lcom/baidu/android/pushservice/util/PushDatabase$f;,
        Lcom/baidu/android/pushservice/util/PushDatabase$l;,
        Lcom/baidu/android/pushservice/util/PushDatabase$d;,
        Lcom/baidu/android/pushservice/util/PushDatabase$e;
    }
.end annotation


# static fields
.field private static final DB_DIR:Ljava/lang/String; = "baidu/pushservice/database"

.field private static final DB_NAME:Ljava/lang/String; = "pushstat_4.5.1.db"

.field private static final DB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PushDatabase"

.field private static mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

.field private static myLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->myLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAppInfo(Landroid/content/Context;)J
    .registers 8

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3a

    move-result-object v1

    if-nez v1, :cond_d

    const-wide/16 v0, 0x0

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    const/4 v3, -0x1

    :try_start_e
    const-string v0, "AppInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_1a
    .catchall {:try_start_e .. :try_end_15} :catchall_3a

    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    int-to-long v0, v3

    goto :goto_b

    :catch_1a
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearAppInfo Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_3a

    goto :goto_15

    :catchall_3a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized clearBehaviorInfo(Landroid/content/Context;)J
    .registers 8

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_56

    move-result-object v1

    if-nez v1, :cond_d

    const-wide/16 v0, 0x0

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    const/4 v3, -0x1

    :try_start_e
    const-string v0, "PushBehavior"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "ADPushBehavior"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "WifiActionBehavior"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "WifiInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "AppInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_36
    .catchall {:try_start_e .. :try_end_31} :catchall_56

    :cond_31
    :goto_31
    :try_start_31
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    int-to-long v0, v3

    goto :goto_b

    :catch_36
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBehaviorInfo Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_56

    goto :goto_31

    :catchall_56
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static close()V
    .registers 2

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase;->myLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$e;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public static declared-synchronized deleteFileDownloadingInfo(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    const-class v1, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v1

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_36

    move-result-object v2

    if-nez v2, :cond_c

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_36

    const/4 v0, -0x1

    :try_start_13
    const-string v4, "FileDownloadingInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_39
    .catchall {:try_start_13 .. :try_end_31} :catchall_36

    move-result v0

    :goto_32
    :try_start_32
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_a

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_39
    move-exception v3

    goto :goto_32
.end method

.method public static declared-synchronized getADBehaviorEnumClassList(Landroid/content/Context;JJII)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/f/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v3, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_185

    move-result-object v4

    if-nez v4, :cond_c

    :goto_a
    monitor-exit v3

    return-object v0

    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ADPushBehavior WHERE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->c:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->c:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " >= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIMIT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OFFSET "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_185

    const/4 v5, 0x0

    :try_start_81
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_198
    .catchall {:try_start_81 .. :try_end_84} :catchall_188

    move-result-object v2

    :goto_85
    :try_start_85
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17a

    new-instance v0, Lcom/baidu/android/pushservice/f/a;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/a;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->a:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->b:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->j:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->i:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->d(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->f:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->g:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->c(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->e:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->b(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->d:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->k:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->h:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/a;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->c:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/baidu/android/pushservice/f/a;->a(J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_14e} :catch_150
    .catchall {:try_start_85 .. :try_end_14e} :catchall_196

    goto/16 :goto_85

    :catch_150
    move-exception v0

    :goto_151
    :try_start_151
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_151 .. :try_end_16d} :catchall_196

    if-eqz v2, :cond_172

    :try_start_16f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_172
    if-eqz v4, :cond_177

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_177
    :goto_177
    move-object v0, v1

    goto/16 :goto_a

    :cond_17a
    if-eqz v2, :cond_17f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_17f
    if-eqz v4, :cond_177

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_184
    .catchall {:try_start_16f .. :try_end_184} :catchall_185

    goto :goto_177

    :catchall_185
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_188
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_18b
    if-eqz v2, :cond_190

    :try_start_18d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_190
    if-eqz v4, :cond_195

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_195
    throw v0
    :try_end_196
    .catchall {:try_start_18d .. :try_end_196} :catchall_185

    :catchall_196
    move-exception v0

    goto :goto_18b

    :catch_198
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_151
.end method

.method public static declared-synchronized getAppInfo(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/f/k;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_eb

    move-result-object v3

    if-nez v3, :cond_c

    :goto_a
    monitor-exit v2

    return-object v0

    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "SELECT * FROM AppInfo;"
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_eb

    const/4 v5, 0x0

    :try_start_14
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_d2
    .catchall {:try_start_14 .. :try_end_17} :catchall_ee

    move-result-object v0

    :goto_18
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    new-instance v4, Lcom/baidu/android/pushservice/f/k;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/f/k;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->b:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->c:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->c(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->d:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->e:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->f:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->g:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->h:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->i:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->j:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->k:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/android/pushservice/f/k;->b(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_d0} :catch_d2
    .catchall {:try_start_18 .. :try_end_d0} :catchall_fd

    goto/16 :goto_18

    :catch_d2
    move-exception v4

    if-eqz v0, :cond_d8

    :try_start_d5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_d8
    if-eqz v3, :cond_dd

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_dd
    :goto_dd
    move-object v0, v1

    goto/16 :goto_a

    :cond_e0
    if-eqz v0, :cond_e5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_e5
    if-eqz v3, :cond_dd

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_ea
    .catchall {:try_start_d5 .. :try_end_ea} :catchall_eb

    goto :goto_dd

    :catchall_eb
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_ee
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_f2
    if-eqz v1, :cond_f7

    :try_start_f4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f7
    if-eqz v3, :cond_fc

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_fc
    throw v0
    :try_end_fd
    .catchall {:try_start_f4 .. :try_end_fd} :catchall_eb

    :catchall_fd
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_f2
.end method

.method public static declared-synchronized getBehaviorEnumClassList(Landroid/content/Context;JJII)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/f/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v3, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b8

    move-result-object v4

    if-nez v4, :cond_c

    :goto_a
    monitor-exit v3

    return-object v0

    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PushBehavior WHERE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " >= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIMIT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OFFSET "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_1b8

    const/4 v5, 0x0

    :try_start_81
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_1cb
    .catchall {:try_start_81 .. :try_end_84} :catchall_1bb

    move-result-object v2

    :goto_85
    :try_start_85
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    new-instance v0, Lcom/baidu/android/pushservice/f/f;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/f;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->a:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->m:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->e(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->h:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->f:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->g:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->c(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->e:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->b(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->n:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->h(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->i:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->j:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/f;->d(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/baidu/android/pushservice/f/f;->a(J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_181} :catch_183
    .catchall {:try_start_85 .. :try_end_181} :catchall_1c9

    goto/16 :goto_85

    :catch_183
    move-exception v0

    :goto_184
    :try_start_184
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a0
    .catchall {:try_start_184 .. :try_end_1a0} :catchall_1c9

    if-eqz v2, :cond_1a5

    :try_start_1a2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1a5
    if-eqz v4, :cond_1aa

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1aa
    :goto_1aa
    move-object v0, v1

    goto/16 :goto_a

    :cond_1ad
    if-eqz v2, :cond_1b2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1b2
    if-eqz v4, :cond_1aa

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1b7
    .catchall {:try_start_1a2 .. :try_end_1b7} :catchall_1b8

    goto :goto_1aa

    :catchall_1b8
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1bb
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1be
    if-eqz v2, :cond_1c3

    :try_start_1c0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1c3
    if-eqz v4, :cond_1c8

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1c8
    throw v0
    :try_end_1c9
    .catchall {:try_start_1c0 .. :try_end_1c9} :catchall_1b8

    :catchall_1c9
    move-exception v0

    goto :goto_1be

    :catch_1cb
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_184
.end method

.method public static declared-synchronized getBehaviorEnumCount(Landroid/content/Context;JJ)I
    .registers 14

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-class v4, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v4

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_fa

    move-result-object v5

    if-nez v5, :cond_d

    :goto_b
    monitor-exit v4

    return v0

    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM PushBehavior WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " >= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT COUNT(*) FROM ADPushBehavior WHERE "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$a;->c:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " < "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$a;->c:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " >= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_d .. :try_end_92} :catchall_fa

    move-result-object v6

    const/4 v3, 0x0

    :try_start_94
    invoke-virtual {v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9f} :catch_c5
    .catchall {:try_start_94 .. :try_end_9f} :catchall_ee

    move-result v1

    if-eqz v2, :cond_a5

    :try_start_a2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a5
    if-eqz v5, :cond_134

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_fa

    move v3, v1

    :goto_ab
    const/4 v1, 0x0

    :try_start_ac
    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b7} :catch_fd
    .catchall {:try_start_ac .. :try_end_b7} :catchall_125

    move-result v0

    if-eqz v2, :cond_bd

    :try_start_ba
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_bd
    if-eqz v5, :cond_c2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_fa

    :cond_c2
    :goto_c2
    add-int/2addr v0, v3

    goto/16 :goto_b

    :catch_c5
    move-exception v1

    :try_start_c6
    const-string v3, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_c6 .. :try_end_e2} :catchall_ee

    if-eqz v2, :cond_e7

    :try_start_e4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e7
    if-eqz v5, :cond_131

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v3, v0

    goto :goto_ab

    :catchall_ee
    move-exception v0

    if-eqz v2, :cond_f4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f4
    if-eqz v5, :cond_f9

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f9
    throw v0
    :try_end_fa
    .catchall {:try_start_e4 .. :try_end_fa} :catchall_fa

    :catchall_fa
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_fd
    move-exception v1

    :try_start_fe
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_fe .. :try_end_11a} :catchall_125

    if-eqz v2, :cond_11f

    :try_start_11c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11f
    if-eqz v5, :cond_c2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c2

    :catchall_125
    move-exception v0

    if-eqz v2, :cond_12b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12b
    if-eqz v5, :cond_130

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_130
    throw v0
    :try_end_131
    .catchall {:try_start_11c .. :try_end_131} :catchall_fa

    :cond_131
    move v3, v0

    goto/16 :goto_ab

    :cond_134
    move v3, v1

    goto/16 :goto_ab
.end method

.method private static getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDbOpenHelper(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/PushDatabase$e;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    :catch_d
    move-exception v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDb Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static getDbOpenHelper(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/PushDatabase$e;
    .registers 5

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase;->myLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    if-nez v0, :cond_67

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "baidu/pushservice/database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pushstat_4.5.1.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/android/pushservice/util/PushDatabase$e;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/baidu/android/pushservice/util/PushDatabase$e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    :cond_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6e

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase;->mDbHelper:Lcom/baidu/android/pushservice/util/PushDatabase$e;

    :goto_6a
    return-object v0

    :cond_6b
    const/4 v0, 0x0

    :try_start_6c
    monitor-exit v1

    goto :goto_6a

    :catchall_6e
    move-exception v0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_6e

    throw v0
.end method

.method public static declared-synchronized getFileDownloadingInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/PushDatabase$g;
    .registers 12

    const/4 v8, 0x0

    const-class v9, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_116

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v8

    :goto_b
    monitor-exit v9

    return-object v0

    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_116

    :try_start_38
    const-string v1, "FileDownloadingInfo"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_fa
    .catchall {:try_start_38 .. :try_end_41} :catchall_109

    move-result-object v2

    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_125

    new-instance v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$g;-><init>()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4d} :catch_11b
    .catchall {:try_start_42 .. :try_end_4d} :catchall_119

    :try_start_4d
    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->a:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->c:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->c:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->d:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->d:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->e:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->f:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->g:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->h:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->i:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->j:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->j:J
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_ed} :catch_11f
    .catchall {:try_start_4d .. :try_end_ed} :catchall_119

    :goto_ed
    if-eqz v2, :cond_f2

    :try_start_ef
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f2
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    goto/16 :goto_b

    :catch_fa
    move-exception v1

    move-object v1, v8

    :goto_fc
    if-eqz v8, :cond_101

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_101
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    goto/16 :goto_b

    :catchall_109
    move-exception v1

    move-object v2, v8

    :goto_10b
    if-eqz v2, :cond_110

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_110
    if-eqz v0, :cond_115

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_115
    throw v1
    :try_end_116
    .catchall {:try_start_ef .. :try_end_116} :catchall_116

    :catchall_116
    move-exception v0

    monitor-exit v9

    throw v0

    :catchall_119
    move-exception v1

    goto :goto_10b

    :catch_11b
    move-exception v1

    move-object v1, v8

    move-object v8, v2

    goto :goto_fc

    :catch_11f
    move-exception v3

    move-object v8, v2

    goto :goto_fc

    :cond_122
    move-object v0, v1

    goto/16 :goto_b

    :cond_125
    move-object v1, v8

    goto :goto_ed
.end method

.method public static declared-synchronized getLappVisitedInfoByTime(Landroid/content/Context;J)Z
    .registers 14

    const/4 v8, 0x0

    const-class v9, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_5b

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v8

    :goto_b
    monitor-exit v9

    return v0

    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/PushDatabase$i;->f:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "LappMsgInfo"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->g:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5e

    const/4 v8, 0x1

    move v1, v8

    :goto_53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_5b

    move v0, v1

    goto :goto_b

    :catchall_5b
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_5e
    move v1, v8

    goto :goto_53
.end method

.method public static declared-synchronized getNoDisturb(Landroid/content/Context;Ljava/lang/String;)[I
    .registers 13

    const/4 v8, 0x0

    const-class v9, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_142

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v8

    :goto_b
    monitor-exit v9

    return-object v0

    :cond_d
    :try_start_d
    const-string v1, "NoDisturb"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$j;->a:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_10a
    .catchall {:try_start_d .. :try_end_35} :catchall_135

    move-result-object v2

    if-eqz v2, :cond_ea

    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ea

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$j;->b:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$j;->c:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$j;->d:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$j;->e:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " disturb data is found! startHour: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " startMinute: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " endHour: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " endMinute: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    if-nez v3, :cond_ce

    if-nez v4, :cond_ce

    if-nez v5, :cond_ce

    if-nez v6, :cond_ce

    const/4 v1, 0x0

    new-array v1, v1, [I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_c1} :catch_147
    .catchall {:try_start_38 .. :try_end_c1} :catchall_145

    if-eqz v0, :cond_c6

    :try_start_c3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c6
    if-eqz v2, :cond_cb

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_142

    :cond_cb
    move-object v0, v1

    goto/16 :goto_b

    :cond_ce
    const/4 v1, 0x4

    :try_start_cf
    new-array v1, v1, [I

    const/4 v7, 0x0

    aput v3, v1, v7

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v5, v1, v3

    const/4 v3, 0x3

    aput v6, v1, v3
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_dd} :catch_147
    .catchall {:try_start_cf .. :try_end_dd} :catchall_145

    if-eqz v0, :cond_e2

    :try_start_df
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e2
    if-eqz v2, :cond_e7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e7
    .catchall {:try_start_df .. :try_end_e7} :catchall_142

    :cond_e7
    move-object v0, v1

    goto/16 :goto_b

    :cond_ea
    :try_start_ea
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_f7

    const-string v1, "PushDatabase"

    const-string v3, "no disturb data not found use default value"

    invoke-static {v1, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    const/4 v1, 0x4

    new-array v1, v1, [I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_fa} :catch_147
    .catchall {:try_start_ea .. :try_end_fa} :catchall_145

    fill-array-data v1, :array_14a

    if-eqz v0, :cond_102

    :try_start_ff
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_102
    if-eqz v2, :cond_107

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_107
    .catchall {:try_start_ff .. :try_end_107} :catchall_142

    :cond_107
    move-object v0, v1

    goto/16 :goto_b

    :catch_10a
    move-exception v1

    move-object v2, v8

    :goto_10c
    :try_start_10c
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_10c .. :try_end_128} :catchall_145

    if-eqz v0, :cond_12d

    :try_start_12a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12d
    if-eqz v2, :cond_132

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_132
    move-object v0, v8

    goto/16 :goto_b

    :catchall_135
    move-exception v1

    move-object v2, v8

    :goto_137
    if-eqz v0, :cond_13c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_13c
    if-eqz v2, :cond_141

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_141
    throw v1
    :try_end_142
    .catchall {:try_start_12a .. :try_end_142} :catchall_142

    :catchall_142
    move-exception v0

    monitor-exit v9

    throw v0

    :catchall_145
    move-exception v1

    goto :goto_137

    :catch_147
    move-exception v1

    goto :goto_10c

    nop

    :array_14a
    .array-data 4
        0x17
        0x0
        0x7
        0x0
    .end array-data
.end method

.method public static declared-synchronized getWifiActionBehaviorEnumClassList(Landroid/content/Context;JJII)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/f/v;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v3, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_185

    move-result-object v4

    if-nez v4, :cond_c

    :goto_a
    monitor-exit v3

    return-object v0

    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM WifiActionBehavior WHERE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->c:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->c:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " >= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIMIT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OFFSET "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_185

    const/4 v5, 0x0

    :try_start_81
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_198
    .catchall {:try_start_81 .. :try_end_84} :catchall_188

    move-result-object v2

    :goto_85
    :try_start_85
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17a

    new-instance v0, Lcom/baidu/android/pushservice/f/v;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/v;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->a:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->b:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->d:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->j:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->h(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->c:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/baidu/android/pushservice/f/v;->a(J)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->e:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->f:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->g:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->h:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->i:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$m;->k:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/v;->b(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_14e} :catch_150
    .catchall {:try_start_85 .. :try_end_14e} :catchall_196

    goto/16 :goto_85

    :catch_150
    move-exception v0

    :goto_151
    :try_start_151
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_151 .. :try_end_16d} :catchall_196

    if-eqz v2, :cond_172

    :try_start_16f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_172
    if-eqz v4, :cond_177

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_177
    :goto_177
    move-object v0, v1

    goto/16 :goto_a

    :cond_17a
    if-eqz v2, :cond_17f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_17f
    if-eqz v4, :cond_177

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_184
    .catchall {:try_start_16f .. :try_end_184} :catchall_185

    goto :goto_177

    :catchall_185
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_188
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_18b
    if-eqz v2, :cond_190

    :try_start_18d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_190
    if-eqz v4, :cond_195

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_195
    throw v0
    :try_end_196
    .catchall {:try_start_18d .. :try_end_196} :catchall_185

    :catchall_196
    move-exception v0

    goto :goto_18b

    :catch_198
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_151
.end method

.method public static getWifiBehaviorEnumClassList(Landroid/content/Context;JJII)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/f/x;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM WifiInfo WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->c:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->c:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OFFSET "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_65
    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_101
    .catchall {:try_start_65 .. :try_end_68} :catchall_f1

    move-result-object v2

    :goto_69
    :try_start_69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    new-instance v0, Lcom/baidu/android/pushservice/f/x;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/x;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->a:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/f/x;->a(I)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->b:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/f/x;->a(Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->c:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/baidu/android/pushservice/f/x;->a(J)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->d:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/f/x;->b(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_bb} :catch_bc
    .catchall {:try_start_69 .. :try_end_bb} :catchall_ff

    goto :goto_69

    :catch_bc
    move-exception v0

    :goto_bd
    :try_start_bd
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_bd .. :try_end_d9} :catchall_ff

    if-eqz v2, :cond_de

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_de
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e3
    :goto_e3
    move-object v0, v1

    goto/16 :goto_7

    :cond_e6
    if-eqz v2, :cond_eb

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_eb
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_e3

    :catchall_f1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_f4
    if-eqz v2, :cond_f9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f9
    if-eqz v3, :cond_fe

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_fe
    throw v0

    :catchall_ff
    move-exception v0

    goto :goto_f4

    :catch_101
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_bd
.end method

.method public static declared-synchronized insertADPushBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/b;)J
    .registers 10

    const-wide/16 v0, -0x1

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b5

    move-result-object v3

    if-nez v3, :cond_d

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->b:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->c:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/baidu/android/pushservice/f/b;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->d:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/b;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/baidu/android/pushservice/f/b;->k:Ljava/lang/String;

    if-eqz v5, :cond_46

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->j:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/b;->k:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->h:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->e:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/b;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->f:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->g:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->i:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/b;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$a;->k:Lcom/baidu/android/pushservice/util/PushDatabase$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$a;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_d .. :try_end_94} :catchall_b5

    :try_start_94
    const-string v5, "ADPushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_b0

    sget v4, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_b0

    sget v4, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_b0

    const-string v4, "pushadvertise:  insert into database"

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/f;->b(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b0} :catch_b8
    .catchall {:try_start_94 .. :try_end_b0} :catchall_b5

    :cond_b0
    :goto_b0
    :try_start_b0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b5

    goto/16 :goto_b

    :catchall_b5
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_b8
    move-exception v4

    goto :goto_b0
.end method

.method public static declared-synchronized insertAgentOrHttpBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J
    .registers 10

    const-wide/16 v0, 0x0

    const-class v3, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v3

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_72

    move-result-object v4

    if-nez v4, :cond_f

    const-wide/16 v0, -0x1

    :cond_d
    :goto_d
    monitor-exit v3

    return-wide v0

    :cond_f
    :try_start_f
    invoke-static {v4, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->needToInsertUpdatePromptBehavior(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/f/j;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/j;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/baidu/android/pushservice/f/j;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/j;->i:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->j:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/j;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/j;->k:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_72

    :try_start_67
    const-string v5, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_75
    .catchall {:try_start_67 .. :try_end_6d} :catchall_72

    move-result-wide v0

    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_d

    :catchall_72
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_75
    move-exception v2

    :try_start_76
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertAgentOrHttpBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_72

    goto :goto_6e
.end method

.method public static declared-synchronized insertApiBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J
    .registers 10

    const-class v4, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_83

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v4

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/f/c;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->h:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->i:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/f/c;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p1, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_76

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->m:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_d .. :try_end_76} :catchall_83

    :cond_76
    const-wide/16 v2, 0x0

    :try_start_78
    const-string v1, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_86
    .catchall {:try_start_78 .. :try_end_7e} :catchall_83

    move-result-wide v0

    :goto_7f
    :try_start_7f
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_b

    :catchall_83
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_86
    move-exception v0

    :try_start_87
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_a5

    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertApiBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_87 .. :try_end_a5} :catchall_83

    :cond_a5
    move-wide v0, v2

    goto :goto_7f
.end method

.method public static declared-synchronized insertAppInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/f/k;)J
    .registers 10

    const-wide/16 v0, 0x0

    const-class v3, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v3

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b4

    move-result-object v4

    if-nez v4, :cond_f

    const-wide/16 v0, -0x1

    :cond_d
    :goto_d
    monitor-exit v3

    return-wide v0

    :cond_f
    :try_start_f
    invoke-static {v4, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->needToInsertUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/f/k;)Lcom/baidu/android/pushservice/f/k;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->b:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->c:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->j()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->d:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->e:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->f:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->g:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->h:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->i:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->j:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->k:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a8
    .catchall {:try_start_f .. :try_end_a8} :catchall_b4

    :try_start_a8
    const-string v5, "AppInfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ae} :catch_b7
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_b4

    move-result-wide v0

    :cond_af
    :goto_af
    :try_start_af
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b4

    goto/16 :goto_d

    :catchall_b4
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_b7
    move-exception v2

    :try_start_b8
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v5

    if-eqz v5, :cond_af

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertAppInfo E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_b8 .. :try_end_d6} :catchall_b4

    goto :goto_af
.end method

.method public static declared-synchronized insertCrashBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/g;)J
    .registers 10

    const-class v4, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5a

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v4

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/f/g;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->h:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_5a

    const-wide/16 v2, 0x0

    :try_start_4f
    const-string v1, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_5d
    .catchall {:try_start_4f .. :try_end_55} :catchall_5a

    move-result-wide v0

    :goto_56
    :try_start_56
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_b

    :catchall_5a
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_5d
    move-exception v0

    :try_start_5e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertCrashBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_5e .. :try_end_7c} :catchall_5a

    :cond_7c
    move-wide v0, v2

    goto :goto_56
.end method

.method public static declared-synchronized insertFileDownloadingInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/util/PushDatabase$g;)J
    .registers 8

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9e

    move-result-object v3

    if-nez v3, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->a:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->c:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->d:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->e:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->f:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->g:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->h:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->i:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->j:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "FileDownloadingInfo"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9c
    .catchall {:try_start_d .. :try_end_9c} :catchall_9e

    goto/16 :goto_b

    :catchall_9e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized insertLappMsgInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/util/PushDatabase$h;)J
    .registers 10

    const-class v4, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_68

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v4

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->b:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->c:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->d:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->e:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->f:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$i;->g:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_68

    const-wide/16 v2, 0x0

    :try_start_5d
    const-string v1, "LappMsgInfo"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_6b
    .catchall {:try_start_5d .. :try_end_63} :catchall_68

    move-result-wide v0

    :goto_64
    :try_start_64
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_b

    :catchall_68
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_6b
    move-exception v0

    :try_start_6c
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertLappMsgInfo E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_68

    :cond_8a
    move-wide v0, v2

    goto :goto_64
.end method

.method public static declared-synchronized insertPromptBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J
    .registers 10

    const-class v4, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6d

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v4

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/f/j;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->j:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/f/j;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/f/j;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_d .. :try_end_60} :catchall_6d

    const-wide/16 v2, 0x0

    :try_start_62
    const-string v1, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_68} :catch_70
    .catchall {:try_start_62 .. :try_end_68} :catchall_6d

    move-result-wide v0

    :goto_69
    :try_start_69
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_b

    :catchall_6d
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_70
    move-exception v0

    :try_start_71
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertPromptBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_71 .. :try_end_8f} :catchall_6d

    :cond_8f
    move-wide v0, v2

    goto :goto_69
.end method

.method public static declared-synchronized insertPushBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/l;)J
    .registers 10

    const-wide/16 v0, -0x1

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_99

    move-result-object v3

    if-nez v3, :cond_d

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/l;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/baidu/android/pushservice/f/l;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/l;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/baidu/android/pushservice/f/l;->k:Ljava/lang/String;

    if-eqz v5, :cond_46

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/l;->k:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->e:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/l;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->f:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/l;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->g:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/l;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/f/l;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p1, Lcom/baidu/android/pushservice/f/l;->d:Ljava/lang/String;

    if-eqz v5, :cond_8d

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$c;->n:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/l;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_d .. :try_end_8d} :catchall_99

    :cond_8d
    :try_start_8d
    const-string v5, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_93} :catch_9c
    .catchall {:try_start_8d .. :try_end_93} :catchall_99

    move-result-wide v0

    :goto_94
    :try_start_94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_99

    goto/16 :goto_b

    :catchall_99
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_9c
    move-exception v4

    goto :goto_94
.end method

.method public static declared-synchronized insertStatisticsInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/util/PushDatabase$k;)J
    .registers 7

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_72

    move-result-object v3

    if-nez v3, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->b:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->d:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->c:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->e:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->f:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->g:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_67

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$l;->h:Lcom/baidu/android/pushservice/util/PushDatabase$l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$l;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/PushDatabase$k;->h:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    const-string v1, "StatisticsInfo"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_71
    .catchall {:try_start_d .. :try_end_71} :catchall_72

    goto :goto_b

    :catchall_72
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized insertWifiActionBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/u;)J
    .registers 11

    const-wide/16 v0, -0x1

    const-class v4, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v4

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b2

    move-result-object v5

    if-nez v5, :cond_d

    :goto_b
    monitor-exit v4

    return-wide v0

    :cond_d
    :try_start_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->b:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->c:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p1, Lcom/baidu/android/pushservice/f/u;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->d:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/baidu/android/pushservice/f/u;->k:Ljava/lang/String;

    if-eqz v3, :cond_46

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->j:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    iget-object v3, p1, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    if-eqz v3, :cond_55

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->e:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->f:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->g:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->h:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->i:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/f/u;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$m;->k:Lcom/baidu/android/pushservice/util/PushDatabase$m;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$m;->name()Ljava/lang/String;

    move-result-object v3

    iget v6, p1, Lcom/baidu/android/pushservice/f/u;->v:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_b2

    :try_start_90
    const-string v3, "WifiActionBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_96} :catch_b5
    .catchall {:try_start_90 .. :try_end_96} :catchall_b2

    move-result-wide v2

    :try_start_97
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_ac

    sget v0, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_ac

    sget v0, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_ac

    const-string v0, "pushwifibehavior:  insert into database"

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->b(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ac} :catch_c4
    .catchall {:try_start_97 .. :try_end_ac} :catchall_b2

    :cond_ac
    move-wide v0, v2

    :goto_ad
    :try_start_ad
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b2

    goto/16 :goto_b

    :catchall_b2
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_b5
    move-exception v2

    move-object v8, v2

    move-wide v2, v0

    move-object v0, v8

    :goto_b9
    :try_start_b9
    const-string v1, "PushDatabase"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_b2

    move-wide v0, v2

    goto :goto_ad

    :catch_c4
    move-exception v0

    goto :goto_b9
.end method

.method public static insertWifiBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/w;)J
    .registers 10

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->b:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/android/pushservice/f/w;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->c:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p1, Lcom/baidu/android/pushservice/f/w;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$n;->d:Lcom/baidu/android/pushservice/util/PushDatabase$n;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$n;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/android/pushservice/f/w;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_33
    const-string v4, "WifiInfo"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_4b

    move-result-wide v0

    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "PushDatabase"

    const-string v4, "insertWifiBehavior again "

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    :catch_4b
    move-exception v3

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "PushDatabase"

    const-string v4, "insertWifiBehavior failure"

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private static needToInsertUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/f/k;)Lcom/baidu/android/pushservice/f/k;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Lcom/baidu/android/pushservice/f/k;

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/f/k;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM AppInfo WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$b;->b:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_3b
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_102
    .catchall {:try_start_3b .. :try_end_3e} :catchall_129

    move-result-object v2

    const/4 v3, 0x0

    :try_start_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f1

    const/4 v3, 0x1

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$b;->a:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$b;->e:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->f()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$b;->h:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ee

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/PushDatabase$b;->i:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ee

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/k;->i()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$b;->k:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f1

    :cond_ee
    invoke-static {p0, v4, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->updateAppInfo(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/f/k;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_f1} :catch_134
    .catchall {:try_start_40 .. :try_end_f1} :catchall_132

    :cond_f1
    if-eqz v3, :cond_fb

    if-eqz v2, :cond_f8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f8
    move-object v0, v1

    goto/16 :goto_3

    :cond_fb
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catch_102
    move-exception v1

    move-object v2, v0

    :goto_104
    :try_start_104
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_122

    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToInsertUpdate Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_104 .. :try_end_122} :catchall_132

    :cond_122
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_129
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_12c
    if-eqz v2, :cond_131

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_131
    throw v0

    :catchall_132
    move-exception v0

    goto :goto_12c

    :catch_134
    move-exception v1

    goto :goto_104
.end method

.method private static needToInsertUpdatePromptBehavior(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/f/j;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM PushBehavior WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/f/j;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/android/pushservice/f/j;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_4e
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$c;->j:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/baidu/android/pushservice/f/j;->a:I

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->updatePromptBehavior(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/f/j;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6b} :catch_7b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_a0

    move v3, v0

    :goto_6c
    if-eqz v3, :cond_74

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_74
    if-eqz v2, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_79
    :goto_79
    move v0, v1

    goto :goto_5

    :catch_7b
    move-exception v0

    :try_start_7c
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_9a

    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToInsertUpdatePromptBehavior Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_7c .. :try_end_9a} :catchall_a0

    :cond_9a
    if-eqz v2, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_79

    :catchall_a0
    move-exception v0

    if-eqz v2, :cond_a6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a6
    throw v0

    :cond_a7
    move v3, v1

    goto :goto_6c
.end method

.method public static declared-synchronized selectFileDownloadingInfo(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/util/PushDatabase$g;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const-class v10, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v10

    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_ff

    move-result-object v0

    if-nez v0, :cond_12

    move-object v0, v8

    :goto_10
    monitor-exit v10

    return-object v0

    :cond_12
    :try_start_12
    const-string v1, "FileDownloadingInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/baidu/android/pushservice/util/PushDatabase$f;->j:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " DESC"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_112
    .catchall {:try_start_12 .. :try_end_35} :catchall_102

    move-result-object v1

    :goto_36
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    new-instance v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;

    invoke-direct {v2}, Lcom/baidu/android/pushservice/util/PushDatabase$g;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->a:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->c:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->c:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->d:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->d:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->e:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->f:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->g:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->h:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->i:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    sget-object v3, Lcom/baidu/android/pushservice/util/PushDatabase$f;->j:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->j:J

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_e4} :catch_e6
    .catchall {:try_start_36 .. :try_end_e4} :catchall_10e

    goto/16 :goto_36

    :catch_e6
    move-exception v2

    :goto_e7
    if-eqz v1, :cond_ec

    :try_start_e9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ec
    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f1
    :goto_f1
    move-object v0, v8

    goto/16 :goto_10

    :cond_f4
    if-eqz v1, :cond_f9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f9
    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_fe
    .catchall {:try_start_e9 .. :try_end_fe} :catchall_ff

    goto :goto_f1

    :catchall_ff
    move-exception v0

    monitor-exit v10

    throw v0

    :catchall_102
    move-exception v1

    :goto_103
    if-eqz v9, :cond_108

    :try_start_105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_108
    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10d
    throw v1
    :try_end_10e
    .catchall {:try_start_105 .. :try_end_10e} :catchall_ff

    :catchall_10e
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    goto :goto_103

    :catch_112
    move-exception v1

    move-object v1, v9

    goto :goto_e7
.end method

.method public static declared-synchronized setNoDisturbMode(Landroid/content/Context;Ljava/lang/String;IIII)J
    .registers 20

    const-class v13, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v13

    const-wide/16 v10, -0x1

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1df

    move-result-object v2

    if-nez v2, :cond_e

    move-wide v2, v10

    :goto_c
    monitor-exit v13

    return-wide v2

    :cond_e
    const/4 v12, 0x0

    :try_start_f
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_5d

    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setNoDisturbMode -- startHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startMinute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endMinute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    const-string v3, "NoDisturb"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$j;->a:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$j;->a:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_90} :catch_1a4
    .catchall {:try_start_f .. :try_end_90} :catchall_1d2

    move-result-object v6

    :try_start_91
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$j;->a:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$j;->b:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$j;->c:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$j;->d:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$j;->e:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v6, :cond_17e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17e

    if-nez p2, :cond_139

    if-nez p3, :cond_139

    if-nez p4, :cond_139

    if-nez p5, :cond_139

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_101

    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete No Disturb record for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    const-string v3, "NoDisturb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$j;->a:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_125} :catch_1e4
    .catchall {:try_start_91 .. :try_end_125} :catchall_1e2

    move-result v3

    int-to-long v4, v3

    :goto_127
    if-eqz v6, :cond_12c

    :try_start_129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12c} :catch_1e7
    .catchall {:try_start_129 .. :try_end_12c} :catchall_1e2

    :cond_12c
    if-eqz v2, :cond_131

    :try_start_12e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_131
    if-eqz v6, :cond_1e9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_136
    .catchall {:try_start_12e .. :try_end_136} :catchall_1df

    move-wide v2, v4

    goto/16 :goto_c

    :cond_139
    :try_start_139
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_157

    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update No Disturb record for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_157
    const-string v4, "NoDisturb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/PushDatabase$j;->a:Lcom/baidu/android/pushservice/util/PushDatabase$j;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/PushDatabase$j;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "= ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    goto :goto_127

    :cond_17e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_19c

    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add No Disturb record for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19c
    const-string v4, "NoDisturb"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_1a2} :catch_1e4
    .catchall {:try_start_139 .. :try_end_1a2} :catchall_1e2

    move-result-wide v4

    goto :goto_127

    :catch_1a4
    move-exception v3

    move-object v6, v12

    move-wide v4, v10

    :goto_1a7
    :try_start_1a7
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v7

    if-eqz v7, :cond_1c5

    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNoDisturbMode Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c5
    .catchall {:try_start_1a7 .. :try_end_1c5} :catchall_1e2

    :cond_1c5
    if-eqz v2, :cond_1ca

    :try_start_1c7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1ca
    if-eqz v6, :cond_1e9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-wide v2, v4

    goto/16 :goto_c

    :catchall_1d2
    move-exception v3

    move-object v6, v12

    :goto_1d4
    if-eqz v2, :cond_1d9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1d9
    if-eqz v6, :cond_1de

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1de
    throw v3
    :try_end_1df
    .catchall {:try_start_1c7 .. :try_end_1df} :catchall_1df

    :catchall_1df
    move-exception v2

    monitor-exit v13

    throw v2

    :catchall_1e2
    move-exception v3

    goto :goto_1d4

    :catch_1e4
    move-exception v3

    move-wide v4, v10

    goto :goto_1a7

    :catch_1e7
    move-exception v3

    goto :goto_1a7

    :cond_1e9
    move-wide v2, v4

    goto/16 :goto_c
.end method

.method private static updateAppInfo(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/f/k;)I
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->a:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->b:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->c:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->d:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->e:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->f:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->g:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->h:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->i:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->j:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$b;->k:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/f/k;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    :try_start_c7
    const-string v3, "AppInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/PushDatabase$b;->a:Lcom/baidu/android/pushservice/util/PushDatabase$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/PushDatabase$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e5} :catch_e8

    move-result v0

    goto/16 :goto_3

    :catch_e8
    move-exception v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppInfo exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static declared-synchronized updateFileDownloadingInfo(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/util/PushDatabase$g;)I
    .registers 11

    const/4 v0, 0x0

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_bc

    move-result-object v3

    if-nez v3, :cond_c

    :goto_a
    monitor-exit v2

    return v0

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->a:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->a:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->c:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->d:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->e:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->e:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->f:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->f:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->g:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->h:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->i:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v5, p2, Lcom/baidu/android/pushservice/util/PushDatabase$g;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/PushDatabase$f;->j:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_97
    .catchall {:try_start_d .. :try_end_97} :catchall_bc

    const/4 v1, -0x1

    :try_start_98
    const-string v5, "FileDownloadingInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/PushDatabase$f;->b:Lcom/baidu/android/pushservice/util/PushDatabase$f;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/PushDatabase$f;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b6} :catch_bf
    .catchall {:try_start_98 .. :try_end_b6} :catchall_bc

    move-result v0

    :goto_b7
    :try_start_b7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bc

    goto/16 :goto_a

    :catchall_bc
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_bf
    move-exception v0

    :try_start_c0
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_de

    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFileDownloadingInfo Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_c0 .. :try_end_de} :catchall_bc

    :cond_de
    move v0, v1

    goto :goto_b7
.end method

.method public static declared-synchronized updateLappVisitedInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/util/PushDatabase$h;)J
    .registers 10

    const-class v2, Lcom/baidu/android/pushservice/util/PushDatabase;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/PushDatabase;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_97

    move-result-object v3

    if-nez v3, :cond_d

    const-wide/16 v0, -0x1

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    const/4 v0, 0x1

    :try_start_e
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$i;->b:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$i;->c:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$i;->d:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$i;->e:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$i;->f:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p1, Lcom/baidu/android/pushservice/util/PushDatabase$h;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$i;->g:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$i;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "LappMsgInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/PushDatabase$i;->f:Lcom/baidu/android/pushservice/util/PushDatabase$i;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_95
    .catchall {:try_start_e .. :try_end_95} :catchall_97

    goto/16 :goto_b

    :catchall_97
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static updatePromptBehavior(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/f/j;)I
    .registers 7

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    :goto_3
    return v0

    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/j;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$c;->c:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/baidu/android/pushservice/f/j;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$c;->d:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/j;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$c;->j:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/baidu/android/pushservice/f/j;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/baidu/android/pushservice/f/j;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/PushDatabase$c;->l:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/f/j;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :try_start_5a
    const-string v2, "PushBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$c;->b:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/f/j;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/PushDatabase$c;->k:Lcom/baidu/android/pushservice/util/PushDatabase$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/PushDatabase$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/android/pushservice/f/j;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a7} :catch_a9

    goto/16 :goto_3

    :catch_a9
    move-exception v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePromptBehavior Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
