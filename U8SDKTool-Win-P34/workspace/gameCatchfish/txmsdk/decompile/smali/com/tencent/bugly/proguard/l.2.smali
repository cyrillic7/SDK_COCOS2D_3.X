.class public final Lcom/tencent/bugly/proguard/l;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/l;

.field private static b:Lcom/tencent/bugly/proguard/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/tencent/bugly/proguard/l;->a:Lcom/tencent/bugly/proguard/l;

    .line 35
    sput-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/tencent/bugly/proguard/m;

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/l;
    .registers 3

    .prologue
    .line 45
    const-class v1, Lcom/tencent/bugly/proguard/l;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/proguard/l;->a:Lcom/tencent/bugly/proguard/l;

    if-nez v0, :cond_e

    .line 46
    new-instance v0, Lcom/tencent/bugly/proguard/l;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/l;->a:Lcom/tencent/bugly/proguard/l;

    .line 47
    :cond_e
    sget-object v0, Lcom/tencent/bugly/proguard/l;->a:Lcom/tencent/bugly/proguard/l;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/x;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 145
    if-nez p0, :cond_5

    move-object v0, v1

    .line 167
    :cond_4
    :goto_4
    return-object v0

    .line 149
    :cond_5
    :try_start_5
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 150
    if-nez v0, :cond_13

    move-object v0, v1

    .line 151
    goto :goto_4

    .line 152
    :cond_13
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 153
    sget-object v4, Lcom/tencent/bugly/proguard/x;->N:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/x;

    .line 154
    if-eqz v0, :cond_4

    .line 156
    iput-wide v2, v0, Lcom/tencent/bugly/proguard/x;->a:J
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_4

    .line 160
    :catch_2a
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    move-object v0, v1

    .line 167
    goto :goto_4
.end method

.method private static b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 747
    if-nez p0, :cond_4

    .line 772
    :cond_3
    :goto_3
    return-object v0

    .line 752
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 753
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 755
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 757
    :cond_1c
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v2, "_tm"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 761
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:[B

    if-eqz v2, :cond_4b

    .line 762
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4b} :catch_4d

    :cond_4b
    move-object v0, v1

    .line 763
    goto :goto_3

    .line 765
    :catch_4d
    move-exception v1

    .line 767
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 769
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private static b(Lcom/tencent/bugly/crashreport/common/strategy/d;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 506
    if-nez p0, :cond_4

    .line 530
    :cond_3
    :goto_3
    return-object v0

    .line 511
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 512
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/d;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 514
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/d;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    :cond_1c
    const-string v2, "_tm"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/d;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    const-string v2, "_ut"

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/d;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v2, "_dt"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_58} :catch_5a

    move-object v0, v1

    .line 521
    goto :goto_3

    .line 523
    :catch_5a
    move-exception v1

    .line 525
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 527
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private static b(Lcom/tencent/bugly/proguard/x;)Landroid/content/ContentValues;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    if-nez p0, :cond_6

    .line 134
    :cond_5
    :goto_5
    return-object v0

    .line 114
    :cond_6
    :try_start_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 115
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/x;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1e

    .line 117
    const-string v4, "_id"

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/x;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    :cond_1e
    const-string v4, "_tm"

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v4, "_s1"

    iget-object v5, p0, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "_up"

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/x;->d:Z

    if-eqz v4, :cond_6c

    move v4, v2

    :goto_37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v4, "_me"

    iget-boolean v5, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v5, :cond_6e

    :goto_44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v2, "_uc"

    iget v3, p0, Lcom/tencent/bugly/proguard/x;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v2, "_dt"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6a} :catch_70

    move-object v0, v1

    .line 125
    goto :goto_5

    :cond_6c
    move v4, v3

    .line 121
    goto :goto_37

    :cond_6e
    move v2, v3

    .line 122
    goto :goto_44

    .line 127
    :catch_70
    move-exception v1

    .line 129
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/w;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 339
    if-nez p0, :cond_6

    .line 358
    :cond_5
    :goto_5
    return-object v0

    .line 344
    :cond_6
    :try_start_6
    new-instance v1, Lcom/tencent/bugly/proguard/w;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/w;-><init>()V

    .line 345
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/proguard/w;->a:J

    .line 346
    const-string v4, "_tm"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/proguard/w;->b:J

    .line 347
    const-string v4, "_s1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/bugly/proguard/w;->c:Ljava/lang/String;

    .line 348
    const-string v4, "_up"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_5a

    move v4, v2

    :goto_3c
    iput-boolean v4, v1, Lcom/tencent/bugly/proguard/w;->d:Z

    .line 349
    const-string v4, "_me"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_5c

    :goto_4a
    iput-boolean v2, v1, Lcom/tencent/bugly/proguard/w;->e:Z

    .line 350
    const-string v2, "_uc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/w;->f:I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_58} :catch_5e

    move-object v0, v1

    .line 351
    goto :goto_5

    :cond_5a
    move v4, v3

    .line 348
    goto :goto_3c

    :cond_5c
    move v2, v3

    .line 349
    goto :goto_4a

    .line 353
    :catch_5e
    move-exception v1

    .line 355
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 356
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public static b(I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 957
    sget-object v1, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_33

    .line 963
    if-ltz p0, :cond_1a

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    :cond_1a
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 965
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_33} :catch_34

    .line 973
    :cond_33
    :goto_33
    return-void

    .line 967
    :catch_34
    move-exception v0

    .line 969
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 970
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33
.end method

