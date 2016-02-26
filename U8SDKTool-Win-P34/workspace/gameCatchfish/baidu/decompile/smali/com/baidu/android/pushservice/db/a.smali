.class public Lcom/baidu/android/pushservice/db/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/db/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/db/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/db/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static a()Lcom/baidu/android/pushservice/db/a;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/db/a$a;->a:Lcom/baidu/android/pushservice/db/a;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;II)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_58

    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v2

    :cond_b
    :goto_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_50

    if-eq v5, p2, :cond_17

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_b

    :cond_17
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/db/a;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v4

    if-ne v5, p3, :cond_43

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21
    .catchall {:try_start_5 .. :try_end_20} :catchall_4b

    goto :goto_b

    :catch_21
    move-exception v0

    :try_start_22
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_4b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_42
    return-object v0

    :cond_43
    add-int/lit8 v0, v0, 0x1

    if-gt v0, p3, :cond_50

    :try_start_47
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4a} :catch_21
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_b

    :catchall_4b
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_50
    :try_start_50
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_53} :catch_21
    .catchall {:try_start_50 .. :try_end_53} :catchall_4b

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_42

    :cond_58
    move-object v0, v1

    goto :goto_42
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    const-string v1, "subscribe"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "host_channel"

    aput-object v3, v2, v0

    const-string v3, "appid=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_56

    move-result-object v1

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v9

    :goto_4c
    if-ge v0, v3, :cond_7a

    aget-object v4, v2, v0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_53} :catch_80

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :catch_56
    move-exception v0

    move-object v1, v8

    :goto_58
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7f
    return-object v10

    :catch_80
    move-exception v0

    goto :goto_58
.end method

.method private a(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msgid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "link"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "id"

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "time"

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;)I
    .registers 13

    const/4 v8, -0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_49

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    :try_start_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_ef
    .catchall {:try_start_a .. :try_end_d} :catchall_11e

    move-result v2

    if-eqz v2, :cond_1b

    :cond_10
    if-eqz v9, :cond_15

    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_49

    move v0, v8

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    :try_start_1b
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    if-nez p1, :cond_4c

    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_ef
    .catchall {:try_start_1b .. :try_end_3b} :catchall_11e

    move-result-object v1

    :goto_3c
    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_12b
    .catchall {:try_start_3c .. :try_end_3f} :catchall_128

    move-result v0

    if-eqz v1, :cond_45

    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_49

    goto :goto_19

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c
    :try_start_4c
    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3c

    :cond_7a
    if-nez p1, :cond_aa

    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=? AND appid=? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3c

    :cond_aa
    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=? AND appid=? AND type=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_ec} :catch_ef
    .catchall {:try_start_4c .. :try_end_ec} :catchall_11e

    move-result-object v1

    goto/16 :goto_3c

    :catch_ef
    move-exception v0

    move-object v1, v9

    :goto_f1
    :try_start_f1
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_113

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_f1 .. :try_end_113} :catchall_128

    :cond_113
    if-eqz v1, :cond_118

    :try_start_115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_118
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move v0, v8

    goto/16 :goto_19

    :catchall_11e
    move-exception v0

    :goto_11f
    if-eqz v9, :cond_124

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_124
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_128
    .catchall {:try_start_115 .. :try_end_128} :catchall_49

    :catchall_128
    move-exception v0

    move-object v9, v1

    goto :goto_11f

    :catch_12b
    move-exception v0

    goto :goto_f1
.end method

