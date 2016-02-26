.class final Lcom/alipay/sdk/tid/TidDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "msp.db"

.field private static final b:I = 0x1


# instance fields
.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 35
    const-string v0, "msp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/tid/TidDbHelper;->c:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method private a()Ljava/util/List;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/TidDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_78
    .catchall {:try_start_6 .. :try_end_9} :catchall_5b

    move-result-object v2

    .line 140
    :try_start_a
    const-string v1, "select tid from tb_tid"

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_7b
    .catchall {:try_start_a .. :try_end_10} :catchall_71

    move-result-object v1

    .line 144
    :cond_11
    :goto_11
    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 145
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 147
    iget-object v0, p0, Lcom/alipay/sdk/tid/TidDbHelper;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/sdk/encrypt/Des;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36
    .catchall {:try_start_11 .. :try_end_35} :catchall_76

    goto :goto_11

    .line 152
    :catch_36
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 154
    :goto_39
    if-eqz v0, :cond_3e

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_3e
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 158
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    :cond_49
    :goto_49
    return-object v3

    .line 154
    :cond_4a
    if-eqz v1, :cond_4f

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_4f
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 158
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_49

    .line 154
    :catchall_5b
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_60
    if-eqz v1, :cond_65

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_65
    if-eqz v2, :cond_70

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 158
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_70
    throw v0

    .line 154
    :catchall_71
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_60

    :catchall_76
    move-exception v0

    goto :goto_60

    .line 152
    :catch_78
    move-exception v1

    move-object v1, v0

    goto :goto_39

    :catch_7b
    move-exception v1

    move-object v1, v2

    goto :goto_39
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 236
    .line 237
    const-string v0, "select name from tb_tid where tid!=\'\' order by dt asc"

    .line 238
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 239
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v3, 0xe

    if-gt v0, v3, :cond_14

    .line 240
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_13
    return-void

    .line 243
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0xe

    .line 244
    new-array v4, v3, [Ljava/lang/String;

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 247
    :cond_23
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_33

    if-gt v3, v0, :cond_23

    .line 251
    :cond_33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 252
    :goto_36
    array-length v0, v4

    if-ge v1, v0, :cond_13

    .line 253
    aget-object v0, v4, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 254
    aget-object v0, v4, v1

    invoke-static {p0, v0}, Lcom/alipay/sdk/tid/TidDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 252
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_36
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 228
    :try_start_0
    const-string v0, "tb_tid"

    const-string v1, "name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 232
    :goto_d
    return-void

    .line 231
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 211
    const-string v2, "insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime(\'now\', \'localtime\'))"

    .line 212
    iget-object v0, p0, Lcom/alipay/sdk/tid/TidDbHelper;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/alipay/sdk/encrypt/Des;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object p5, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const-string v0, "select name from tb_tid where tid!=\'\' order by dt asc"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v3, 0xe

    if-gt v0, v3, :cond_38

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_37
    return-void

    .line 215
    :cond_38
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0xe

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    :cond_47
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_57

    if-gt v3, v0, :cond_47

    :cond_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_5a
    array-length v0, v4

    if-ge v1, v0, :cond_37

    aget-object v0, v4, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    aget-object v0, v4, v1

    invoke-static {p1, v0}, Lcom/alipay/sdk/tid/TidDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    const-string v3, "select count(*) from tb_tid where name=?"

    .line 191
    const/4 v2, 0x0

    .line 193
    const/4 v4, 0x1

    :try_start_6
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 195
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_27
    .catchall {:try_start_6 .. :try_end_1d} :catchall_2f

    move-result v3

    .line 199
    :goto_1e
    if-eqz v2, :cond_3a

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    .line 202
    :goto_24
    if-lez v2, :cond_36

    :goto_26
    return v0

    .line 199
    :catch_27
    move-exception v3

    if-eqz v2, :cond_38

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v1

    goto :goto_24

    .line 199
    :catchall_2f
    move-exception v0

    if-eqz v2, :cond_35

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0

    :cond_36
    move v0, v1

    .line 202
    goto :goto_26

    :cond_38
    move v2, v1

    goto :goto_24

    :cond_3a
    move v2, v3

    goto :goto_24

    :cond_3c
    move v3, v1

    goto :goto_1e
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 220
    const-string v1, "update tb_tid set tid=?, key_tid=?, dt=datetime(\'now\', \'localtime\') where name=?"

    .line 221
    iget-object v0, p0, Lcom/alipay/sdk/tid/TidDbHelper;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/alipay/sdk/encrypt/Des;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p5, v2, v0

    const/4 v0, 0x2

    invoke-static {p2, p3}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)J
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    const-string v4, "select dt from tb_tid where name=?"

    .line 115
    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/TidDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_46
    .catchall {:try_start_5 .. :try_end_8} :catchall_59

    move-result-object v3

    .line 116
    const/4 v5, 0x1

    :try_start_a
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 117
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 118
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_6e
    .catchall {:try_start_a .. :try_end_34} :catchall_6c

    move-result-wide v0

    .line 125
    :cond_35
    if-eqz v2, :cond_3a

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_3a
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 128
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    :cond_45
    :goto_45
    return-wide v0

    .line 125
    :catch_46
    move-exception v3

    move-object v3, v2

    :goto_48
    if-eqz v2, :cond_4d

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_4d
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 128
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_45

    .line 125
    :catchall_59
    move-exception v0

    move-object v3, v2

    :goto_5b
    if-eqz v2, :cond_60

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_60
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 128
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6b
    throw v0

    .line 125
    :catchall_6c
    move-exception v0

    goto :goto_5b

    :catch_6e
    move-exception v4

    goto :goto_48
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/TidDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 72
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/tid/TidDbHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/tid/TidDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_22
    .catchall {:try_start_1 .. :try_end_16} :catchall_2f

    .line 76
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 77
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 79
    :cond_21
    :goto_21
    return-void

    .line 76
    :catch_22
    move-exception v0

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 77
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_21

    .line 76
    :catchall_2f
    move-exception v0

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 77
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3b
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 51
    .line 53
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/TidDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    invoke-static {v1, p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/tid/TidDbHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_58
    .catchall {:try_start_2 .. :try_end_14} :catchall_9c

    .line 62
    :cond_14
    :goto_14
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    :cond_1f
    :goto_1f
    return-void

    .line 57
    :cond_20
    :try_start_20
    const-string v3, "insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime(\'now\', \'localtime\'))"

    iget-object v0, p0, Lcom/alipay/sdk/tid/TidDbHelper;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alipay/sdk/encrypt/Des;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object p4, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "select name from tb_tid where tid!=\'\' order by dt asc"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v4, 0xe

    if-gt v0, v4, :cond_65

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_57} :catch_58
    .catchall {:try_start_20 .. :try_end_57} :catchall_9c

    goto :goto_14

    .line 60
    :catch_58
    move-exception v0

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1f

    .line 57
    :cond_65
    :try_start_65
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v4, v0, -0xe

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_85

    move v0, v2

    :cond_74
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_85

    if-gt v4, v0, :cond_74

    :cond_85
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v0, v2

    :goto_89
    array-length v2, v5

    if-ge v0, v2, :cond_14

    aget-object v2, v5, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    aget-object v2, v5, v0

    invoke-static {v1, v2}, Lcom/alipay/sdk/tid/TidDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_99} :catch_58
    .catchall {:try_start_65 .. :try_end_99} :catchall_9c

    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 62
    :catchall_9c
    move-exception v0

    if-eqz v1, :cond_a8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a8
    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 82
    .line 83
    const-string v1, "select tid from tb_tid where name=?"

    .line 88
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/TidDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_48
    .catchall {:try_start_3 .. :try_end_6} :catchall_5d

    move-result-object v2

    .line 89
    const/4 v3, 0x1

    :try_start_8
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_7a
    .catchall {:try_start_8 .. :try_end_14} :catchall_73

    move-result-object v1

    .line 90
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 91
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_7d
    .catchall {:try_start_15 .. :try_end_1f} :catchall_78

    move-result-object v0

    .line 95
    :cond_20
    if-eqz v1, :cond_25

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_25
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 98
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v0

    .line 101
    :goto_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 102
    iget-object v0, p0, Lcom/alipay/sdk/tid/TidDbHelper;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/encrypt/Des;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_47
    return-object v1

    .line 95
    :catch_48
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4b
    if-eqz v1, :cond_50

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_50
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 98
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v0

    goto :goto_31

    .line 95
    :catchall_5d
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_62
    if-eqz v1, :cond_67

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_67
    if-eqz v2, :cond_72

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 98
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_72
    throw v0

    .line 95
    :catchall_73
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_62

    :catchall_78
    move-exception v0

    goto :goto_62

    :catch_7a
    move-exception v1

    move-object v1, v0

    goto :goto_4b

    :catch_7d
    move-exception v3

    goto :goto_4b

    :cond_7f
    move-object v1, v0

    goto :goto_31

    :cond_81
    move-object v1, v0

    goto :goto_31
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 165
    .line 166
    const-string v1, "select key_tid from tb_tid where name=?"

    .line 171
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/TidDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_31
    .catchall {:try_start_3 .. :try_end_6} :catchall_45

    move-result-object v2

    .line 172
    const/4 v3, 0x1

    :try_start_8
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/tid/TidDbHelper;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_62
    .catchall {:try_start_8 .. :try_end_14} :catchall_5b

    move-result-object v1

    .line 173
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 174
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_65
    .catchall {:try_start_15 .. :try_end_1f} :catchall_60

    move-result-object v0

    .line 178
    :cond_20
    if-eqz v1, :cond_25

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_25
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 181
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 184
    :cond_30
    :goto_30
    return-object v0

    .line 178
    :catch_31
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_34
    if-eqz v1, :cond_39

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_39
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 181
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_30

    .line 178
    :catchall_45
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4a
    if-eqz v1, :cond_4f

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_4f
    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 181
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5a
    throw v0

    .line 178
    :catchall_5b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4a

    :catchall_60
    move-exception v0

    goto :goto_4a

    :catch_62
    move-exception v1

    move-object v1, v0

    goto :goto_34

    :catch_65
    move-exception v3

    goto :goto_34
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 41
    const-string v0, "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 46
    const-string v0, "drop table if exists tb_tid"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    return-void
.end method
