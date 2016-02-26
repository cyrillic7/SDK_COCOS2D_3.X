.class public Lcom/tencent/open/b/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# static fields
.field protected static final a:[Ljava/lang/String;

.field protected static b:Lcom/tencent/open/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/open/b/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 57
    const-string v0, "sdk_report.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 58
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/f;
    .registers 3

    .prologue
    .line 49
    const-class v1, Lcom/tencent/open/b/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/open/b/f;->b:Lcom/tencent/open/b/f;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/tencent/open/b/f;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/open/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/open/b/f;->b:Lcom/tencent/open/b/f;

    .line 53
    :cond_12
    sget-object v0, Lcom/tencent/open/b/f;->b:Lcom/tencent/open/b/f;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 81
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_ab

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v8

    .line 145
    :goto_12
    monitor-exit p0

    return-object v0

    .line 86
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/tencent/open/b/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_ab

    move-result-object v0

    .line 87
    if-nez v0, :cond_1c

    move-object v0, v8

    .line 88
    goto :goto_12

    .line 92
    :cond_1c
    const/4 v10, 0x0

    .line 94
    :try_start_1d
    const-string v1, "via_cgi_report"

    const/4 v2, 0x0

    const-string v3, "type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_df
    .catchall {:try_start_1d .. :try_end_2e} :catchall_b8

    move-result-object v3

    .line 95
    if-eqz v3, :cond_67

    :try_start_31
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_67

    .line 96
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    :cond_3a
    const-string v1, "blob"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 100
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_92
    .catchall {:try_start_31 .. :try_end_49} :catchall_d9

    .line 106
    :try_start_49
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_78
    .catchall {:try_start_49 .. :try_end_4e} :catchall_87

    .line 107
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_54} :catch_e4
    .catchall {:try_start_4e .. :try_end_54} :catchall_e2

    .line 111
    if-eqz v2, :cond_59

    .line 112
    :try_start_56
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_92
    .catchall {:try_start_56 .. :try_end_59} :catchall_d9

    .line 118
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_92
    .catchall {:try_start_59 .. :try_end_5c} :catchall_d9

    .line 123
    :goto_5c
    if-eqz v1, :cond_61

    .line 124
    :try_start_5e
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_61
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_64} :catch_92
    .catchall {:try_start_5e .. :try_end_64} :catchall_d9

    move-result v1

    if-nez v1, :cond_3a

    .line 131
    :cond_67
    if-eqz v3, :cond_6c

    .line 132
    :try_start_69
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_ab

    .line 134
    :cond_6c
    if-eqz v9, :cond_71

    .line 136
    :try_start_6e
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_ae
    .catchall {:try_start_6e .. :try_end_71} :catchall_ab

    .line 141
    :cond_71
    :goto_71
    if-eqz v0, :cond_76

    .line 142
    :try_start_73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_ab

    :cond_76
    :goto_76
    move-object v0, v8

    .line 145
    goto :goto_12

    .line 108
    :catch_78
    move-exception v1

    move-object v1, v9

    .line 111
    :goto_7a
    if-eqz v1, :cond_7f

    .line 112
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_92
    .catchall {:try_start_7c .. :try_end_7f} :catchall_d9

    .line 118
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_84
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_92
    .catchall {:try_start_7f .. :try_end_82} :catchall_d9

    move-object v1, v9

    .line 121
    goto :goto_5c

    .line 119
    :catch_84
    move-exception v1

    move-object v1, v9

    .line 122
    goto :goto_5c

    .line 110
    :catchall_87
    move-exception v1

    move-object v2, v9

    .line 111
    :goto_89
    if-eqz v2, :cond_8e

    .line 112
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_92
    .catchall {:try_start_8b .. :try_end_8e} :catchall_d9

    .line 118
    :cond_8e
    :goto_8e
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92
    .catchall {:try_start_8e .. :try_end_91} :catchall_d9

    .line 121
    :goto_91
    :try_start_91
    throw v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_92} :catch_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_d9

    .line 128
    :catch_92
    move-exception v1

    move-object v1, v3

    .line 129
    :goto_94
    :try_start_94
    const-string v2, "openSDK_LOG.ReportDatabaseHelper"

    const-string v3, "getReportItemFromDB has exception."

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_db

    .line 131
    if-eqz v1, :cond_a0

    .line 132
    :try_start_9d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_ab

    .line 134
    :cond_a0
    if-eqz v9, :cond_a5

    .line 136
    :try_start_a2
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_b3
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_ab

    .line 141
    :cond_a5
    :goto_a5
    if-eqz v0, :cond_76

    .line 142
    :try_start_a7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_76

    .line 81
    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :catch_ae
    move-exception v1

    .line 138
    :try_start_af
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_71

    .line 137
    :catch_b3
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    .line 131
    :catchall_b8
    move-exception v1

    move-object v3, v9

    :goto_ba
    if-eqz v3, :cond_bf

    .line 132
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_ab

    .line 134
    :cond_bf
    if-eqz v9, :cond_c4

    .line 136
    :try_start_c1
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_ca
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_ab

    .line 141
    :cond_c4
    :goto_c4
    if-eqz v0, :cond_c9

    .line 142
    :try_start_c6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c9
    throw v1

    .line 137
    :catch_ca
    move-exception v2

    .line 138
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_ab

    goto :goto_c4

    .line 114
    :catch_cf
    move-exception v2

    goto :goto_59

    .line 119
    :catch_d1
    move-exception v2

    goto :goto_5c

    .line 114
    :catch_d3
    move-exception v1

    goto :goto_7f

    :catch_d5
    move-exception v2

    goto :goto_8e

    .line 119
    :catch_d7
    move-exception v2

    goto :goto_91

    .line 131
    :catchall_d9
    move-exception v1

    goto :goto_ba

    :catchall_db
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_ba

    .line 128
    :catch_df
    move-exception v1

    move-object v1, v9

    goto :goto_94

    .line 110
    :catchall_e2
    move-exception v1

    goto :goto_89

    .line 108
    :catch_e4
    move-exception v1

    move-object v1, v2

    goto :goto_7a
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x14

    .line 189
    monitor-enter p0

    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8f

    move-result v0

    .line 190
    if-nez v0, :cond_c

    .line 251
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 194
    :cond_c
    if-gt v0, v1, :cond_64

    move v4, v0

    .line 196
    :goto_f
    :try_start_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 201
    invoke-virtual {p0, p1}, Lcom/tencent/open/b/f;->b(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/tencent/open/b/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 203
    if-eqz v5, :cond_a

    .line 207
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_8f

    .line 209
    :try_start_21
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 210
    const/4 v0, 0x0

    move v3, v0

    :goto_28
    if-ge v3, v4, :cond_92

    .line 211
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 212
    if-eqz v0, :cond_5d

    .line 213
    const-string v1, "type"

    invoke-virtual {v6, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v7, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_7d
    .catchall {:try_start_21 .. :try_end_3e} :catchall_9f

    .line 218
    :try_start_3e
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_66
    .catchall {:try_start_3e .. :try_end_43} :catchall_73

    .line 219
    :try_start_43
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_b6
    .catchall {:try_start_43 .. :try_end_46} :catchall_b3

    .line 223
    if-eqz v1, :cond_4b

    .line 224
    :try_start_48
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_7d
    .catchall {:try_start_48 .. :try_end_4b} :catchall_9f

    .line 230
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_7d
    .catchall {:try_start_4b .. :try_end_4e} :catchall_9f

    .line 235
    :goto_4e
    :try_start_4e
    const-string v0, "blob"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 236
    const-string v0, "via_cgi_report"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 239
    :cond_5d
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_60} :catch_7d
    .catchall {:try_start_4e .. :try_end_60} :catchall_9f

    .line 210
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_28

    :cond_64
    move v4, v1

    .line 194
    goto :goto_f

    .line 220
    :catch_66
    move-exception v0

    move-object v0, v2

    .line 223
    :goto_68
    if-eqz v0, :cond_6d

    .line 224
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_7d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_9f

    .line 230
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_7d
    .catchall {:try_start_6d .. :try_end_70} :catchall_9f

    goto :goto_4e

    .line 231
    :catch_71
    move-exception v0

    goto :goto_4e

    .line 222
    :catchall_73
    move-exception v0

    .line 223
    :goto_74
    if-eqz v2, :cond_79

    .line 224
    :try_start_76
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_af
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7d
    .catchall {:try_start_76 .. :try_end_79} :catchall_9f

    .line 230
    :cond_79
    :goto_79
    :try_start_79
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d
    .catchall {:try_start_79 .. :try_end_7c} :catchall_9f

    .line 233
    :goto_7c
    :try_start_7c
    throw v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7d} :catch_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_9f

    .line 242
    :catch_7d
    move-exception v0

    .line 243
    :try_start_7e
    const-string v0, "openSDK_LOG.ReportDatabaseHelper"

    const-string v1, "saveReportItemToDB has exception."

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_9f

    .line 245
    :try_start_85
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    if-eqz v5, :cond_a

    .line 247
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_8f

    goto/16 :goto_a

    .line 189
    :catchall_8f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_92
    :try_start_92
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_7d
    .catchall {:try_start_92 .. :try_end_95} :catchall_9f

    .line 245
    :try_start_95
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    if-eqz v5, :cond_a

    .line 247
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_a

    .line 245
    :catchall_9f
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    if-eqz v5, :cond_a8

    .line 247
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_8f

    .line 226
    :catch_a9
    move-exception v0

    goto :goto_4b

    .line 231
    :catch_ab
    move-exception v0

    goto :goto_4e

    .line 226
    :catch_ad
    move-exception v0

    goto :goto_6d

    :catch_af
    move-exception v1

    goto :goto_79

    .line 231
    :catch_b1
    move-exception v1

    goto :goto_7c

    .line 222
    :catchall_b3
    move-exception v0

    move-object v2, v1

    goto :goto_74

    .line 220
    :catch_b6
    move-exception v0

    move-object v0, v1

    goto :goto_68
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    move-result v0

    if-eqz v0, :cond_9

    .line 276
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 262
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/tencent/open/b/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_22

    move-result-object v1

    .line 263
    if-eqz v1, :cond_7

    .line 268
    :try_start_f
    const-string v0, "via_cgi_report"

    const-string v2, "type = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_25
    .catchall {:try_start_f .. :try_end_1c} :catchall_33

    .line 272
    if-eqz v1, :cond_7

    .line 273
    :try_start_1e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_7

    .line 259
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :catch_25
    move-exception v0

    .line 270
    :try_start_26
    const-string v0, "openSDK_LOG.ReportDatabaseHelper"

    const-string v2, "clearReportItem has exception."

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_33

    .line 272
    if-eqz v1, :cond_7

    .line 273
    :try_start_2f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    .line 272
    :catchall_33
    move-exception v0

    if-eqz v1, :cond_39

    .line 273
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_39
    throw v0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_22
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 62
    const-string v0, "CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 71
    const-string v0, "DROP TABLE IF EXISTS via_cgi_report"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/tencent/open/b/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method