.method public declared-synchronized a(Ljava/lang/String;)J
    .registers 14

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_67

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_72
    .catchall {:try_start_b .. :try_end_e} :catchall_a1

    move-result v2

    if-eqz v2, :cond_1c

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_67

    :cond_19
    move-wide v0, v8

    :cond_1a
    :goto_1a
    monitor-exit p0

    return-wide v0

    :cond_1c
    :try_start_1c
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "apikey"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_blacked"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_blacked"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_48} :catch_72
    .catchall {:try_start_1c .. :try_end_48} :catchall_a1

    move-result-object v2

    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    const-string v1, "weak_subscribe"

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_b1
    .catchall {:try_start_49 .. :try_end_5c} :catchall_ab

    move-result v0

    int-to-long v0, v0

    :goto_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_67

    goto :goto_1a

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6a
    :try_start_6a
    const-string v1, "weak_subscribe"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_70} :catch_b1
    .catchall {:try_start_6a .. :try_end_70} :catchall_ab

    move-result-wide v0

    goto :goto_5e

    :catch_72
    move-exception v0

    move-object v1, v10

    :goto_74
    :try_start_74
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_96

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blackWeakSubscribe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_ae

    :cond_96
    :try_start_96
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_9e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9e
    move-wide v0, v8

    goto/16 :goto_1a

    :catchall_a1
    move-exception v0

    :goto_a2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_aa

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw v0
    :try_end_ab
    .catchall {:try_start_96 .. :try_end_ab} :catchall_67

    :catchall_ab
    move-exception v0

    move-object v10, v2

    goto :goto_a2

    :catchall_ae
    move-exception v0

    move-object v10, v1

    goto :goto_a2

    :catch_b1
    move-exception v0

    move-object v1, v2

    goto :goto_74
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6a

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_75
    .catchall {:try_start_8 .. :try_end_b} :catchall_a5

    move-result v1

    if-eqz v1, :cond_1a

    :cond_e
    const-wide/16 v0, -0x1

    :try_start_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_6a

    :cond_18
    :goto_18
    monitor-exit p0

    return-wide v0

    :cond_1a
    :try_start_1a
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appid"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apikey"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_logo"

    invoke-virtual {v9, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4b} :catch_75
    .catchall {:try_start_1a .. :try_end_4b} :catchall_a5

    move-result-object v2

    :try_start_4c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "app_info"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5f} :catch_b2
    .catchall {:try_start_4c .. :try_end_5f} :catchall_af

    move-result v0

    int-to-long v0, v0

    :goto_61
    :try_start_61
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_6a

    goto :goto_18

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6d
    :try_start_6d
    const-string v1, "app_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_b2
    .catchall {:try_start_6d .. :try_end_73} :catchall_af

    move-result-wide v0

    goto :goto_61

    :catch_75
    move-exception v0

    move-object v2, v8

    :goto_77
    :try_start_77
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_99

    const-string v1, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_77 .. :try_end_99} :catchall_af

    :cond_99
    const-wide/16 v0, -0x1

    :try_start_9b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_a5
    move-exception v0

    :goto_a6
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_ae

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_ae
    throw v0
    :try_end_af
    .catchall {:try_start_9b .. :try_end_af} :catchall_6a

    :catchall_af
    move-exception v0

    move-object v8, v2

    goto :goto_a6

    :catch_b2
    move-exception v0

    goto :goto_77
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 17

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c6

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d6
    .catchall {:try_start_8 .. :try_end_b} :catchall_106

    move-result v1

    if-eqz v1, :cond_1a

    :cond_e
    const-wide/16 v0, -0x1

    :try_start_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_c6

    :cond_18
    :goto_18
    monitor-exit p0

    return-wide v0

    :cond_1a
    :try_start_1a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appid"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apikey"

    invoke-virtual {v10, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    invoke-virtual {v10, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_logo"

    invoke-virtual {v10, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "sub_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "is_bind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p5, :cond_115

    const-string v9, "other"

    :goto_4e
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "host_channel"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_66} :catch_d6
    .catchall {:try_start_1a .. :try_end_66} :catchall_106

    move-result-object v2

    :try_start_67
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a8

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v9

    :goto_84
    if-ge v3, v5, :cond_a8

    aget-object v6, v4, v3

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_a8
    const-string v3, "host_channel"

    invoke-virtual {v10, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subscribe"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_ba} :catch_113
    .catchall {:try_start_67 .. :try_end_ba} :catchall_111

    move-result v0

    int-to-long v0, v0

    :goto_bc
    :try_start_bc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_c6

    goto/16 :goto_18

    :catchall_c6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c9
    :try_start_c9
    const-string v1, "host_channel"

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subscribe"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d4} :catch_113
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_111

    move-result-wide v0

    goto :goto_bc

    :catch_d6
    move-exception v0

    move-object v2, v8

    :goto_d8
    :try_start_d8
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_fa

    const-string v1, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_d8 .. :try_end_fa} :catchall_111

    :cond_fa
    const-wide/16 v0, -0x1

    :try_start_fc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_106
    move-exception v0

    move-object v2, v8

    :goto_108
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_110

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_110
    throw v0
    :try_end_111
    .catchall {:try_start_fc .. :try_end_111} :catchall_c6

    :catchall_111
    move-exception v0

    goto :goto_108

    :catch_113
    move-exception v0

    goto :goto_d8

    :cond_115
    move-object/from16 v9, p5

    goto/16 :goto_4e
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)J
    .registers 15

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_56

    :goto_c
    monitor-exit p0

    return-wide v0

    :cond_e
    :try_start_e
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "msgid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appid"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "link"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "message"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_51} :catch_59
    .catchall {:try_start_e .. :try_end_51} :catchall_80

    move-result-wide v0

    :try_start_52
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_c

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_59
    move-exception v2

    :try_start_5a
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_5a .. :try_end_7c} :catchall_80

    :cond_7c
    :try_start_7c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_c

    :catchall_80
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_56
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 20

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_97

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_e

    :try_start_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_108
    .catchall {:try_start_8 .. :try_end_b} :catchall_138

    move-result v3

    if-eqz v3, :cond_1a

    :cond_e
    const-wide/16 v2, -0x1

    :try_start_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_18

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_97

    :cond_18
    :goto_18
    monitor-exit p0

    return-wide v2

    :cond_1a
    :try_start_1a
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "apikey"

    invoke-virtual {v11, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appid"

    invoke-virtual {v11, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "app_name"

    invoke-virtual {v11, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "app_logo"

    move-object/from16 v0, p4

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "sub_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "is_blacked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "push_token"

    move-object/from16 v0, p7

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v3, "other"

    :cond_5b
    const-string v3, "weak_subscribe"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sub_tags"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "is_blacked"

    aput-object v6, v4, v5

    const-string v5, "apikey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_78} :catch_108
    .catchall {:try_start_1a .. :try_end_78} :catchall_138

    move-result-object v4

    :try_start_79
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_100

    const-string v3, "is_blacked"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_88} :catch_145
    .catchall {:try_start_79 .. :try_end_88} :catchall_143

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9a

    const-wide/16 v2, -0x1

    :try_start_8e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v4, :cond_18

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_97

    goto :goto_18

    :catchall_97
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_9a
    const/4 v3, 0x0

    :try_start_9b
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d5

    const/4 v5, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f1

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_b2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_c5

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    const/4 v5, 0x1

    :cond_c5
    if-nez v5, :cond_d0

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d0
    :goto_d0
    const-string v5, "sub_tags"

    invoke-virtual {v11, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    const-string v3, "weak_subscribe"

    const-string v5, "apikey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v2, v3, v11, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_e2} :catch_145
    .catchall {:try_start_9b .. :try_end_e2} :catchall_143

    move-result v2

    int-to-long v2, v2

    :goto_e4
    :try_start_e4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v4, :cond_18

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_97

    goto/16 :goto_18

    :cond_ee
    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    :cond_f1
    :try_start_f1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d0

    :cond_100
    const-string v3, "weak_subscribe"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_106} :catch_145
    .catchall {:try_start_f1 .. :try_end_106} :catchall_143

    move-result-wide v2

    goto :goto_e4

    :catch_108
    move-exception v2

    move-object v4, v10

    :goto_10a
    :try_start_10a
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_12c

    const-string v3, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weakSubscribe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_10a .. :try_end_12c} :catchall_143

    :cond_12c
    const-wide/16 v2, -0x1

    :try_start_12e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v4, :cond_18

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_138
    move-exception v2

    move-object v4, v10

    :goto_13a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v4, :cond_142

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_142
    throw v2
    :try_end_143
    .catchall {:try_start_12e .. :try_end_143} :catchall_97

    :catchall_143
    move-exception v2

    goto :goto_13a

    :catch_145
    move-exception v2

    goto :goto_10a
.end method

.method public declared-synchronized a(II)Ljava/lang/String;
    .registers 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    if-eqz v8, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_b6

    move-object v0, v8

    :goto_14
    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_16
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x0

    const-string v3, "is_blacked =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_2e} :catch_b9
    .catchall {:try_start_16 .. :try_end_2e} :catchall_e2

    move-result-object v1

    if-lez p1, :cond_37

    :try_start_31
    invoke-interface {v1, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_37
    move v0, v10

    :goto_38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_88

    add-int/lit8 v2, v0, 0x1

    if-gt v0, p2, :cond_88

    const-string v0, "appid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_logo"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apikey"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "appid"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_name"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_logo"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "api_key"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v0, v2

    goto :goto_38

    :cond_88
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "app_infos"

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, p2, :cond_f1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    move v0, v9

    :goto_a3
    const-string v3, "is_more"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_ab} :catch_ef
    .catchall {:try_start_31 .. :try_end_ab} :catchall_ed

    move-result-object v0

    if-eqz v1, :cond_b1

    :try_start_ae
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_b6

    goto/16 :goto_14

    :catchall_b6
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_b9
    move-exception v0

    move-object v1, v8

    :goto_bb
    :try_start_bb
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWeakSubscribedApps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_bb .. :try_end_d7} :catchall_ed

    if-eqz v1, :cond_dc

    :try_start_d9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_dc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move-object v0, v8

    goto/16 :goto_14

    :catchall_e2
    move-exception v0

    move-object v1, v8

    :goto_e4
    if-eqz v1, :cond_e9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e9
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_ed
    .catchall {:try_start_d9 .. :try_end_ed} :catchall_b6

    :catchall_ed
    move-exception v0

    goto :goto_e4

    :catch_ef
    move-exception v0

    goto :goto_bb

    :cond_f1
    move v0, v10

    goto :goto_a3
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_63

    if-eqz v0, :cond_16

    :try_start_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_16
    const-string v0, "error_code"

    const/4 v2, -0x1

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_1a6
    .catchall {:try_start_10 .. :try_end_1f} :catchall_196

    move-result-object v0

    :try_start_20
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_63

    :cond_28
    :goto_28
    monitor-exit p0

    return-object v0

    :cond_2a
    :try_start_2a
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_bind"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_1a6
    .catchall {:try_start_2a .. :try_end_42} :catchall_196

    move-result-object v9

    :try_start_43
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_66

    const-string v0, "error_code"

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_59} :catch_1aa
    .catchall {:try_start_43 .. :try_end_59} :catchall_1a1

    move-result-object v0

    :try_start_5a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v9, :cond_28

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_63

    goto :goto_28

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_66
    :try_start_66
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_blacked"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sub_tags"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "push_token"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sub_time"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_90} :catch_1aa
    .catchall {:try_start_66 .. :try_end_90} :catchall_1a1

    move-result-object v1

    :try_start_91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_182

    const-string v0, "is_blacked"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_b7

    const-string v0, "error_code"

    const/4 v2, -0x1

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_ac} :catch_103
    .catchall {:try_start_91 .. :try_end_ac} :catchall_1a4

    move-result-object v0

    :try_start_ad
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_63

    goto/16 :goto_28

    :cond_b7
    :try_start_b7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    const-string v0, "push_token"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sub_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x4d3f6400

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_f7

    :cond_e3
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_e9
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ec} :catch_103
    .catchall {:try_start_b7 .. :try_end_ec} :catchall_1a4

    move-result-object v0

    :try_start_ed
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f5
    .catchall {:try_start_ed .. :try_end_f5} :catchall_63

    goto/16 :goto_28

    :cond_f7
    :try_start_f7
    const-string v2, "error_code"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "push_token"

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_102} :catch_103
    .catchall {:try_start_f7 .. :try_end_102} :catchall_1a4

    goto :goto_e9

    :catch_103
    move-exception v0

    :goto_104
    :try_start_104
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_126

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWeakSubscribed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_104 .. :try_end_126} :catchall_1a4

    :cond_126
    :try_start_126
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_12e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_63

    :cond_12e
    move-object v0, v8

    goto/16 :goto_28

    :cond_131
    :try_start_131
    const-string v0, "sub_tags"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16e

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v10

    :goto_147
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_16e

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    const-string v0, "error_code"

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_160} :catch_103
    .catchall {:try_start_131 .. :try_end_160} :catchall_1a4

    move-result-object v0

    :try_start_161
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_169
    .catchall {:try_start_161 .. :try_end_169} :catchall_63

    goto/16 :goto_28

    :cond_16b
    add-int/lit8 v0, v0, 0x1

    goto :goto_147

    :cond_16e
    :try_start_16e
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_177} :catch_103
    .catchall {:try_start_16e .. :try_end_177} :catchall_1a4

    move-result-object v0

    :try_start_178
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_180
    .catchall {:try_start_178 .. :try_end_180} :catchall_63

    goto/16 :goto_28

    :cond_182
    :try_start_182
    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_18b} :catch_103
    .catchall {:try_start_182 .. :try_end_18b} :catchall_1a4

    move-result-object v0

    :try_start_18c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_28

    :catchall_196
    move-exception v0

    move-object v1, v8

    :goto_198
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_1a0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1a0
    throw v0
    :try_end_1a1
    .catchall {:try_start_18c .. :try_end_1a1} :catchall_63

    :catchall_1a1
    move-exception v0

    move-object v1, v9

    goto :goto_198

    :catchall_1a4
    move-exception v0

    goto :goto_198

    :catch_1a6
    move-exception v0

    move-object v1, v8

    goto/16 :goto_104

    :catch_1aa
    move-exception v0

    move-object v1, v9

    goto/16 :goto_104
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez p1, :cond_10

    :cond_a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f3

    move-object v1, v10

    :goto_e
    monitor-exit p0

    return-object v1

    :cond_10
    :try_start_10
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_fd

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1f
    :goto_1f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const-string v2, "subscribe"

    const/4 v3, 0x0

    const-string v4, "appid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_44} :catch_9a
    .catchall {:try_start_10 .. :try_end_44} :catchall_ee

    :try_start_44
    const-string v4, "appid"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c3

    const-string v4, "app_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_logo"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apikey"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_bind"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "found"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "app_name"

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_logo"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "api_key"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "is_bind"

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_91
    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_94} :catch_ca
    .catchall {:try_start_44 .. :try_end_94} :catchall_f6

    if-eqz v3, :cond_1f

    :try_start_96
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a
    .catchall {:try_start_96 .. :try_end_99} :catchall_ee

    goto :goto_1f

    :catch_9a
    move-exception v1

    :try_start_9b
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_bd

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_9b .. :try_end_bd} :catchall_ee

    :cond_bd
    :try_start_bd
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_f3

    move-object v1, v10

    goto/16 :goto_e

    :cond_c3
    :try_start_c3
    const-string v4, "found"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_c9} :catch_ca
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_f6

    goto :goto_91

    :catch_ca
    move-exception v2

    :try_start_cb
    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_cb .. :try_end_e7} :catchall_f6

    if-eqz v3, :cond_1f

    :try_start_e9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_9a
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_ee

    goto/16 :goto_1f

    :catchall_ee
    move-exception v1

    :try_start_ef
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v1
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_f6
    move-exception v1

    if-eqz v3, :cond_fc

    :try_start_f9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_fc
    throw v1

    :cond_fd
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_100} :catch_9a
    .catchall {:try_start_f9 .. :try_end_100} :catchall_ee

    move-result-object v1

    :try_start_101
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_f3

    goto/16 :goto_e
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {p0, v1, v0}, Lcom/baidu/android/pushservice/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_cb

    move-result-object v12

    const/4 v10, 0x0

    :try_start_16
    const-string v4, "msg_switch=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v5, v2

    const-string v2, "register"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "channel"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "pkg_name"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_e3
    .catchall {:try_start_16 .. :try_end_35} :catchall_c1

    move-result-object v10

    const/4 v2, 0x0

    :cond_37
    :goto_37
    :try_start_37
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    const-string v2, "pkg_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "channel"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v4, "pkg_name=? AND app_id=?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const-string v2, "blacklist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, p2

    if-eq v3, v0, :cond_37

    :cond_83
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_8c} :catch_8d
    .catchall {:try_start_37 .. :try_end_8c} :catchall_c1

    goto :goto_37

    :catch_8d
    move-exception v1

    move-object v2, v10

    :goto_8f
    :try_start_8f
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_b1

    const-string v3, "DatabaseManager"

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
    :try_end_b1
    .catchall {:try_start_8f .. :try_end_b1} :catchall_e0

    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_b9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_cb

    :cond_b9
    move-object v1, v9

    :goto_ba
    monitor-exit p0

    return-object v1

    :cond_bc
    :try_start_bc
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_8d
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c1

    goto/16 :goto_37

    :catchall_c1
    move-exception v1

    :goto_c2
    :try_start_c2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_ca

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_ca
    throw v1
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_ce
    :try_start_ce
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_d6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d6} :catch_8d
    .catchall {:try_start_ce .. :try_end_d6} :catchall_c1

    :cond_d6
    :try_start_d6
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_de

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_cb

    :cond_de
    move-object v1, v9

    goto :goto_ba

    :catchall_e0
    move-exception v1

    move-object v10, v2

    goto :goto_c2

    :catch_e3
    move-exception v1

    move-object v2, v10

    goto :goto_8f