.method private static c(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/common/strategy/d;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 610
    if-nez p0, :cond_5

    move-object v0, v1

    .line 632
    :cond_4
    :goto_4
    return-object v0

    .line 614
    :cond_5
    :try_start_5
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 615
    if-nez v0, :cond_13

    move-object v0, v1

    .line 616
    goto :goto_4

    .line 617
    :cond_13
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 618
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/d;->g:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    .line 619
    if-eqz v0, :cond_4

    .line 621
    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->a:J
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_4

    .line 625
    :catch_2a
    move-exception v0

    .line 627
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 629
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    move-object v0, v1

    .line 632
    goto :goto_4
.end method

.method public static c(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 437
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 462
    :cond_9
    :goto_9
    return-void

    .line 440
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_9

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/w;

    .line 445
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/w;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 447
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 449
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 453
    :try_start_4b
    const-string v2, "t_cr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 454
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_cr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_64} :catch_65

    goto :goto_9

    .line 456
    :catch_65
    move-exception v0

    .line 458
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 459
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method private static d(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/common/strategy/a;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 810
    if-nez p0, :cond_4

    .line 829
    :cond_3
    :goto_3
    return-object v0

    .line 814
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;-><init>()V

    .line 815
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:J

    .line 816
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/lang/String;

    .line 817
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Ljava/lang/String;

    .line 818
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:J

    .line 819
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:[B
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_45} :catch_47

    move-object v0, v1

    .line 820
    goto :goto_3

    .line 822
    :catch_47
    move-exception v1

    .line 824
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 826
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static d(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 471
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 496
    :cond_9
    :goto_9
    return-void

    .line 474
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 475
    if-eqz v1, :cond_9

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/x;

    .line 479
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/x;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 481
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 483
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 487
    :try_start_4b
    const-string v2, "t_cr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 488
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_cr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_64} :catch_65

    goto :goto_9

    .line 490
    :catch_65
    move-exception v0

    .line 492
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 493
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public static f(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/common/strategy/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 713
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 737
    :cond_9
    :goto_9
    return-void

    .line 715
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 716
    if-eqz v1, :cond_9

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    .line 720
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 722
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 724
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 725
    :cond_48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 728
    :try_start_4b
    const-string v2, "t_ui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 729
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_ui"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_64} :catch_65

    goto :goto_9

    .line 731
    :catch_65
    move-exception v0

    .line 733
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 734
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public static g(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/common/strategy/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 922
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 946
    :cond_9
    :goto_9
    return-void

    .line 924
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_9

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 929
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 931
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 933
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 937
    :try_start_4b
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 938
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_64} :catch_65

    goto :goto_9

    .line 940
    :catch_65
    move-exception v0

    .line 942
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 943
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method


# virtual methods
.method public final a()Lcom/tencent/bugly/crashreport/common/strategy/b;
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 84
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 85
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:[B

    if-eqz v1, :cond_23

    .line 87
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:[B

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/b;->j:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 90
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final a(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/common/strategy/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 852
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_66

    .line 858
    if-ltz p1, :cond_34

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 859
    :goto_1a
    const-string v1, "t_lr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_24} :catch_d7
    .catchall {:try_start_b .. :try_end_24} :catchall_d1

    move-result-object v2

    .line 860
    if-nez v2, :cond_36

    .line 862
    if-eqz v2, :cond_32

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_32

    .line 907
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v8

    .line 911
    :goto_33
    return-object v0

    :cond_34
    move-object v3, v8

    .line 858
    goto :goto_1a

    .line 865
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 867
    :goto_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 869
    invoke-static {v2}, Lcom/tencent/bugly/proguard/l;->d(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v4

    .line 870
    if-eqz v4, :cond_68

    .line 872
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4f} :catch_50
    .catchall {:try_start_36 .. :try_end_4f} :catchall_8c

    goto :goto_40

    .line 899
    :catch_50
    move-exception v0

    move-object v1, v2

    .line 901
    :goto_52
    :try_start_52
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 902
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_d4

    .line 906
    :cond_5b
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 907
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    move-object v0, v8

    .line 911
    goto :goto_33

    .line 879
    :cond_68
    :try_start_68
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 880
    const-string v6, " or _id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_81} :catch_82
    .catchall {:try_start_68 .. :try_end_81} :catchall_8c

    goto :goto_40

    .line 884
    :catch_82
    move-exception v4

    :try_start_83
    const-string v4, "unknown id!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8b} :catch_50
    .catchall {:try_start_83 .. :try_end_8b} :catchall_8c

    goto :goto_40

    .line 906
    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v2, :cond_98

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_98

    .line 907
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_98
    throw v0

    .line 890
    :cond_99
    :try_start_99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 891
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c3

    .line 893
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 894
    const-string v4, "t_lr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 895
    const-string v3, "deleted %s illegle data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_lr"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_c3} :catch_50
    .catchall {:try_start_99 .. :try_end_c3} :catchall_8c

    .line 906
    :cond_c3
    if-eqz v2, :cond_ce

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 907
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ce
    move-object v0, v1

    goto/16 :goto_33

    .line 906
    :catchall_d1
    move-exception v0

    move-object v2, v8

    goto :goto_8d

    :catchall_d4
    move-exception v0

    move-object v2, v1

    goto :goto_8d

    .line 899
    :catch_d7
    move-exception v0

    move-object v1, v8

    goto/16 :goto_52
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/common/strategy/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 644
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_7c

    .line 650
    if-eqz p1, :cond_34

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34

    :goto_17
    if-eqz v1, :cond_36

    move-object v3, v8

    .line 651
    :goto_1a
    const-string v1, "t_ui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_ed
    .catchall {:try_start_d .. :try_end_24} :catchall_e7

    move-result-object v2

    .line 652
    if-nez v2, :cond_4c

    .line 654
    if-eqz v2, :cond_32

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_32

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v8

    .line 703
    :goto_33
    return-object v0

    :cond_34
    move v1, v2

    .line 650
    goto :goto_17

    :cond_36
    :try_start_36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_pc = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4a} :catch_ed
    .catchall {:try_start_36 .. :try_end_4a} :catchall_e7

    move-result-object v3

    goto :goto_1a

    .line 657
    :cond_4c
    :try_start_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    :goto_56
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 661
    invoke-static {v2}, Lcom/tencent/bugly/proguard/l;->c(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v4

    .line 662
    if-eqz v4, :cond_7e

    .line 664
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_65} :catch_66
    .catchall {:try_start_4c .. :try_end_65} :catchall_a2

    goto :goto_56

    .line 691
    :catch_66
    move-exception v0

    move-object v1, v2

    .line 693
    :goto_68
    :try_start_68
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 694
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_ea

    .line 698
    :cond_71
    if-eqz v1, :cond_7c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 699
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7c
    move-object v0, v8

    .line 703
    goto :goto_33

    .line 671
    :cond_7e
    :try_start_7e
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 672
    const-string v6, " or _id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_97} :catch_98
    .catchall {:try_start_7e .. :try_end_97} :catchall_a2

    goto :goto_56

    .line 676
    :catch_98
    move-exception v4

    :try_start_99
    const-string v4, "unknown id!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_a1} :catch_66
    .catchall {:try_start_99 .. :try_end_a1} :catchall_a2

    goto :goto_56

    .line 698
    :catchall_a2
    move-exception v0

    :goto_a3
    if-eqz v2, :cond_ae

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ae
    throw v0

    .line 682
    :cond_af
    :try_start_af
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d9

    .line 685
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 686
    const-string v4, "t_ui"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 687
    const-string v3, "deleted %s illegle data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_ui"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_d9} :catch_66
    .catchall {:try_start_af .. :try_end_d9} :catchall_a2

    .line 698
    :cond_d9
    if-eqz v2, :cond_e4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e4
    move-object v0, v1

    goto/16 :goto_33

    .line 698
    :catchall_e7
    move-exception v0

    move-object v2, v8

    goto :goto_a3

    :catchall_ea
    move-exception v0

    move-object v2, v1

    goto :goto_a3

    .line 691
    :catch_ed
    move-exception v0

    move-object v1, v8

    goto/16 :goto_68
.end method

.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/a;)V
    .registers 7

    .prologue
    .line 782
    if-nez p1, :cond_3

    .line 799
    :cond_2
    :goto_2
    return-void

    .line 785
    :cond_3
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_2

    .line 788
    invoke-static {p1}, Lcom/tencent/bugly/proguard/l;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/ContentValues;

    move-result-object v1

    .line 789
    if-eqz v1, :cond_2

    .line 791
    const-string v2, "t_lr"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 792
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 794
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_lr"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 795
    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:J

    goto :goto_2
.end method

.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/b;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 62
    if-nez p1, :cond_4

    .line 72
    :goto_3
    return-void

    .line 64
    :cond_4
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;-><init>()V

    .line 65
    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:I

    .line 66
    iget-wide v2, p1, Lcom/tencent/bugly/crashreport/common/strategy/b;->b:J

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:J

    .line 67
    iput-object v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/lang/String;

    .line 68
    iput-object v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Ljava/lang/String;

    .line 69
    iget-wide v2, p1, Lcom/tencent/bugly/crashreport/common/strategy/b;->c:J

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:J

    .line 70
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:[B

    .line 71
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/a;)V

    goto :goto_3
.end method

.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/d;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    if-nez p1, :cond_5

    .line 563
    :cond_4
    :goto_4
    return-void

    .line 544
    :cond_5
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_34

    .line 547
    invoke-static {p1}, Lcom/tencent/bugly/proguard/l;->b(Lcom/tencent/bugly/crashreport/common/strategy/d;)Landroid/content/ContentValues;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_4

    .line 550
    const-string v2, "t_ui"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 551
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 553
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_ui"

    aput-object v3, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 554
    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/d;->a:J

    goto :goto_4

    .line 560
    :cond_34
    const-string v0, "db error delay error record 1min"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 561
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v0

    const-string v1, "save ui fail db null"

    invoke-virtual {v0, v1, v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public final a(Lcom/tencent/bugly/proguard/x;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 177
    if-nez p1, :cond_4

    .line 209
    :cond_3
    :goto_3
    return-void

    .line 182
    :cond_4
    :try_start_4
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_65

    .line 185
    invoke-static {p1}, Lcom/tencent/bugly/proguard/l;->b(Lcom/tencent/bugly/proguard/x;)Landroid/content/ContentValues;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_3

    .line 188
    const-string v2, "t_cr"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 189
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 192
    iput-wide v0, p1, Lcom/tencent/bugly/proguard/x;->a:J
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2d} :catch_2e

    goto :goto_3

    .line 203
    :catch_2e
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    :cond_38
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save crash fail error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 198
    :cond_65
    :try_start_65
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v0

    const-string v1, "save crash fail db null"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6f} :catch_2e

    goto :goto_3
.end method

.method public final a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 249
    :cond_8
    :goto_8
    return-void

    .line 223
    :cond_9
    :try_start_9
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_8

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/x;

    .line 229
    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->b(Lcom/tencent/bugly/proguard/x;)Landroid/content/ContentValues;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_15

    .line 232
    const-string v4, "t_cr"

    const-string v5, "_id"

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 233
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_15

    .line 235
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_cr"

    aput-object v7, v3, v6

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 236
    iput-wide v4, v0, Lcom/tencent/bugly/proguard/x;->a:J
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_42} :catch_43

    goto :goto_15

    .line 243
    :catch_43
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/w;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/x;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 259
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v8

    .line 328
    :goto_c
    return-object v0

    .line 262
    :cond_d
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_92

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/w;

    .line 267
    const-string v3, " or _id"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/bugly/proguard/w;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 269
    :cond_3c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4a

    .line 271
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    :cond_4a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 277
    :try_start_4d
    const-string v1, "t_cr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_57} :catch_104
    .catchall {:try_start_4d .. :try_end_57} :catchall_fe

    move-result-object v2

    .line 278
    if-nez v2, :cond_67

    .line 280
    if-eqz v2, :cond_65

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_65

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_65
    move-object v0, v8

    goto :goto_c

    .line 283
    :cond_67
    :try_start_67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    :goto_6c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 286
    invoke-static {v2}, Lcom/tencent/bugly/proguard/l;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/x;

    move-result-object v3

    .line 287
    if-eqz v3, :cond_95

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_7b} :catch_7c
    .catchall {:try_start_67 .. :try_end_7b} :catchall_b9

    goto :goto_6c

    .line 316
    :catch_7c
    move-exception v0

    move-object v1, v2

    .line 318
    :goto_7e
    :try_start_7e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 319
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_101

    .line 323
    :cond_87
    if-eqz v1, :cond_92

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_92

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_92
    move-object v0, v8

    .line 328
    goto/16 :goto_c

    .line 296
    :cond_95
    :try_start_95
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 297
    const-string v3, " or _id"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_ae} :catch_af
    .catchall {:try_start_95 .. :try_end_ae} :catchall_b9

    goto :goto_6c

    .line 301
    :catch_af
    move-exception v3

    :try_start_b0
    const-string v3, "unknown id!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b8} :catch_7c
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_b9

    goto :goto_6c

    .line 323
    :catchall_b9
    move-exception v0

    :goto_ba
    if-eqz v2, :cond_c5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c5
    throw v0

    .line 307
    :cond_c6
    :try_start_c6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f0

    .line 310
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    const-string v4, "t_cr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 312
    const-string v3, "deleted %s illegle data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_cr"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_f0} :catch_7c
    .catchall {:try_start_c6 .. :try_end_f0} :catchall_b9

    .line 323
    :cond_f0
    if-eqz v2, :cond_fb

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_fb

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_fb
    move-object v0, v1

    goto/16 :goto_c

    .line 323
    :catchall_fe
    move-exception v0

    move-object v2, v8

    goto :goto_ba

    :catchall_101
    move-exception v0

    move-object v2, v1

    goto :goto_ba

    .line 316
    :catch_104
    move-exception v0

    move-object v1, v8

    goto/16 :goto_7e
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->b(I)V

    .line 99
    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/w;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 368
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_74

    .line 374
    const/4 v1, 0x6

    :try_start_a
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_tm"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_s1"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "_up"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "_me"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "_uc"

    aput-object v3, v2, v1

    .line 375
    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_34} :catch_e5
    .catchall {:try_start_a .. :try_end_34} :catchall_df

    move-result-object v2

    .line 376
    if-nez v2, :cond_44

    .line 378
    if-eqz v2, :cond_42

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_42

    .line 423
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_42
    move-object v0, v8

    .line 427
    :goto_43
    return-object v0

    .line 381
    :cond_44
    :try_start_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    :goto_4e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 385
    invoke-static {v2}, Lcom/tencent/bugly/proguard/l;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/w;

    move-result-object v4

    .line 386
    if-eqz v4, :cond_76

    .line 388
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_5d} :catch_5e
    .catchall {:try_start_44 .. :try_end_5d} :catchall_9a

    goto :goto_4e

    .line 415
    :catch_5e
    move-exception v0

    move-object v1, v2

    .line 417
    :goto_60
    :try_start_60
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 418
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_e2

    .line 422
    :cond_69
    if-eqz v1, :cond_74

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_74

    .line 423
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_74
    move-object v0, v8

    .line 427
    goto :goto_43

    .line 395
    :cond_76
    :try_start_76
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 396
    const-string v6, " or _id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_8f} :catch_90
    .catchall {:try_start_76 .. :try_end_8f} :catchall_9a

    goto :goto_4e

    .line 400
    :catch_90
    move-exception v4

    :try_start_91
    const-string v4, "unknown id!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_99} :catch_5e
    .catchall {:try_start_91 .. :try_end_99} :catchall_9a

    goto :goto_4e

    .line 422
    :catchall_9a
    move-exception v0

    :goto_9b
    if-eqz v2, :cond_a6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a6

    .line 423
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a6
    throw v0

    .line 406
    :cond_a7
    :try_start_a7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d1

    .line 409
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 410
    const-string v4, "t_cr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 411
    const-string v3, "deleted %s illegle data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_cr"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_d1} :catch_5e
    .catchall {:try_start_a7 .. :try_end_d1} :catchall_9a

    .line 422
    :cond_d1
    if-eqz v2, :cond_dc

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 423
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_dc
    move-object v0, v1

    goto/16 :goto_43

    .line 422
    :catchall_df
    move-exception v0

    move-object v2, v8

    goto :goto_9b

    :catchall_e2
    move-exception v0

    move-object v2, v1

    goto :goto_9b

    .line 415
    :catch_e5
    move-exception v0

    move-object v1, v8

    goto/16 :goto_60
.end method

.method public final e(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/common/strategy/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 574
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 599
    :cond_9
    :goto_9
    return-void

    .line 577
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/l;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_43

    .line 580
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    .line 582
    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->b(Lcom/tencent/bugly/crashreport/common/strategy/d;)Landroid/content/ContentValues;

    move-result-object v3

    .line 583
    if-eqz v3, :cond_16

    .line 585
    const-string v4, "t_ui"

    const-string v5, "_id"

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 586
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_16

    .line 588
    new-array v3, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_ui"

    aput-object v7, v3, v6

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 589
    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->a:J

    goto :goto_16

    .line 596
    :cond_43
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v0

    const-string v1, "save ui list fail db null"

    invoke-virtual {v0, v1, v8}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    goto :goto_9
.end method
