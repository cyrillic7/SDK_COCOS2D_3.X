.class public Lcom/baidu/android/pushservice/f/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I
    .registers 16

    const/4 v3, -0x1

    const-wide/16 v0, -0x1

    const/4 v2, -0x2

    if-eqz p0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    move v2, v3

    :cond_13
    :goto_13
    return v2

    :cond_14
    cmp-long v4, p3, v0

    if-gez v4, :cond_19

    move-wide p3, v0

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-ltz v6, :cond_29

    cmp-long v6, p3, v4

    if-gez v6, :cond_29

    move v2, v3

    goto :goto_13

    :cond_29
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/f/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v2

    goto :goto_13

    :cond_34
    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a/a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/a/a;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/f/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "KEY"

    invoke-virtual {v8, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VALUE"

    invoke-virtual {v8, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CREATE_TIME"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "LAST_MODIFY_TIME"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "EXPIRE_TIME"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x0

    :try_start_69
    const-string v4, "LOCAL_WIFI_CACHE"

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6f} :catch_7a
    .catchall {:try_start_69 .. :try_end_6f} :catchall_87

    move-result-wide v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_8c

    move v0, v2

    :goto_75
    invoke-virtual {v6}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    :goto_78
    move v2, v0

    goto :goto_13

    :catch_7a
    move-exception v0

    :try_start_7b
    const-string v0, "WifiCacheDBManager"

    const-string v1, "WifiCacheDBManager putWifiCache  failed"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_87

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    move v0, v2

    goto :goto_78

    :catchall_87
    move-exception v0

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    throw v0

    :cond_8c
    move v0, v3

    goto :goto_75
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v2}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a/a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/a/a;

    move-result-object v2

    if-eqz v2, :cond_b

    :try_start_15
    const-string v1, "SELECT  VALUE FROM LOCAL_WIFI_CACHE WHERE KEY=?"

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/f/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_41
    .catchall {:try_start_15 .. :try_end_24} :catchall_59

    move-result-object v1

    if-eqz v1, :cond_38

    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v6, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_37} :catch_68
    .catchall {:try_start_27 .. :try_end_37} :catchall_66

    move-result-object v0

    :cond_38
    if-eqz v1, :cond_3d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3d
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    goto :goto_b

    :catch_41
    move-exception v1

    move-object v1, v0

    :goto_43
    :try_start_43
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, "WifiCacheDBManager"

    const-string v4, "WifiCacheDBManager getWifiCache  failed"

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_66

    :cond_50
    if-eqz v1, :cond_55

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_55
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    goto :goto_b

    :catchall_59
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5d
    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    throw v0

    :catchall_66
    move-exception v0

    goto :goto_5d

    :catch_68
    move-exception v3

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 7

    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a/a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/a/a;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    if-eqz p1, :cond_19

    const-string v0, "1=1"

    :goto_b
    :try_start_b
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "LOCAL_WIFI_CACHE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_43
    .catchall {:try_start_b .. :try_end_15} :catchall_66

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    goto :goto_6

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXPIRE_TIME <  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "EXPIRE_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!=-1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :catch_43
    move-exception v0

    :try_start_44
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "WifiCacheDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeExpired   failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_66

    :cond_62
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    goto :goto_6

    :catchall_66
    move-exception v0

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I
    .registers 14

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    if-eqz p0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_13
    move v0, v3

    :goto_14
    return v0

    :cond_15
    cmp-long v5, p3, v0

    if-gez v5, :cond_1a

    move-wide p3, v0

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-ltz v5, :cond_2a

    cmp-long v5, p3, v0

    if-gez v5, :cond_2a

    move v0, v4

    goto :goto_14

    :cond_2a
    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a/a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/a/a;

    move-result-object v5

    if-nez v5, :cond_32

    move v0, v4

    goto :goto_14

    :cond_32
    :try_start_32
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "VALUE"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "LAST_MODIFY_TIME"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "EXPIRE_TIME"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/f/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "LOCAL_WIFI_CACHE"

    const-string v6, "KEY=? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5f} :catch_64
    .catchall {:try_start_32 .. :try_end_5f} :catchall_77

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    move v0, v2

    goto :goto_14

    :catch_64
    move-exception v0

    :try_start_65
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "WifiCacheDBManager"

    const-string v1, "WifiCacheDBManager updateCache  failed"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_77

    :cond_72
    invoke-virtual {v5}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    move v0, v3

    goto :goto_14

    :catchall_77
    move-exception v0

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/baidu/android/pushservice/f/a/a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/a/a;

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_14
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "LOCAL_WIFI_CACHE"

    const-string v4, "KEY= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_29
    .catchall {:try_start_14 .. :try_end_25} :catchall_3b

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    goto :goto_9

    :catch_29
    move-exception v2

    :try_start_2a
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "WifiCacheDBManager"

    const-string v3, "WifiCacheDBManager removeWifiCache  failed"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    :cond_37
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    goto :goto_9

    :catchall_3b
    move-exception v0

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/a/a;->b()V

    throw v0
.end method