.end method

.method public declared-synchronized a(Ljava/lang/String;IZII)Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZII)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b0

    move-result v3

    if-eqz v3, :cond_11

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v2

    :cond_11
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :try_start_14
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    if-nez p2, :cond_6a

    if-eqz p3, :cond_32

    const-string v5, "status=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :cond_32
    :goto_32
    const-string v3, "message"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "time DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_81
    .catchall {:try_start_14 .. :try_end_3c} :catchall_c1

    move-result-object v3

    if-ltz p5, :cond_16d

    :try_start_3f
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v2, v2, p4

    sub-int v2, v2, p5

    if-lez v2, :cond_163

    const/4 v2, 0x1

    :goto_4a
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v3, v0, v1}, Lcom/baidu/android/pushservice/db/a;->a(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v10, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ismore"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_60} :catch_16a
    .catchall {:try_start_3f .. :try_end_60} :catchall_166

    :try_start_60
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v3, :cond_68

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_b0

    :cond_68
    move-object v2, v10

    goto :goto_f

    :cond_6a
    if-eqz p3, :cond_b3

    :try_start_6c
    const-string v5, "status=? AND type = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_80} :catch_81
    .catchall {:try_start_6c .. :try_end_80} :catchall_c1

    goto :goto_32

    :catch_81
    move-exception v2

    move-object v3, v11

    :goto_83
    :try_start_83
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_a5

    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_166

    :cond_a5
    const/4 v2, 0x0

    :try_start_a6
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_b0

    goto/16 :goto_f

    :catchall_b0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_b3
    :try_start_b3
    const-string v5, "type = ?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bf} :catch_81
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_c1

    goto/16 :goto_32

    :catchall_c1
    move-exception v2

    :goto_c2
    :try_start_c2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v11, :cond_ca

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_ca
    throw v2
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_b0

    :cond_cb
    if-nez p2, :cond_111

    if-eqz p3, :cond_f4

    :try_start_cf
    const-string v5, "appid = ? AND status =? "

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_32

    :cond_f4
    const-string v5, "appid = ?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_32

    :cond_111
    if-eqz p3, :cond_13f

    const-string v5, "appid = ? AND status=? AND type = ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_32

    :cond_13f
    const-string v5, "appid = ? AND type = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_161} :catch_81
    .catchall {:try_start_cf .. :try_end_161} :catchall_c1

    goto/16 :goto_32

    :cond_163
    const/4 v2, 0x0

    goto/16 :goto_4a

    :catchall_166
    move-exception v2

    move-object v11, v3

    goto/16 :goto_c2

    :catch_16a
    move-exception v2

    goto/16 :goto_83

    :cond_16d
    move v2, v12

    goto/16 :goto_4a
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/db/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->d()V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_22

    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_25

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_22

    goto :goto_11

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "noti_id"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_id"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time_stamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "noti_id"

    aput-object v4, v2, v3

    const-string v3, "noti_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6d} :catch_cd
    .catchall {:try_start_25 .. :try_end_6d} :catchall_c0

    move-result-object v1

    if-eqz v1, :cond_8c

    :try_start_70
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, "notification"

    const-string v3, "noti_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_83} :catch_93
    .catchall {:try_start_70 .. :try_end_83} :catchall_ca

    :goto_83
    :try_start_83
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_22

    goto :goto_11

    :cond_8c
    :try_start_8c
    const-string v2, "notification"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_92} :catch_93
    .catchall {:try_start_8c .. :try_end_92} :catchall_ca

    goto :goto_83

    :catch_93
    move-exception v0

    :goto_94
    :try_start_94
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_b6

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_94 .. :try_end_b6} :catchall_ca

    :cond_b6
    :try_start_b6
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_11

    :catchall_c0
    move-exception v0

    :goto_c1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_c9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c9
    throw v0
    :try_end_ca
    .catchall {:try_start_b6 .. :try_end_ca} :catchall_22

    :catchall_ca
    move-exception v0

    move-object v8, v1

    goto :goto_c1

    :catch_cd
    move-exception v0

    move-object v1, v8

    goto :goto_94
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_40

    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_43

    :goto_1b
    const-string v1, "is_bind"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "subscribe"

    const-string v1, "apikey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_59
    .catchall {:try_start_14 .. :try_end_37} :catchall_85

    :cond_37
    :goto_37
    if-eqz v3, :cond_3c

    :try_start_39
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_40

    goto :goto_12

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_43
    move v0, v1

    goto :goto_1b

    :cond_45
    :try_start_45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "subscribe"

    const-string v1, "appid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_58} :catch_59
    .catchall {:try_start_45 .. :try_end_58} :catchall_85

    goto :goto_37

    :catch_59
    move-exception v0

    :try_start_5a
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBindState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_5a .. :try_end_7c} :catchall_85

    :cond_7c
    if-eqz v3, :cond_81

    :try_start_7e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_81
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_12

    :catchall_85
    move-exception v0

    if-eqz v3, :cond_8b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_40
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v12, 0xb

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/db/a;->a:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/NotificationManager;

    move-object v9, v0

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_9f

    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    if-eqz p1, :cond_e1

    :try_start_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_27
    :goto_27
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_177

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_77
    .catchall {:try_start_1d .. :try_end_35} :catchall_d4

    :try_start_35
    const-string v2, "notification"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "noti_id"

    aput-object v5, v3, v4

    const-string v4, "msg_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_185
    .catchall {:try_start_35 .. :try_end_4d} :catchall_d9

    move-result-object v3

    :try_start_4e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_a2

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_64
    const-string v4, "notification"

    const-string v5, "noti_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_71} :catch_aa
    .catchall {:try_start_4e .. :try_end_71} :catchall_182

    :cond_71
    if-eqz v3, :cond_27

    :try_start_73
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_d4

    goto :goto_27

    :catch_77
    move-exception v1

    :try_start_78
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_78 .. :try_end_9a} :catchall_d4

    :cond_9a
    :try_start_9a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9f

    goto/16 :goto_19

    :catchall_9f
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_a2
    :try_start_a2
    invoke-static {v2}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_182

    goto :goto_64

    :catch_aa
    move-exception v2

    :goto_ab
    :try_start_ab
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_cd

    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_ab .. :try_end_cd} :catchall_182

    :cond_cd
    if-eqz v3, :cond_27

    :try_start_cf
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_77
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d4

    goto/16 :goto_27

    :catchall_d4
    move-exception v1

    :try_start_d5
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v1
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_9f

    :catchall_d9
    move-exception v1

    move-object v3, v10

    :goto_db
    if-eqz v3, :cond_e0

    :try_start_dd
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e0
    throw v1

    :cond_e1
    if-eqz p2, :cond_177

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_177

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_ed
    :goto_ed
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_177

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_fb} :catch_77
    .catchall {:try_start_dd .. :try_end_fb} :catchall_d4

    :try_start_fb
    const-string v2, "notification"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "noti_id"

    aput-object v5, v3, v4

    const-string v4, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_113} :catch_17f
    .catchall {:try_start_fb .. :try_end_113} :catchall_17c

    move-result-object v3

    :goto_114
    :try_start_114
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_170

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_161

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_12a
    const-string v4, "notification"

    const-string v5, "noti_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_137} :catch_138
    .catchall {:try_start_114 .. :try_end_137} :catchall_169

    goto :goto_114

    :catch_138
    move-exception v2

    :goto_139
    :try_start_139
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v4

    if-eqz v4, :cond_15b

    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_139 .. :try_end_15b} :catchall_169

    :cond_15b
    if-eqz v3, :cond_ed

    :try_start_15d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_160} :catch_77
    .catchall {:try_start_15d .. :try_end_160} :catchall_d4

    goto :goto_ed

    :cond_161
    :try_start_161
    invoke-static {v2}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_168} :catch_138
    .catchall {:try_start_161 .. :try_end_168} :catchall_169

    goto :goto_12a

    :catchall_169
    move-exception v1

    :goto_16a
    if-eqz v3, :cond_16f

    :try_start_16c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_16f
    throw v1

    :cond_170
    if-eqz v3, :cond_ed

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_175} :catch_77
    .catchall {:try_start_16c .. :try_end_175} :catchall_d4

    goto/16 :goto_ed

    :cond_177
    :try_start_177
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_9f

    goto/16 :goto_19

    :catchall_17c
    move-exception v1

    move-object v3, v10

    goto :goto_16a

    :catch_17f
    move-exception v2

    move-object v3, v10

    goto :goto_139

    :catchall_182
    move-exception v1

    goto/16 :goto_db

    :catch_185
    move-exception v2

    move-object v3, v10

    goto/16 :goto_ab
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_83

    move-result-object v2

    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_13
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "DatabaseManager"

    const-string v2, "addBlackList appid or pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_5c
    .catchall {:try_start_7 .. :try_end_20} :catchall_86

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_83

    :goto_23
    monitor-exit p0

    return v1

    :cond_25
    :try_start_25
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pkg_name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "blacklist"

    const-string v5, "app_id=? AND pkg_name=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4d} :catch_5c
    .catchall {:try_start_25 .. :try_end_4d} :catchall_86

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5a

    :goto_55
    :try_start_55
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_83

    move v1, v0

    goto :goto_23

    :cond_5a
    move v0, v1

    goto :goto_55

    :catch_5c
    move-exception v0

    :try_start_5d
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_86

    :cond_7f
    :try_start_7f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_23

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_86
    move-exception v0

    :try_start_87
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_83
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_77

    move-result-object v2

    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "DatabaseManager"

    const-string v2, "setAppMsgReceiveStatus pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_50
    .catchall {:try_start_7 .. :try_end_1a} :catchall_7c

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_77

    :goto_1d
    monitor-exit p0

    return v1

    :cond_1f
    :try_start_1f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_45

    const-string v4, "msg_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_30
    const-string v4, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_50
    .catchall {:try_start_1f .. :try_end_3d} :catchall_7c

    move-result v2

    if-lez v2, :cond_7a

    :goto_40
    :try_start_40
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_77

    move v1, v0

    goto :goto_1d

    :cond_45
    :try_start_45
    const-string v4, "msg_switch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4f} :catch_50
    .catchall {:try_start_45 .. :try_end_4f} :catchall_7c

    goto :goto_30

    :catch_50
    move-exception v0

    :try_start_51
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_51 .. :try_end_73} :catchall_7c

    :cond_73
    :try_start_73
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_1d

    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7a
    move v0, v1

    goto :goto_40

    :catchall_7c
    move-exception v0

    :try_start_7d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_77
.end method

.method public declared-synchronized b(ILjava/lang/String;)I
    .registers 15

    const/4 v8, -0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_89

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_60
    .catchall {:try_start_9 .. :try_end_c} :catchall_9d

    move-result v1

    if-eqz v1, :cond_15

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_89

    move v0, v8

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string v3, "status=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    :goto_39
    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "msgid"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_a2

    :goto_51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5f} :catch_60
    .catchall {:try_start_15 .. :try_end_5f} :catchall_9d

    goto :goto_51

    :catch_60
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_63
    :try_start_63
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_9d

    :cond_85
    :try_start_85
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_13

    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8c
    :try_start_8c
    const-string v3, "status=? AND appid=?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9c} :catch_60
    .catchall {:try_start_8c .. :try_end_9c} :catchall_9d

    goto :goto_39

    :catchall_9d
    move-exception v0

    :try_start_9e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_89

    :cond_a2
    :try_start_a2
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    if-nez p1, :cond_c7

    const-string v1, "message"

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_be} :catch_60
    .catchall {:try_start_a2 .. :try_end_be} :catchall_9d

    move-result v1

    :goto_bf
    if-ne v1, v8, :cond_12f

    move v0, v9

    :goto_c2
    :try_start_c2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_89

    goto/16 :goto_13

    :cond_c7
    :try_start_c7
    const-string v1, "message"

    const-string v3, "status=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_bf

    :cond_e2
    if-nez p1, :cond_106

    const-string v1, "message"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_bf

    :cond_106
    const-string v1, "message"

    const-string v3, "appid=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_12d} :catch_60
    .catchall {:try_start_c7 .. :try_end_12d} :catchall_9d

    move-result v1

    goto :goto_bf

    :cond_12f
    if-lez v1, :cond_13c

    :try_start_131
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_136
    .catchall {:try_start_131 .. :try_end_134} :catchall_9d

    move-result v0

    goto :goto_c2

    :catch_136
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto/16 :goto_63

    :cond_13c
    move v0, v1

    goto :goto_c2
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_35
    .catchall {:try_start_3 .. :try_end_1f} :catchall_63

    move-result-object v1

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_73
    .catchall {:try_start_20 .. :try_end_2a} :catchall_71

    move-result v0

    :goto_2b
    if-eqz v1, :cond_30

    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_30
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_6e

    :goto_33
    monitor-exit p0

    return v0

    :catch_35
    move-exception v0

    move-object v1, v9

    :goto_37
    :try_start_37
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMsgCountByAppid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_71

    :cond_59
    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move v0, v8

    goto :goto_33

    :catchall_63
    move-exception v0

    move-object v1, v9

    :goto_65
    if-eqz v1, :cond_6a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_71
    move-exception v0

    goto :goto_65

    :catch_73
    move-exception v0

    goto :goto_37

    :cond_75
    move v0, v8

    goto :goto_2b
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_25

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "subscribe"

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_41
    .catchall {:try_start_d .. :try_end_20} :catchall_68

    move-result v0

    :goto_21
    :try_start_21
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_b

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_28
    :try_start_28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "subscribe"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_41
    .catchall {:try_start_28 .. :try_end_3b} :catchall_68

    move-result v0

    goto :goto_21

    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_25

    goto :goto_b

    :catch_41
    move-exception v1

    :try_start_42
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unSubscribe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_68

    :cond_64
    :try_start_64
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_b

    :catchall_68
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_25
.end method

.method public declared-synchronized b(Ljava/util/ArrayList;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_b

    if-nez p1, :cond_11

    :cond_b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_52

    move v1, v2

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "status"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "message"

    const-string v7, "msgid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_47} :catch_55
    .catchall {:try_start_11 .. :try_end_47} :catchall_7d

    move-result v0

    if-eq v0, v10, :cond_82

    add-int/lit8 v0, v1, -0x1

    :goto_4c
    move v1, v0

    goto :goto_1f

    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_f

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_55
    move-exception v0

    :try_start_56
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_78

    const-string v1, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_56 .. :try_end_78} :catchall_7d

    :cond_78
    :try_start_78
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move v1, v2

    goto :goto_f

    :catchall_7d
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_52

    :cond_82
    move v0, v1

    goto :goto_4c
.end method

.method public declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/db/LightAppDatabase;->getWritableDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/db/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_12
    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b5

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_b8
    .catchall {:try_start_b .. :try_end_e} :catchall_e7

    move-result v2

    if-eqz v2, :cond_1c

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v9, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_b5

    :cond_19
    move v0, v8

    :cond_1a
    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    :try_start_1c
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "host_channel"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_b8
    .catchall {:try_start_1c .. :try_end_34} :catchall_e7

    move-result-object v9

    :try_start_35
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fc

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fc

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_fc

    const/4 v2, 0x0

    aget-object v5, v1, v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "channel=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const-string v1, "blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const-string v3, "app_id=? AND pkg_name=? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_99} :catch_f4
    .catchall {:try_start_35 .. :try_end_99} :catchall_e7

    move-result-object v1

    :try_start_9a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a4} :catch_f7
    .catchall {:try_start_9a .. :try_end_a4} :catchall_f1

    move-result v0

    if-eq v0, p2, :cond_a9

    if-nez v0, :cond_f9

    :cond_a9
    move-object v9, v1

    move v0, v10

    :goto_ab
    :try_start_ab
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v9, :cond_1a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_b5

    goto/16 :goto_1a

    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_b8
    move-exception v0

    move-object v1, v9

    :goto_ba
    :try_start_ba
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_dc

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_ba .. :try_end_dc} :catchall_f1

    :cond_dc
    :try_start_dc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_e4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e4
    move v0, v8

    goto/16 :goto_1a

    :catchall_e7
    move-exception v0

    :goto_e8
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v9, :cond_f0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f0
    throw v0
    :try_end_f1
    .catchall {:try_start_dc .. :try_end_f1} :catchall_b5

    :catchall_f1
    move-exception v0

    move-object v9, v1

    goto :goto_e8

    :catch_f4
    move-exception v0

    move-object v1, v9

    goto :goto_ba

    :catch_f7
    move-exception v0

    goto :goto_ba

    :cond_f9
    move-object v9, v1

    move v0, v8

    goto :goto_ab

    :cond_fc
    move v0, v8

    goto :goto_ab
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4e

    move-result-object v1

    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_12
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "DatabaseManager"

    const-string v2, "addBlackList appid or pkgName can not be null"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_51
    .catchall {:try_start_6 .. :try_end_1f} :catchall_78

    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_4e

    :goto_22
    monitor-exit p0

    return v0

    :cond_24
    :try_start_24
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pkg_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "blacklist"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_42} :catch_51
    .catchall {:try_start_24 .. :try_end_42} :catchall_78

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4a

    const/4 v0, 0x1

    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_22

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_51
    move-exception v1

    :try_start_52
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_78

    :cond_74
    :try_start_74
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_22

    :catchall_78
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_4e
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    const/4 v8, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_3
    const-string v0, "DatabaseManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_49
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "DatabaseManager"

    const-string v1, "register pkgName or channel can not be null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_101

    :cond_56
    :goto_56
    monitor-exit p0

    return v9

    :cond_58
    :try_start_58
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "pkg_name"

    invoke-virtual {v10, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_switch"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "host_name"

    invoke-virtual {v10, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host_version"

    invoke-virtual {v10, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    const-string v1, "register"

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    :goto_a9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_ac} :catch_d9
    .catchall {:try_start_58 .. :try_end_ac} :catchall_104

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d7

    move v0, v8

    :goto_b3
    :try_start_b3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_101

    move v9, v0

    goto :goto_56

    :cond_b8
    :try_start_b8
    const-string v1, "msg_count"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "reg_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d5} :catch_d9
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_104

    move-result-wide v0

    goto :goto_a9

    :cond_d7
    move v0, v9

    goto :goto_b3

    :catch_d9
    move-exception v0

    :try_start_da
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_fc

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_da .. :try_end_fc} :catchall_104

    :cond_fc
    :try_start_fc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_101

    goto/16 :goto_56

    :catchall_101
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_104
    move-exception v0

    :try_start_105
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_109
    .catchall {:try_start_105 .. :try_end_109} :catchall_101
.end method

.method public declared-synchronized c(ILjava/lang/String;)I
    .registers 10

    const/4 v1, 0x0

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    move-result-object v3

    if-eqz v3, :cond_f

    :try_start_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_55
    .catchall {:try_start_9 .. :try_end_c} :catchall_9f

    move-result v2

    if-eqz v2, :cond_14

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_34

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz p1, :cond_a4

    const-string v2, "type = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    :goto_2a
    const-string v4, "message"

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_55
    .catchall {:try_start_14 .. :try_end_2f} :catchall_9f

    move-result v0

    :try_start_30
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_12

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    if-nez p1, :cond_7c

    :try_start_39
    const-string v2, "appid = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_54} :catch_55
    .catchall {:try_start_39 .. :try_end_54} :catchall_9f

    goto :goto_2a

    :catch_55
    move-exception v1

    :try_start_56
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_78

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_56 .. :try_end_78} :catchall_9f

    :cond_78
    :try_start_78
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_34

    goto :goto_12

    :cond_7c
    :try_start_7c
    const-string v2, "appid= ? AND type = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9e} :catch_55
    .catchall {:try_start_7c .. :try_end_9e} :catchall_9f

    goto :goto_2a

    :catchall_9f
    move-exception v0

    :try_start_a0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_34

    :cond_a4
    move-object v2, v1

    goto :goto_2a
.end method

.method public declared-synchronized c(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "appid=? AND status=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_3a
    .catchall {:try_start_3 .. :try_end_24} :catchall_68

    move-result-object v1

    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_78
    .catchall {:try_start_25 .. :try_end_2f} :catchall_76

    move-result v0

    :goto_30
    if-eqz v1, :cond_35

    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_35
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_73

    :goto_38
    monitor-exit p0

    return v0

    :catch_3a
    move-exception v0

    move-object v1, v9

    :goto_3c
    :try_start_3c
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMsgUnreadCountByAppid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_76

    :cond_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move v0, v8

    goto :goto_38

    :catchall_68
    move-exception v0

    move-object v1, v9

    :goto_6a
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_76
    move-exception v0

    goto :goto_6a

    :catch_78
    move-exception v0

    goto :goto_3c

    :cond_7a
    move v0, v8

    goto :goto_30
.end method

.method public declared-synchronized c(Ljava/util/ArrayList;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_c

    if-nez p1, :cond_11

    :cond_c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_40

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "message"

    const-string v5, "msgid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_43
    .catchall {:try_start_11 .. :try_end_34} :catchall_6d

    move-result v0

    if-ne v8, v0, :cond_72

    add-int/lit8 v0, v1, 0x1

    :goto_39
    move v1, v0

    goto :goto_1b

    :cond_3b
    move v0, v1

    :try_start_3c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_f

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_43
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    :try_start_47
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_47 .. :try_end_69} :catchall_6d

    :cond_69
    :try_start_69
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_f

    :catchall_6d
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_40

    :cond_72
    move v0, v1

    goto :goto_39
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1a
    .catchall {:try_start_1 .. :try_end_13} :catchall_2d

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_2a

    :goto_18
    monitor-exit p0

    return-void

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string v1, "DatabaseManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_2d

    :try_start_24
    iget-object v0, p0, Lcom/baidu/android/pushservice/db/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_18

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2d
    move-exception v0

    :try_start_2e
    iget-object v1, p0, Lcom/baidu/android/pushservice/db/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2a
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_66

    move-result-object v1

    :try_start_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_12
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "DatabaseManager"

    const-string v2, "register pkgName or channel can not be null"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_69
    .catchall {:try_start_6 .. :try_end_1f} :catchall_90

    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_66

    :goto_22
    monitor-exit p0

    return v0

    :cond_24
    :try_start_24
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pkg_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "channel"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msg_count"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "msg_switch"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "reg_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "register"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5a} :catch_69
    .catchall {:try_start_24 .. :try_end_5a} :catchall_90

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_62

    const/4 v0, 0x1

    :cond_62
    :try_start_62
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_22

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_69
    move-exception v1

    :try_start_6a
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_6a .. :try_end_8c} :catchall_90

    :cond_8c
    :try_start_8c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_22

    :catchall_90
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_66
.end method

.method public declared-synchronized d()V
    .registers 13

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_bd

    move-result-object v0

    if-nez v0, :cond_a

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_157
    .catchall {:try_start_a .. :try_end_1c} :catchall_147

    move-result-object v8

    if-eqz v8, :cond_c6

    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_c6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "message"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "appid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_49} :catch_15b
    .catchall {:try_start_1f .. :try_end_49} :catchall_14f

    move-result-object v9

    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "time"

    aput-object v4, v2, v3

    const-string v3, "appid =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x31

    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "message"

    const-string v2, "appid=? AND time<?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_92} :catch_93
    .catchall {:try_start_4a .. :try_end_92} :catchall_152

    goto :goto_4a

    :catch_93
    move-exception v0

    move-object v1, v9

    :goto_95
    :try_start_95
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_b3

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDB E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_95 .. :try_end_b3} :catchall_155

    :cond_b3
    if-eqz v1, :cond_b8

    :try_start_b5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_bb
    .catchall {:try_start_b5 .. :try_end_bb} :catchall_bd

    goto/16 :goto_8

    :catchall_bd
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c0
    if-eqz v10, :cond_c5

    :try_start_c2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_93
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_152

    :cond_c5
    move-object v8, v9

    :cond_c6
    :try_start_c6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_db} :catch_15b
    .catchall {:try_start_c6 .. :try_end_db} :catchall_14f

    move-result-object v1

    if-eqz v1, :cond_118

    :try_start_de
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_118

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v2, "weak_subscribe"

    const-string v3, "sub_time<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, -0x3083a800

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_118
    const-string v2, "notification"

    const-string v3, "time_stamp<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xf731400

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_140} :catch_15f
    .catchall {:try_start_de .. :try_end_140} :catchall_155

    if-eqz v1, :cond_b8

    :try_start_142
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b8

    :catchall_147
    move-exception v0

    move-object v1, v10

    :goto_149
    if-eqz v1, :cond_14e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14e
    throw v0
    :try_end_14f
    .catchall {:try_start_142 .. :try_end_14f} :catchall_bd

    :catchall_14f
    move-exception v0

    move-object v1, v8

    goto :goto_149

    :catchall_152
    move-exception v0

    move-object v1, v9

    goto :goto_149

    :catchall_155
    move-exception v0

    goto :goto_149

    :catch_157
    move-exception v0

    move-object v1, v10

    goto/16 :goto_95

    :catch_15b
    move-exception v0

    move-object v1, v8

    goto/16 :goto_95

    :catch_15f
    move-exception v0

    goto/16 :goto_95
.end method

.method public declared-synchronized d(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_97

    move-result-object v1

    move v11, v12

    :goto_8
    :try_start_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_61

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const-string v2, "register"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "msg_count"

    aput-object v5, v3, v4

    const-string v4, "pkg_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_a7
    .catchall {:try_start_8 .. :try_end_2e} :catchall_a4

    move-result-object v2

    :try_start_2f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    const-string v3, "msg_count"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :goto_3f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "msg_count"

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5c} :catch_6b
    .catchall {:try_start_2f .. :try_end_5c} :catchall_9a

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move-object v10, v2

    goto :goto_8

    :cond_61
    :try_start_61
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_69

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_97

    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    :catch_6b
    move-exception v1

    :goto_6c
    :try_start_6c
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_8e

    const-string v3, "DatabaseManager"

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
    :try_end_8e
    .catchall {:try_start_6c .. :try_end_8e} :catchall_9a

    :cond_8e
    :try_start_8e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_69

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_97

    goto :goto_69

    :catchall_97
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_9a
    move-exception v1

    :goto_9b
    :try_start_9b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_a3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a3
    throw v1
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_97

    :catchall_a4
    move-exception v1

    move-object v2, v10

    goto :goto_9b

    :catch_a7
    move-exception v1

    move-object v2, v10

    goto :goto_6c

    :cond_aa
    move v3, v12

    goto :goto_3f
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    if-eqz v10, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_c0

    :goto_13
    monitor-exit p0

    return v9

    :cond_15
    :try_start_15
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8d

    move v1, v8

    :goto_35
    if-nez v1, :cond_5f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=? AND is_blacked =? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8f

    move v1, v8

    :cond_5f
    :goto_5f
    if-nez v1, :cond_d5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v1, "app_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7c} :catch_93
    .catchall {:try_start_15 .. :try_end_7c} :catchall_c3

    move-result-object v0

    :try_start_7d
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_d1
    .catchall {:try_start_7d .. :try_end_80} :catchall_cd

    move-result v1

    if-lez v1, :cond_91

    :goto_83
    if-eqz v0, :cond_88

    :try_start_85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_88
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_c0

    move v9, v8

    goto :goto_13

    :cond_8d
    move v1, v9

    goto :goto_35

    :cond_8f
    move v1, v9

    goto :goto_5f

    :cond_91
    move v8, v9

    goto :goto_83

    :catch_93
    move-exception v0

    :goto_94
    :try_start_94
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubscribedByAppid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_94 .. :try_end_b6} :catchall_c3

    :cond_b6
    if-eqz v10, :cond_bb

    :try_start_b8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_bb
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_c0

    goto/16 :goto_13

    :catchall_c0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_c3
    move-exception v0

    :goto_c4
    if-eqz v10, :cond_c9

    :try_start_c6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c9
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_c0

    :catchall_cd
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_c4

    :catch_d1
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_94

    :cond_d5
    move v8, v1

    move-object v0, v10

    goto :goto_83
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_43

    move-result-object v0

    :try_start_8
    const-string v1, "blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const-string v3, "app_id=? AND pkg_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_46
    .catchall {:try_start_8 .. :try_end_23} :catchall_73

    move-result-object v1

    if-eqz v1, :cond_3a

    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_80
    .catchall {:try_start_26 .. :try_end_29} :catchall_7e

    move-result v0

    if-lez v0, :cond_38

    move v0, v8

    :goto_2d
    if-eqz v1, :cond_32

    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_32
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_43

    move v9, v0

    :goto_36
    monitor-exit p0

    return v9

    :cond_38
    move v0, v9

    goto :goto_2d

    :cond_3a
    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_43

    goto :goto_36

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_46
    move-exception v0

    move-object v1, v10

    :goto_48
    :try_start_48
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_7e

    :cond_6a
    if-eqz v1, :cond_6f

    :try_start_6c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_36

    :catchall_73
    move-exception v0

    move-object v1, v10

    :goto_75
    if-eqz v1, :cond_7a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_7e
    .catchall {:try_start_6c .. :try_end_7e} :catchall_43

    :catchall_7e
    move-exception v0

    goto :goto_75

    :catch_80
    move-exception v0

    goto :goto_48
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    if-eqz v8, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_b5

    move-object v0, v8

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "subscribe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_24} :catch_c5
    .catchall {:try_start_14 .. :try_end_24} :catchall_b8

    move-result-object v1

    :goto_25
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "appid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_logo"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apikey"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_bind"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "appid"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_name"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_logo"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "api_key"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_bind"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_7e} :catch_7f
    .catchall {:try_start_25 .. :try_end_7e} :catchall_c3

    goto :goto_25

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscribedApps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_c3

    if-eqz v1, :cond_a1

    :try_start_9e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_b5

    move-object v0, v8

    goto/16 :goto_12

    :cond_a7
    :try_start_a7
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_aa} :catch_7f
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_c3

    move-result-object v0

    if-eqz v1, :cond_b0

    :try_start_ad
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_b5

    goto/16 :goto_12

    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_b8
    move-exception v0

    move-object v1, v8

    :goto_ba
    if-eqz v1, :cond_bf

    :try_start_bc
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bf
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_b5

    :catchall_c3
    move-exception v0

    goto :goto_ba

    :catch_c5
    move-exception v0

    move-object v1, v8

    goto :goto_80
.end method

.method public declared-synchronized e(Ljava/lang/String;)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    if-eqz v10, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_73

    :goto_13
    monitor-exit p0

    return v9

    :cond_15
    :try_start_15
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_bind"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_46
    .catchall {:try_start_15 .. :try_end_2d} :catchall_76

    move-result-object v1

    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_83
    .catchall {:try_start_2e .. :try_end_38} :catchall_81

    move-result v0

    if-ne v0, v8, :cond_85

    move v0, v8

    :goto_3c
    if-eqz v1, :cond_41

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_73

    move v9, v0

    goto :goto_13

    :catch_46
    move-exception v0

    move-object v1, v10

    :goto_48
    :try_start_48
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLightAppBindedByApiKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_81

    :cond_6a
    if-eqz v1, :cond_6f

    :try_start_6c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_73

    goto :goto_13

    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_76
    move-exception v0

    move-object v1, v10

    :goto_78
    if-eqz v1, :cond_7d

    :try_start_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_73

    :catchall_81
    move-exception v0

    goto :goto_78

    :catch_83
    move-exception v0

    goto :goto_48

    :cond_85
    move v0, v9

    goto :goto_3c
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_66

    move-result-object v2

    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_13
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "DatabaseManager"

    const-string v2, "deleteBlackList appid or pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_3f
    .catchall {:try_start_7 .. :try_end_20} :catchall_69

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_66

    :goto_23
    monitor-exit p0

    return v1

    :cond_25
    :try_start_25
    const-string v3, "blacklist"

    const-string v4, "app_id = ? AND pkg_name =?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_3f
    .catchall {:try_start_25 .. :try_end_35} :catchall_69

    move-result v2

    if-lez v2, :cond_3d

    :goto_38
    :try_start_38
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_66

    move v1, v0

    goto :goto_23

    :cond_3d
    move v0, v1

    goto :goto_38

    :catch_3f
    move-exception v0

    :try_start_40
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_40 .. :try_end_62} :catchall_69

    :cond_62
    :try_start_62
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_23

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_69
    move-exception v0

    :try_start_6a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_66
.end method

.method public declared-synchronized f()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    if-eqz v8, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_76

    move-object v0, v8

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_86
    .catchall {:try_start_14 .. :try_end_26} :catchall_79

    move-result-object v1

    :try_start_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "appid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_40
    .catchall {:try_start_27 .. :try_end_3f} :catchall_84

    goto :goto_2c

    :catch_40
    move-exception v0

    :goto_41
    :try_start_41
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_84

    :cond_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_68
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move-object v0, v8

    goto :goto_12

    :cond_6d
    if-eqz v1, :cond_72

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_72
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_76

    goto :goto_12

    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_79
    move-exception v0

    move-object v1, v8

    :goto_7b
    if-eqz v1, :cond_80

    :try_start_7d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_80
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_76

    :catchall_84
    move-exception v0

    goto :goto_7b

    :catch_86
    move-exception v0

    move-object v1, v8

    goto :goto_41
.end method

.method public declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_58

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_5b
    .catchall {:try_start_9 .. :try_end_c} :catchall_88

    move-result v2

    if-eqz v2, :cond_19

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_58

    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "shortcut_by"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_5b
    .catchall {:try_start_19 .. :try_end_36} :catchall_88

    move-result-object v1

    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4f

    const-string v2, "shortcut_by"

    invoke-virtual {v9, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "subscribe"

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4f} :catch_95
    .catchall {:try_start_37 .. :try_end_4f} :catchall_93

    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_58

    goto :goto_17

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_5b
    move-exception v0

    move-object v1, v8

    :goto_5d
    :try_start_5d
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_93

    :cond_7f
    :try_start_7f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :catchall_88
    move-exception v0

    move-object v1, v8

    :goto_8a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_92

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_92
    throw v0
    :try_end_93
    .catchall {:try_start_7f .. :try_end_93} :catchall_58

    :catchall_93
    move-exception v0

    goto :goto_8a

    :catch_95
    move-exception v0

    goto :goto_5d
.end method

.method public declared-synchronized f(Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    if-eqz v10, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_d8

    :goto_13
    monitor-exit p0

    return v9

    :cond_15
    :try_start_15
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apikey"

    aput-object v4, v2, v3

    const-string v3, "app_logo=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3c} :catch_ab
    .catchall {:try_start_15 .. :try_end_3c} :catchall_db

    move-result v1

    if-nez v1, :cond_4b

    move v0, v8

    move-object v1, v10

    :goto_41
    if-eqz v1, :cond_46

    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_d8

    move v9, v0

    goto :goto_13

    :cond_4b
    :try_start_4b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apikey"

    aput-object v4, v2, v3

    const-string v3, "app_logo=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    move v0, v8

    move-object v1, v10

    goto :goto_41

    :cond_7b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v1, "app_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apikey"

    aput-object v4, v2, v3

    const-string v3, "app_logo=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_96} :catch_ab
    .catchall {:try_start_4b .. :try_end_96} :catchall_db

    move-result-object v0

    :try_start_97
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ed

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_e9
    .catchall {:try_start_97 .. :try_end_a5} :catchall_e5

    move-result v1

    if-nez v1, :cond_ed

    move-object v1, v0

    move v0, v8

    goto :goto_41

    :catch_ab
    move-exception v0

    :goto_ac
    :try_start_ac
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_ce

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightAppInfoGeted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_ac .. :try_end_ce} :catchall_db

    :cond_ce
    if-eqz v10, :cond_d3

    :try_start_d0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_d6
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d8

    goto/16 :goto_13

    :catchall_d8
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_db
    move-exception v0

    :goto_dc
    if-eqz v10, :cond_e1

    :try_start_de
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_d8

    :catchall_e5
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_dc

    :catch_e9
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_ac

    :cond_ed
    move-object v1, v0

    move v0, v9

    goto/16 :goto_41
.end method

.method public declared-synchronized g()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_8d

    :try_start_b
    const-string v1, "register"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "msg_switch"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reg_time DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_92
    .catchall {:try_start_b .. :try_end_23} :catchall_82

    move-result-object v1

    if-eqz v1, :cond_78

    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "pkg_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "msg_switch"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_49} :catch_4a
    .catchall {:try_start_26 .. :try_end_49} :catchall_90

    goto :goto_26

    :catch_4a
    move-exception v0

    :goto_4b
    :try_start_4b
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_4b .. :try_end_6d} :catchall_90

    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_75

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_8d

    :cond_75
    move-object v0, v9

    :goto_76
    monitor-exit p0

    return-object v0

    :cond_78
    :try_start_78
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_80

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_80
    move-object v0, v8

    goto :goto_76

    :catchall_82
    move-exception v0

    move-object v1, v9

    :goto_84
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8c
    throw v0
    :try_end_8d
    .catchall {:try_start_78 .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_90
    move-exception v0

    goto :goto_84

    :catch_92
    move-exception v0

    move-object v1, v9

    goto :goto_4b
.end method

.method public declared-synchronized g(Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    if-eqz v10, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_6c

    :goto_13
    monitor-exit p0

    return v9

    :cond_15
    :try_start_15
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_bind"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_3f
    .catchall {:try_start_15 .. :try_end_2d} :catchall_6f

    move-result-object v1

    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_7c
    .catchall {:try_start_2e .. :try_end_31} :catchall_7a

    move-result v0

    if-eqz v0, :cond_7e

    move v0, v8

    :goto_35
    if-eqz v1, :cond_3a

    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_6c

    move v9, v0

    goto :goto_13

    :catch_3f
    move-exception v0

    move-object v1, v10

    :goto_41
    :try_start_41
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLightAppSubscribedByApiKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_7a

    :cond_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_68
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_6c

    goto :goto_13

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_6f
    move-exception v0

    move-object v1, v10

    :goto_71
    if-eqz v1, :cond_76

    :try_start_73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_6c

    :catchall_7a
    move-exception v0

    goto :goto_71

    :catch_7c
    move-exception v0

    goto :goto_41

    :cond_7e
    move v0, v9

    goto :goto_35
.end method

.method public declared-synchronized g(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_3
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e4

    :cond_14
    move-object v0, v8

    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v1, "subscribe"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "shortcut_by"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "shortcut_by"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "appid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6d} :catch_ac
    .catchall {:try_start_17 .. :try_end_6d} :catchall_da

    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_75

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_e4

    :cond_75
    move-object v0, v9

    goto :goto_15

    :cond_77
    :try_start_77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    const-string v1, "subscribe"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "shortcut_by"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_9f} :catch_ac
    .catchall {:try_start_77 .. :try_end_9f} :catchall_da

    move-result-object v8

    goto :goto_40

    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_a9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_e4

    :cond_a9
    move-object v0, v8

    goto/16 :goto_15

    :catch_ac
    move-exception v0

    :try_start_ad
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_ad .. :try_end_cf} :catchall_da

    :cond_cf
    :try_start_cf
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_d7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d7
    move-object v0, v9

    goto/16 :goto_15

    :catchall_da
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_e3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e3
    throw v0
    :try_end_e4
    .catchall {:try_start_cf .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/f/h;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_99

    move-result-object v0

    :try_start_d
    const-string v1, "register"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reg_time DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_a9
    .catchall {:try_start_d .. :try_end_19} :catchall_a6

    move-result-object v10

    :goto_1a
    :try_start_1a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    new-instance v13, Lcom/baidu/android/pushservice/f/h;

    invoke-direct {v13}, Lcom/baidu/android/pushservice/f/h;-><init>()V

    const-string v1, "channel"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/baidu/android/pushservice/f/h;->a(Ljava/lang/String;)V

    const-string v1, "pkg_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8b

    invoke-virtual {v13, v5}, Lcom/baidu/android/pushservice/f/h;->b(Ljava/lang/String;)V

    const-string v1, "msg_switch"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_86

    move v1, v11

    :goto_4e
    invoke-virtual {v13, v1}, Lcom/baidu/android/pushservice/f/h;->a(Z)V

    const-string v1, "blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/baidu/android/pushservice/f/h;->c(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_78} :catch_79
    .catchall {:try_start_1a .. :try_end_78} :catchall_8f

    goto :goto_6a

    :catch_79
    move-exception v0

    move-object v0, v10

    :goto_7b
    :try_start_7b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v0, :cond_83

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_99

    :cond_83
    move-object v0, v9

    :goto_84
    monitor-exit p0

    return-object v0

    :cond_86
    move v1, v12

    goto :goto_4e

    :cond_88
    :try_start_88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8b
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8e} :catch_79
    .catchall {:try_start_88 .. :try_end_8e} :catchall_8f

    goto :goto_1a

    :catchall_8f
    move-exception v0

    :goto_90
    :try_start_90
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_98

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_98
    throw v0
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9c
    :try_start_9c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v10, :cond_a4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_99

    :cond_a4
    move-object v0, v8

    goto :goto_84

    :catchall_a6
    move-exception v0

    move-object v10, v9

    goto :goto_90

    :catch_a9
    move-exception v0

    move-object v0, v9

    goto :goto_7b
.end method

.method public declared-synchronized h(Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_43

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return v9

    :cond_c
    :try_start_c
    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_46
    .catchall {:try_start_c .. :try_end_24} :catchall_73

    move-result-object v1

    if-eqz v1, :cond_3a

    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_80
    .catchall {:try_start_27 .. :try_end_2a} :catchall_7e

    move-result v0

    if-lez v0, :cond_38

    move v0, v8

    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    move v9, v0

    goto :goto_a

    :cond_38
    move v0, v9

    goto :goto_2e

    :cond_3a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_43

    goto :goto_a

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_46
    move-exception v0

    move-object v1, v10

    :goto_48
    :try_start_48
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_7e

    :cond_6a
    :try_start_6a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_73
    move-exception v0

    move-object v1, v10

    :goto_75
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_7d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_6a .. :try_end_7e} :catchall_43

    :catchall_7e
    move-exception v0

    goto :goto_75

    :catch_80
    move-exception v0

    goto :goto_48
.end method

.method public declared-synchronized i(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_74

    move-result-object v2

    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "DatabaseManager"

    const-string v2, "updateRegister pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_4d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_77

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_74

    :goto_1d
    monitor-exit p0

    return v1

    :cond_1f
    :try_start_1f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "reg_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3e} :catch_4d
    .catchall {:try_start_1f .. :try_end_3e} :catchall_77

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    :goto_46
    :try_start_46
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_74

    move v1, v0

    goto :goto_1d

    :cond_4b
    move v0, v1

    goto :goto_46

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_70

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_77

    :cond_70
    :try_start_70
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_1d

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_77
    move-exception v0

    :try_start_78
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_74
.end method

.method public declared-synchronized j(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4c

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_59
    .catchall {:try_start_9 .. :try_end_c} :catchall_86

    move-result v2

    if-eqz v2, :cond_1a

    :cond_f
    if-eqz v8, :cond_14

    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_4c

    move-object v0, v8

    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "channel= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_59
    .catchall {:try_start_1a .. :try_end_32} :catchall_86

    move-result-object v1

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "pkg_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_93
    .catchall {:try_start_33 .. :try_end_42} :catchall_91

    move-result-object v0

    if-eqz v1, :cond_48

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_48
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4c

    goto :goto_18

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4c

    :goto_57
    move-object v0, v8

    goto :goto_18

    :catch_59
    move-exception v0

    move-object v1, v8

    :goto_5b
    :try_start_5b
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5b .. :try_end_7d} :catchall_91

    :cond_7d
    if-eqz v1, :cond_82

    :try_start_7f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto :goto_57

    :catchall_86
    move-exception v0

    move-object v1, v8

    :goto_88
    if-eqz v1, :cond_8d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_91
    .catchall {:try_start_7f .. :try_end_91} :catchall_4c

    :catchall_91
    move-exception v0

    goto :goto_88

    :catch_93
    move-exception v0

    goto :goto_5b
.end method

.method public declared-synchronized k(Ljava/lang/String;)Lcom/baidu/android/pushservice/f/h;
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_93

    move-result-object v0

    :try_start_6
    const-string v1, "register"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "host_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "host_version"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_64
    .catchall {:try_start_6 .. :try_end_28} :catchall_96

    move-result-object v1

    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    new-instance v2, Lcom/baidu/android/pushservice/f/h;

    invoke-direct {v2}, Lcom/baidu/android/pushservice/f/h;-><init>()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_a6
    .catchall {:try_start_29 .. :try_end_34} :catchall_a1

    :try_start_34
    const-string v0, "channel"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/f/h;->a(Ljava/lang/String;)V

    const-string v0, "host_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/f/h;->a:Ljava/lang/String;

    const-string v0, "host_version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/f/h;->b:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_59} :catch_ab
    .catchall {:try_start_34 .. :try_end_59} :catchall_a1

    move-object v0, v2

    :goto_5a
    :try_start_5a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_93

    :cond_62
    :goto_62
    monitor-exit p0

    return-object v0

    :catch_64
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_68
    :try_start_68
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_8a

    const-string v3, "DatabaseManager"

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
    :try_end_8a
    .catchall {:try_start_68 .. :try_end_8a} :catchall_a3

    :cond_8a
    :try_start_8a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v2, :cond_62

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_93

    goto :goto_62

    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_96
    move-exception v0

    move-object v1, v8

    :goto_98
    :try_start_98
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_a0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a0
    throw v0
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_93

    :catchall_a1
    move-exception v0

    goto :goto_98

    :catchall_a3
    move-exception v0

    move-object v1, v2

    goto :goto_98

    :catch_a6
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_68

    :catch_ab
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_68

    :cond_b1
    move-object v0, v8

    goto :goto_5a
.end method

.method public declared-synchronized l(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_3e

    move-result v1

    if-eqz v1, :cond_11

    :cond_e
    move-object v0, v8

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v3, "channel=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pkg_name"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_4b
    .catchall {:try_start_11 .. :try_end_29} :catchall_78

    move-result-object v1

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_85
    .catchall {:try_start_2a .. :try_end_34} :catchall_83

    move-result-object v0

    :try_start_35
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_f

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_41
    :try_start_41
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e

    :cond_49
    :goto_49
    move-object v0, v8

    goto :goto_f

    :catch_4b
    move-exception v0

    move-object v1, v8

    :goto_4d
    :try_start_4d
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_83

    :cond_6f
    :try_start_6f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_49

    :catchall_78
    move-exception v0

    move-object v1, v8

    :goto_7a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0
    :try_end_83
    .catchall {:try_start_6f .. :try_end_83} :catchall_3e

    :catchall_83
    move-exception v0

    goto :goto_7a

    :catch_85
    move-exception v0

    goto :goto_4d
.end method

.method public declared-synchronized m(Ljava/lang/String;)I
    .registers 12

    const/4 v8, -0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_58

    move-result-object v0

    const/4 v1, 0x0

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "DatabaseManager"

    const-string v2, "getNewMsgNum pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_65
    .catchall {:try_start_8 .. :try_end_1b} :catchall_93

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v9, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_58

    :cond_23
    move v0, v8

    :cond_24
    :goto_24
    monitor-exit p0

    return v0

    :cond_26
    :try_start_26
    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_count"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3e} :catch_65
    .catchall {:try_start_26 .. :try_end_3e} :catchall_93

    move-result-object v1

    :try_start_3f
    const-string v0, "msg_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4e} :catch_a0
    .catchall {:try_start_3f .. :try_end_4e} :catchall_9e

    move-result v0

    :try_start_4f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_58

    goto :goto_24

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5b
    :try_start_5b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_58

    :cond_63
    move v0, v8

    goto :goto_24

    :catch_65
    move-exception v0

    move-object v1, v9

    :goto_67
    :try_start_67
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_67 .. :try_end_89} :catchall_9e

    :cond_89
    :try_start_89
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_91
    move v0, v8

    goto :goto_24

    :catchall_93
    move-exception v0

    move-object v1, v9

    :goto_95
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_9d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9d
    throw v0
    :try_end_9e
    .catchall {:try_start_89 .. :try_end_9e} :catchall_58

    :catchall_9e
    move-exception v0

    goto :goto_95

    :catch_a0
    move-exception v0

    goto :goto_67
.end method

.method public declared-synchronized n(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6c

    move-result-object v2

    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "DatabaseManager"

    const-string v2, "clearNewMsgNum pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_45
    .catchall {:try_start_7 .. :try_end_1a} :catchall_6f

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6c

    :goto_1d
    monitor-exit p0

    return v1

    :cond_1f
    :try_start_1f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "msg_count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3b} :catch_45
    .catchall {:try_start_1f .. :try_end_3b} :catchall_6f

    move-result v2

    if-lez v2, :cond_43

    :goto_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_6c

    move v1, v0

    goto :goto_1d

    :cond_43
    move v0, v1

    goto :goto_3e

    :catch_45
    move-exception v0

    :try_start_46
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_68

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_6f

    :cond_68
    :try_start_68
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_1d

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_6c
.end method

.method public declared-synchronized o(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_99

    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "blacklist"

    const/4 v2, 0x0

    const-string v3, "app_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_a3
    .catchall {:try_start_b .. :try_end_22} :catchall_8f

    move-result-object v0

    if-eqz v0, :cond_85

    :goto_25
    :try_start_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "pkg_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_47
    .catchall {:try_start_25 .. :try_end_46} :catchall_9c

    goto :goto_25

    :catch_47
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_4b
    :try_start_4b
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_4b .. :try_end_6d} :catchall_a0

    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_75

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_99

    :cond_75
    :goto_75
    monitor-exit p0

    return-object v8

    :cond_77
    :try_start_77
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "DatabaseManager"

    const-string v1, "getBlackList appid can not be null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_84} :catch_a3
    .catchall {:try_start_77 .. :try_end_84} :catchall_8f

    :cond_84
    move-object v0, v8

    :cond_85
    :try_start_85
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v0, :cond_8d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8d
    move-object v8, v9

    goto :goto_75

    :catchall_8f
    move-exception v0

    :goto_90
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_98

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_98
    throw v0
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_9c
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_90

    :catchall_a0
    move-exception v0

    move-object v8, v1

    goto :goto_90

    :catch_a3
    move-exception v0

    move-object v1, v8

    goto :goto_4b
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_94
    .catchall {:try_start_9 .. :try_end_c} :catchall_c2

    move-result v1

    if-eqz v1, :cond_18

    :cond_f
    if-eqz v9, :cond_14

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    :goto_17
    return-object v9

    :cond_18
    :try_start_18
    const-string v1, "subscribe"

    const/4 v2, 0x0

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_29} :catch_94
    .catchall {:try_start_18 .. :try_end_29} :catchall_c2

    move-result-object v8

    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v0, "app_logo"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_d3
    .catchall {:try_start_2a .. :try_end_39} :catchall_cd

    move-result-object v0

    move-object v1, v0

    move-object v0, v8

    :goto_3c
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    move-object v9, v1

    goto :goto_17

    :cond_46
    :try_start_46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x0

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v0, "app_logo"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_3c

    :cond_6e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "app_info"

    const/4 v2, 0x0

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_82} :catch_d3
    .catchall {:try_start_46 .. :try_end_82} :catchall_cd

    move-result-object v0

    :try_start_83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d9

    const-string v1, "app_logo"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_92} :catch_d5
    .catchall {:try_start_83 .. :try_end_92} :catchall_cf

    move-result-object v1

    goto :goto_3c

    :catch_94
    move-exception v0

    move-object v8, v9

    :goto_96
    :try_start_96
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_b8

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_96 .. :try_end_b8} :catchall_cd

    :cond_b8
    if-eqz v8, :cond_bd

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_bd
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    goto/16 :goto_17

    :catchall_c2
    move-exception v0

    move-object v8, v9

    :goto_c4
    if-eqz v8, :cond_c9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c9
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    throw v0

    :catchall_cd
    move-exception v0

    goto :goto_c4

    :catchall_cf
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_c4

    :catch_d3
    move-exception v0

    goto :goto_96

    :catch_d5
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_96

    :cond_d9
    move-object v1, v9

    goto/16 :goto_3c
.end method

.method public declared-synchronized q(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v8, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_d5

    :cond_16
    move-object v0, v8

    :cond_17
    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    if-eqz p1, :cond_a8

    :try_start_1b
    const-string v1, "blacklist"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3d} :catch_e5
    .catchall {:try_start_1b .. :try_end_3d} :catchall_d8

    move-result-object v1

    :goto_3e
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "app_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "appid"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pkg_name"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg_type"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_79} :catch_7a
    .catchall {:try_start_3e .. :try_end_79} :catchall_e3

    goto :goto_3e

    :catch_7a
    move-exception v0

    :goto_7b
    :try_start_7b
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_9d

    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_7b .. :try_end_9d} :catchall_e3

    :cond_9d
    :try_start_9d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_a5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_d5

    :cond_a5
    move-object v0, v8

    goto/16 :goto_17

    :cond_a8
    :try_start_a8
    const-string v1, "blacklist"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c4} :catch_e5
    .catchall {:try_start_a8 .. :try_end_c4} :catchall_d8

    move-result-object v1

    goto/16 :goto_3e

    :cond_c7
    :try_start_c7
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_7a
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_e3

    move-result-object v0

    :try_start_cb
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_d5

    goto/16 :goto_17

    :catchall_d5
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_d8
    move-exception v0

    move-object v1, v8

    :goto_da
    :try_start_da
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/db/a;->c()V

    if-eqz v1, :cond_e2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e2
    throw v0
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_d5

    :catchall_e3
    move-exception v0

    goto :goto_da

    :catch_e5
    move-exception v0

    move-object v1, v8

    goto :goto_7b
.end method
