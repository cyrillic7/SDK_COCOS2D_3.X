.class public Lcom/tencent/beacon/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:J

.field private e:[B

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide v2, p0, Lcom/tencent/beacon/a/a/a;->a:J

    .line 12
    iput v0, p0, Lcom/tencent/beacon/a/a/a;->b:I

    .line 13
    iput v0, p0, Lcom/tencent/beacon/a/a/a;->c:I

    .line 14
    iput-wide v2, p0, Lcom/tencent/beacon/a/a/a;->d:J

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/a/a/a;->e:[B

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/a/a/a;->f:J

    .line 35
    return-void
.end method

.method public constructor <init>(IIJ[B)V
    .registers 11

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide v2, p0, Lcom/tencent/beacon/a/a/a;->a:J

    .line 12
    iput v0, p0, Lcom/tencent/beacon/a/a/a;->b:I

    .line 13
    iput v0, p0, Lcom/tencent/beacon/a/a/a;->c:I

    .line 14
    iput-wide v2, p0, Lcom/tencent/beacon/a/a/a;->d:J

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/a/a/a;->e:[B

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/a/a/a;->f:J

    .line 38
    iput p1, p0, Lcom/tencent/beacon/a/a/a;->b:I

    .line 39
    iput p2, p0, Lcom/tencent/beacon/a/a/a;->c:I

    .line 40
    iput-wide p3, p0, Lcom/tencent/beacon/a/a/a;->d:J

    .line 41
    iput-object p5, p0, Lcom/tencent/beacon/a/a/a;->e:[B

    .line 43
    if-eqz p5, :cond_23

    .line 44
    array-length v0, p5

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/beacon/a/a/a;->f:J

    .line 45
    :cond_23
    return-void
.end method

.method public static a(Landroid/content/Context;[IJJ)I
    .registers 14

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 208
    const-string v0, " AnalyticsDAO.delete() start"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    if-nez p0, :cond_14

    .line 212
    const-string v0, " delete() context is null arg"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :goto_13
    return v4

    .line 217
    :cond_14
    cmp-long v0, p2, p4

    if-lez v0, :cond_1a

    move v4, v1

    .line 218
    goto :goto_13

    .line 220
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_time >= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and _time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    if-eqz p1, :cond_124

    array-length v0, p1

    if-lez v0, :cond_124

    .line 224
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 225
    :goto_42
    array-length v6, p1

    if-ge v0, v6, :cond_61

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " or _type = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v6, p1, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 228
    :cond_61
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " delete where: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :try_start_97
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9a} :catch_d5
    .catchall {:try_start_97 .. :try_end_9a} :catchall_fa

    move-result-object v3

    .line 241
    :try_start_9b
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_11d
    .catchall {:try_start_9b .. :try_end_9e} :catchall_115

    move-result-object v2

    .line 242
    :try_start_9f
    const-string v5, "t_event"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " deleted num: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_bb} :catch_121
    .catchall {:try_start_9f .. :try_end_bb} :catchall_118

    .line 248
    if-eqz v2, :cond_c6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 249
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 251
    :cond_c6
    if-eqz v3, :cond_cb

    .line 252
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 254
    :cond_cb
    const-string v2, " AnalyticsDAO.delete() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d2
    move v4, v0

    .line 256
    goto/16 :goto_13

    .line 244
    :catch_d5
    move-exception v0

    move-object v2, v5

    .line 245
    :goto_d7
    :try_start_d7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e1
    .catchall {:try_start_d7 .. :try_end_e1} :catchall_11a

    .line 248
    if-eqz v2, :cond_ec

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 249
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 251
    :cond_ec
    if-eqz v5, :cond_f1

    .line 252
    invoke-virtual {v5}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 254
    :cond_f1
    const-string v0, " AnalyticsDAO.delete() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 255
    goto :goto_d2

    .line 248
    :catchall_fa
    move-exception v0

    move-object v2, v5

    move-object v3, v5

    :goto_fd
    if-eqz v2, :cond_108

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 249
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 251
    :cond_108
    if-eqz v3, :cond_10d

    .line 252
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 254
    :cond_10d
    const-string v2, " AnalyticsDAO.delete() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 248
    :catchall_115
    move-exception v0

    move-object v2, v5

    goto :goto_fd

    :catchall_118
    move-exception v0

    goto :goto_fd

    :catchall_11a
    move-exception v0

    move-object v3, v5

    goto :goto_fd

    .line 244
    :catch_11d
    move-exception v0

    move-object v2, v5

    move-object v5, v3

    goto :goto_d7

    :catch_121
    move-exception v0

    move-object v5, v3

    goto :goto_d7

    :cond_124
    move-object v0, v3

    goto/16 :goto_83
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/Long;)I
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 262
    const-string v0, " AnalyticsDAO.deleteList() start!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    if-nez p0, :cond_14

    .line 266
    const-string v0, " deleteList() have null args!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    const/4 v0, -0x1

    .line 349
    :goto_13
    return v0

    .line 271
    :cond_14
    if-eqz p1, :cond_19

    array-length v0, p1

    if-gtz v0, :cond_1b

    :cond_19
    move v0, v1

    .line 272
    goto :goto_13

    .line 279
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_cf
    .catchall {:try_start_1b .. :try_end_1e} :catchall_f7

    move-result-object v4

    .line 281
    :try_start_1f
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_117
    .catchall {:try_start_1f .. :try_end_22} :catchall_112

    move-result-object v3

    .line 283
    :try_start_23
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_11c
    .catchall {:try_start_23 .. :try_end_28} :catchall_115

    move v2, v1

    move v0, v1

    .line 300
    :goto_2a
    :try_start_2a
    array-length v6, p1

    if-ge v2, v6, :cond_89

    .line 304
    aget-object v6, p1, v2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " or  _id = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    if-lez v2, :cond_86

    rem-int/lit8 v6, v2, 0x19

    if-nez v6, :cond_86

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " current "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 315
    const-string v7, "t_event"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 317
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " current deleteNum: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 324
    :cond_89
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_a1

    .line 327
    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v6, "t_event"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_9a} :catch_120
    .catchall {:try_start_2a .. :try_end_9a} :catchall_115

    move-result v2

    add-int/2addr v2, v0

    .line 331
    const/4 v0, 0x0

    :try_start_9d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_122
    .catchall {:try_start_9d .. :try_end_a0} :catchall_115

    move v0, v2

    .line 334
    :cond_a1
    :try_start_a1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " total deleteNum: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_b6} :catch_120
    .catchall {:try_start_a1 .. :try_end_b6} :catchall_115

    .line 341
    if-eqz v3, :cond_c1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 342
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 344
    :cond_c1
    if-eqz v4, :cond_c6

    .line 345
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 347
    :cond_c6
    const-string v2, " AnalyticsDAO.deleteList() end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 338
    :catch_cf
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v2, v0

    move v0, v1

    .line 339
    :goto_d4
    :try_start_d4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_115

    .line 341
    if-eqz v3, :cond_e9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 342
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 344
    :cond_e9
    if-eqz v4, :cond_ee

    .line 345
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 347
    :cond_ee
    const-string v2, " AnalyticsDAO.deleteList() end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 341
    :catchall_f7
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_fa
    if-eqz v3, :cond_105

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_105

    .line 342
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 344
    :cond_105
    if-eqz v4, :cond_10a

    .line 345
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 347
    :cond_10a
    const-string v2, " AnalyticsDAO.deleteList() end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 341
    :catchall_112
    move-exception v0

    move-object v3, v2

    goto :goto_fa

    :catchall_115
    move-exception v0

    goto :goto_fa

    .line 338
    :catch_117
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto :goto_d4

    :catch_11c
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_d4

    :catch_120
    move-exception v2

    goto :goto_d4

    :catch_122
    move-exception v0

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    goto :goto_d4
.end method

.method public static a(Lcom/tencent/beacon/a/a/a;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 512
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 513
    iget-wide v2, p0, Lcom/tencent/beacon/a/a/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_18

    .line 514
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/tencent/beacon/a/a/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    :cond_18
    const-string v1, "_prority"

    iget v2, p0, Lcom/tencent/beacon/a/a/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v1, "_time"

    iget-wide v2, p0, Lcom/tencent/beacon/a/a/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    const-string v1, "_type"

    iget v2, p0, Lcom/tencent/beacon/a/a/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v1, "_datas"

    iget-object v2, p0, Lcom/tencent/beacon/a/a/a;->e:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 520
    const-string v1, "_length"

    iget-wide v2, p0, Lcom/tencent/beacon/a/a/a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 14

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 21
    const-string v0, " AnalyticsDAO.queryReqData() start"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    if-nez p0, :cond_14

    .line 23
    const-string v0, " AnalyticsDAO.queryReqData() context null "

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v9

    .line 57
    :goto_13
    return-object v0

    .line 31
    :cond_14
    :try_start_14
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_a1
    .catchall {:try_start_14 .. :try_end_17} :catchall_c9

    move-result-object v10

    .line 32
    :try_start_18
    invoke-virtual {v10}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_fb
    .catchall {:try_start_18 .. :try_end_1b} :catchall_ef

    move-result-object v0

    .line 33
    :try_start_1c
    const-string v1, "t_req_data"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_time DESC "

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_100
    .catchall {:try_start_1c .. :try_end_2a} :catchall_f2

    move-result-object v2

    .line 34
    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_105
    .catchall {:try_start_2b .. :try_end_36} :catchall_f7

    .line 36
    :try_start_36
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v3, "_rid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v3, "_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v3, "_datas"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_72
    if-eqz v1, :cond_7c

    .line 42
    const-string v3, "queryReqData: 1"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7c} :catch_10b
    .catchall {:try_start_36 .. :try_end_7c} :catchall_f7

    .line 46
    :cond_7c
    if-eqz v2, :cond_87

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_87

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_87
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_92
    if-eqz v10, :cond_97

    .line 53
    invoke-virtual {v10}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 55
    :cond_97
    const-string v0, " AnalyticsDAO.queryReqData() end"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 56
    goto/16 :goto_13

    .line 46
    :catch_a1
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    move-object v2, v9

    :goto_a5
    if-eqz v9, :cond_b0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b0

    .line 47
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_b0
    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_bb
    if-eqz v2, :cond_c0

    .line 53
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 55
    :cond_c0
    const-string v1, " AnalyticsDAO.queryReqData() end"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 46
    :catchall_c9
    move-exception v0

    move-object v2, v9

    move-object v10, v9

    :goto_cc
    if-eqz v2, :cond_d7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d7

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_d7
    if-eqz v9, :cond_e2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 50
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_e2
    if-eqz v10, :cond_e7

    .line 53
    invoke-virtual {v10}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 55
    :cond_e7
    const-string v1, " AnalyticsDAO.queryReqData() end"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 46
    :catchall_ef
    move-exception v0

    move-object v2, v9

    goto :goto_cc

    :catchall_f2
    move-exception v1

    move-object v2, v9

    move-object v9, v0

    move-object v0, v1

    goto :goto_cc

    :catchall_f7
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_cc

    :catch_fb
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    move-object v2, v10

    goto :goto_a5

    :catch_100
    move-exception v1

    move-object v1, v0

    move-object v2, v10

    move-object v0, v9

    goto :goto_a5

    :catch_105
    move-exception v1

    move-object v1, v0

    move-object v0, v9

    move-object v9, v2

    move-object v2, v10

    goto :goto_a5

    :catch_10b
    move-exception v3

    move-object v9, v2

    move-object v2, v10

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_a5

    :cond_112
    move-object v1, v9

    goto/16 :goto_72
.end method

.method public static a(Landroid/content/Context;[IIIIIIIIJJ)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[IIIIIIIIJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    const-string v2, " in AnalyticsDAO.query() start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    if-eqz p0, :cond_24

    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-lez v2, :cond_14

    cmp-long v2, p9, p11

    if-gtz v2, :cond_24

    :cond_14
    if-lez p6, :cond_1c

    move/from16 v0, p5

    move/from16 v1, p6

    if-gt v0, v1, :cond_24

    :cond_1c
    if-lez p8, :cond_2e

    move/from16 v0, p7

    move/from16 v1, p8

    if-le v0, v1, :cond_2e

    .line 598
    :cond_24
    const-string v2, " query() args context == null || timeStart > timeEnd || miniCount > maxCount || miniUploadCount > maxUploadCount ,pls check"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    const/4 v2, 0x0

    .line 687
    :goto_2d
    return-object v2

    .line 602
    :cond_2e
    const-string v4, ""

    .line 605
    if-eqz p1, :cond_28d

    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_28d

    .line 607
    const-string v3, ""

    .line 609
    const/4 v2, 0x0

    :goto_3a
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v2, v5, :cond_5b

    .line 610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " or _type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 614
    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    :goto_71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 619
    :goto_8c
    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-ltz v2, :cond_bd

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a3

    const-string v2, " and "

    :goto_a3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_time >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 624
    :cond_bd
    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-ltz v2, :cond_ee

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a7

    const-string v2, " and "

    :goto_d4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_time <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 630
    :cond_ee
    const-string v2, ""

    .line 632
    packed-switch p2, :pswitch_data_290

    .line 641
    :goto_f3
    packed-switch p3, :pswitch_data_298

    .line 650
    :goto_f6
    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28a

    .line 651
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 654
    :goto_109
    const-string v2, " query:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    const/4 v3, 0x0

    .line 657
    const/4 v4, 0x0

    .line 658
    const/4 v13, 0x0

    .line 659
    const/4 v12, 0x0

    .line 661
    :try_start_118
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_11b} :catch_202
    .catchall {:try_start_118 .. :try_end_11b} :catchall_237

    move-result-object v11

    .line 663
    :try_start_11c
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_11f} :catch_26f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_25f

    move-result-object v2

    .line 665
    :try_start_120
    const-string v3, "t_event"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ltz p4, :cond_1ff

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_137
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_13a} :catch_276
    .catchall {:try_start_120 .. :try_end_13a} :catchall_263

    move-result-object v5

    .line 666
    :try_start_13b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result num: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_287

    .line 668
    invoke-static {v5}, Lcom/tencent/beacon/a/a/a;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_13b .. :try_end_15d} :catch_27c
    .catchall {:try_start_13b .. :try_end_15d} :catchall_268

    move-result-object v3

    .line 670
    :goto_15e
    if-eqz v3, :cond_179

    .line 671
    :try_start_160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " total num: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_179} :catch_281
    .catchall {:try_start_160 .. :try_end_179} :catchall_268

    .line 676
    :cond_179
    if-eqz v5, :cond_184

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_184

    .line 677
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_184
    if-eqz v2, :cond_18f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 680
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 682
    :cond_18f
    if-eqz v11, :cond_194

    .line 683
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 685
    :cond_194
    const-string v2, " in AnalyticsDAO.query() end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 686
    goto/16 :goto_2d

    .line 617
    :cond_19f
    const-string v5, ""

    goto/16 :goto_8c

    .line 620
    :cond_1a3
    const-string v2, ""

    goto/16 :goto_a3

    .line 625
    :cond_1a7
    const-string v2, ""

    goto/16 :goto_d4

    .line 634
    :pswitch_1ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_prority ASC , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f3

    .line 637
    :pswitch_1c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_prority DESC , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f3

    .line 643
    :pswitch_1d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_time ASC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f6

    .line 646
    :pswitch_1ea
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_time DESC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f6

    .line 665
    :cond_1ff
    const/4 v10, 0x0

    goto/16 :goto_137

    .line 673
    :catch_202
    move-exception v2

    move-object v5, v13

    move-object v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v12

    .line 674
    :goto_208
    :try_start_208
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_212
    .catchall {:try_start_208 .. :try_end_212} :catchall_26c

    .line 676
    if-eqz v5, :cond_21d

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_21d

    .line 677
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_21d
    if-eqz v6, :cond_228

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_228

    .line 680
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 682
    :cond_228
    if-eqz v4, :cond_22d

    .line 683
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 685
    :cond_22d
    const-string v3, " in AnalyticsDAO.query() end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2d

    .line 676
    :catchall_237
    move-exception v2

    move-object v11, v3

    move-object v5, v13

    move-object v6, v4

    :goto_23b
    if-eqz v5, :cond_246

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_246

    .line 677
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_246
    if-eqz v6, :cond_251

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_251

    .line 680
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 682
    :cond_251
    if-eqz v11, :cond_256

    .line 683
    invoke-virtual {v11}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 685
    :cond_256
    const-string v3, " in AnalyticsDAO.query() end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 676
    :catchall_25f
    move-exception v2

    move-object v5, v13

    move-object v6, v4

    goto :goto_23b

    :catchall_263
    move-exception v3

    move-object v5, v13

    move-object v6, v2

    move-object v2, v3

    goto :goto_23b

    :catchall_268
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    goto :goto_23b

    :catchall_26c
    move-exception v2

    move-object v11, v4

    goto :goto_23b

    .line 673
    :catch_26f
    move-exception v2

    move-object v3, v2

    move-object v5, v13

    move-object v6, v4

    move-object v4, v11

    move-object v2, v12

    goto :goto_208

    :catch_276
    move-exception v3

    move-object v4, v11

    move-object v5, v13

    move-object v6, v2

    move-object v2, v12

    goto :goto_208

    :catch_27c
    move-exception v3

    move-object v4, v11

    move-object v6, v2

    move-object v2, v12

    goto :goto_208

    :catch_281
    move-exception v4

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v11

    goto :goto_208

    :cond_287
    move-object v3, v12

    goto/16 :goto_15e

    :cond_28a
    move-object v9, v2

    goto/16 :goto_109

    :cond_28d
    move-object v2, v4

    goto/16 :goto_71

    .line 632
    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_1ab
        :pswitch_1c0
    .end packed-switch

    .line 641
    :pswitch_data_298
    .packed-switch 0x1
        :pswitch_1d5
        :pswitch_1ea
    .end packed-switch
.end method

.method protected static a(Landroid/database/Cursor;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 370
    const-string v0, " in AnalyticsDAO.paserCursor() start"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    if-nez p0, :cond_c

    .line 373
    const/4 v0, 0x0

    .line 396
    :goto_b
    return-object v0

    .line 375
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 378
    const-string v2, "_prority"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 379
    const-string v3, "_time"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 380
    const-string v4, "_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 381
    const-string v5, "_datas"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 382
    const-string v6, "_length"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 384
    :goto_35
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 385
    new-instance v7, Lcom/tencent/beacon/a/a/a;

    invoke-direct {v7}, Lcom/tencent/beacon/a/a/a;-><init>()V

    .line 386
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/beacon/a/a/a;->a:J

    .line 387
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/beacon/a/a/a;->e:[B

    .line 388
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/tencent/beacon/a/a/a;->c:I

    .line 389
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/beacon/a/a/a;->d:J

    .line 390
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/tencent/beacon/a/a/a;->b:I

    .line 391
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/tencent/beacon/a/a/a;->f:J

    .line 392
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 395
    :cond_68
    const-string v1, " in AnalyticsDAO.paserCursor() end"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    const-string v3, " AnalyticsDAO.deleteReqData() start"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    if-nez p0, :cond_14

    .line 101
    const-string v0, " delete() context is null arg"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_13
    :goto_13
    return v1

    .line 105
    :cond_14
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_rid = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " delete where: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :try_start_4b
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_8a
    .catchall {:try_start_4b .. :try_end_4e} :catchall_af

    move-result-object v3

    .line 119
    :try_start_4f
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 120
    const-string v5, "t_req_data"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " deleted num: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_6f} :catch_cb
    .catchall {:try_start_4f .. :try_end_6f} :catchall_c9

    .line 122
    if-ne v4, v0, :cond_cd

    .line 128
    :goto_71
    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    :cond_7c
    if-eqz v3, :cond_81

    .line 132
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 134
    :cond_81
    const-string v2, " AnalyticsDAO.deleteReqData() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_88
    move v1, v0

    .line 136
    goto :goto_13

    .line 125
    :catch_8a
    move-exception v0

    move-object v3, v2

    .line 126
    :goto_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_c9

    .line 128
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    :cond_a1
    if-eqz v3, :cond_a6

    .line 132
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 134
    :cond_a6
    const-string v0, " AnalyticsDAO.deleteReqData() end"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 135
    goto :goto_88

    .line 128
    :catchall_af
    move-exception v0

    move-object v3, v2

    :goto_b1
    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    :cond_bc
    if-eqz v3, :cond_c1

    .line 132
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 134
    :cond_c1
    const-string v2, " AnalyticsDAO.deleteReqData() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 128
    :catchall_c9
    move-exception v0

    goto :goto_b1

    .line 125
    :catch_cb
    move-exception v0

    goto :goto_8c

    :cond_cd
    move v0, v1

    goto :goto_71
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    const-string v3, " AnalyticsDAO.insert() start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    if-eqz p0, :cond_e

    if-nez p1, :cond_17

    .line 156
    :cond_e
    const-string v0, " AnalyticsDAO.insert() have null args"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 199
    :goto_16
    return v1

    .line 161
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    .line 162
    const-string v0, " list size == 0 return true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 171
    :cond_25
    :try_start_25
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_7d
    .catchall {:try_start_25 .. :try_end_28} :catchall_a3

    move-result-object v4

    .line 173
    :try_start_29
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_ce
    .catchall {:try_start_29 .. :try_end_2c} :catchall_c2

    move-result-object v3

    .line 174
    :try_start_2d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v5, v2

    .line 175
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5d

    .line 176
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/a;

    .line 177
    invoke-static {v0}, Lcom/tencent/beacon/a/a/a;->a(Lcom/tencent/beacon/a/a/a;)Landroid/content/ContentValues;

    move-result-object v6

    .line 178
    const-string v7, "t_event"

    const-string v8, "_id"

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 179
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_57

    .line 180
    const-string v8, " AnalyticsDAO.insert() failure! return"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_57
    iput-wide v6, v0, Lcom/tencent/beacon/a/a/a;->a:J

    .line 175
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_31

    .line 185
    :cond_5d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_60} :catch_d1
    .catchall {:try_start_2d .. :try_end_60} :catchall_c6

    .line 190
    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 191
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    :cond_6e
    if-eqz v4, :cond_73

    .line 195
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 197
    :cond_73
    const-string v0, " AnalyticsDAO.insert() end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_7b
    move v1, v0

    .line 199
    goto :goto_16

    .line 188
    :catch_7d
    move-exception v1

    move-object v1, v0

    :goto_7f
    :try_start_7f
    const-string v3, "AnalyticsDAO.insert() failure!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_c8

    .line 190
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    :cond_95
    if-eqz v1, :cond_9a

    .line 195
    invoke-virtual {v1}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 197
    :cond_9a
    const-string v0, " AnalyticsDAO.insert() end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 198
    goto :goto_7b

    .line 190
    :catchall_a3
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_a7
    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 191
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    :cond_b5
    if-eqz v4, :cond_ba

    .line 195
    invoke-virtual {v4}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 197
    :cond_ba
    const-string v1, " AnalyticsDAO.insert() end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 190
    :catchall_c2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a7

    :catchall_c6
    move-exception v0

    goto :goto_a7

    :catchall_c8
    move-exception v3

    move-object v4, v1

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    goto :goto_a7

    .line 188
    :catch_ce
    move-exception v1

    move-object v1, v4

    goto :goto_7f

    :catch_d1
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    goto :goto_7f
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    const-string v2, " AnalyticsDAO.insertReqData() start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    if-nez p2, :cond_18

    .line 64
    :cond_f
    const-string v0, " AnalyticsDAO.insertReqData() have null args"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 94
    :goto_17
    return v0

    .line 71
    :cond_18
    :try_start_18
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_71
    .catchall {:try_start_18 .. :try_end_1b} :catchall_94

    move-result-object v3

    .line 72
    :try_start_1c
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_be
    .catchall {:try_start_1c .. :try_end_1f} :catchall_b1

    move-result-object v2

    .line 73
    :try_start_20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    const-string v4, "_rid"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v4, "_time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v4, "_datas"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 77
    const-string v4, "t_req_data"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 78
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_6f

    .line 79
    const-string v0, " AnalyticsDAO.insertReqData() failure! return"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_56} :catch_c1
    .catchall {:try_start_20 .. :try_end_56} :catchall_b6

    move v0, v1

    .line 86
    :goto_57
    if-eqz v2, :cond_62

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    :cond_62
    if-eqz v3, :cond_67

    .line 90
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 92
    :cond_67
    const-string v2, " AnalyticsDAO.insertReqData() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 81
    :cond_6f
    const/4 v0, 0x1

    goto :goto_57

    .line 83
    :catch_71
    move-exception v2

    move-object v2, v0

    .line 84
    :goto_73
    :try_start_73
    const-string v3, "AnalyticsDAO.insertReqData() failure!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_b8

    .line 86
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    :cond_86
    if-eqz v2, :cond_8b

    .line 90
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 92
    :cond_8b
    const-string v0, " AnalyticsDAO.insertReqData() end"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 93
    goto :goto_17

    .line 86
    :catchall_94
    move-exception v2

    move-object v3, v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_99
    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    :cond_a4
    if-eqz v3, :cond_a9

    .line 90
    invoke-virtual {v3}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 92
    :cond_a9
    const-string v2, " AnalyticsDAO.insertReqData() end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 86
    :catchall_b1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_99

    :catchall_b6
    move-exception v0

    goto :goto_99

    :catchall_b8
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_99

    .line 83
    :catch_be
    move-exception v2

    move-object v2, v3

    goto :goto_73

    :catch_c1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_73
.end method

.method public static b(Landroid/content/Context;[IJJ)I
    .registers 17

    .prologue
    .line 402
    const-string v0, " AnalyticsDAO.querySum() start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    if-nez p0, :cond_14

    .line 406
    const-string v0, " querySum() context is null arg"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    const/4 v0, -0x1

    .line 461
    :goto_13
    return v0

    .line 411
    :cond_14
    const-wide/16 v0, -0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 412
    const/4 v0, 0x0

    goto :goto_13

    .line 414
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_time >= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and _time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= 9223372036854775807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    if-eqz p1, :cond_87

    array-length v0, p1

    if-lez v0, :cond_87

    .line 418
    const-string v1, ""

    .line 419
    const/4 v0, 0x0

    :goto_46
    array-length v2, p1

    if-ge v0, v2, :cond_65

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or _type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 422
    :cond_65
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " query where: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    const/4 v2, 0x0

    .line 431
    const/4 v1, 0x0

    .line 433
    const/4 v9, 0x0

    .line 436
    :try_start_9f
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_101
    .catchall {:try_start_9f .. :try_end_a2} :catchall_133

    move-result-object v8

    .line 438
    :try_start_a3
    invoke-virtual {v8}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_16c
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_15a

    move-result-object v0

    .line 440
    :try_start_a7
    const-string v1, "t_event"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(*) as sum"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_b8} :catch_170
    .catchall {:try_start_a7 .. :try_end_b8} :catchall_15d

    move-result-object v2

    .line 443
    :try_start_b9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 444
    const-string v1, "sum"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 445
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
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_db} :catch_177
    .catchall {:try_start_b9 .. :try_end_db} :catchall_163

    .line 450
    if-eqz v2, :cond_e6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_e6

    .line 451
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_e6
    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 454
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 456
    :cond_f1
    if-eqz v8, :cond_f6

    .line 457
    invoke-virtual {v8}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 459
    :cond_f6
    const-string v0, " AnalyticsDAO.querySum() end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 460
    goto/16 :goto_13

    .line 446
    :catch_101
    move-exception v0

    move-object v3, v9

    .line 447
    :goto_103
    :try_start_103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10d
    .catchall {:try_start_103 .. :try_end_10d} :catchall_168

    .line 448
    const/4 v0, -0x1

    .line 450
    if-eqz v3, :cond_119

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_119

    .line 451
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_119
    if-eqz v1, :cond_124

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_124

    .line 454
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 456
    :cond_124
    if-eqz v2, :cond_129

    .line 457
    invoke-virtual {v2}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 459
    :cond_129
    const-string v1, " AnalyticsDAO.querySum() end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 450
    :catchall_133
    move-exception v0

    move-object v8, v2

    move-object v2, v9

    :goto_136
    if-eqz v2, :cond_141

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_141

    .line 451
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_141
    if-eqz v1, :cond_14c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 454
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 456
    :cond_14c
    if-eqz v8, :cond_151

    .line 457
    invoke-virtual {v8}, Lcom/tencent/beacon/a/a/d;->close()V

    .line 459
    :cond_151
    const-string v1, " AnalyticsDAO.querySum() end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 450
    :catchall_15a
    move-exception v0

    move-object v2, v9

    goto :goto_136

    :catchall_15d
    move-exception v1

    move-object v2, v9

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_136

    :catchall_163
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_136

    :catchall_168
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    goto :goto_136

    .line 446
    :catch_16c
    move-exception v0

    move-object v2, v8

    move-object v3, v9

    goto :goto_103

    :catch_170
    move-exception v1

    move-object v2, v8

    move-object v3, v9

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_103

    :catch_177
    move-exception v1

    move-object v3, v2

    move-object v2, v8

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_103
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 473
    const-string v0, " insertOrUpdate alyticsBeans start!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1b

    .line 476
    :cond_12
    const-string v0, " context == null || list == null|| list.size() <= 0 ? pls check!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 508
    :goto_1a
    return v0

    .line 481
    :cond_1b
    const/4 v3, 0x0

    .line 482
    const/4 v1, 0x1

    .line 484
    :try_start_1d
    invoke-static {p0}, Lcom/tencent/beacon/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/a/d;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 486
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/a;

    .line 487
    invoke-static {v0}, Lcom/tencent/beacon/a/a/a;->a(Lcom/tencent/beacon/a/a/a;)Landroid/content/ContentValues;

    move-result-object v5

    .line 488
    if-eqz v5, :cond_7b

    .line 489
    const-string v6, "t_event"

    const-string v7, "_id"

    invoke-virtual {v3, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 492
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_7b

    .line 493
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

    .line 494
    iput-wide v6, v0, Lcom/tencent/beacon/a/a/a;->a:J
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_60} :catch_61
    .catchall {:try_start_1d .. :try_end_60} :catchall_91

    goto :goto_29

    .line 500
    :catch_61
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 501
    :try_start_65
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_91

    .line 503
    if-eqz v3, :cond_73

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 504
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_73
    const-string v1, " insertOrUpdate alyticsBeans end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_7b
    move v1, v2

    .line 499
    goto :goto_29

    .line 503
    :cond_7d
    if-eqz v3, :cond_88

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 504
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_88
    const-string v0, " insertOrUpdate alyticsBeans end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 507
    goto :goto_1a

    .line 503
    :catchall_91
    move-exception v0

    if-eqz v3, :cond_9d

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 504
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_9d
    const-string v1, " insertOrUpdate alyticsBeans end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/beacon/a/a/a;->a:J

    return-wide v0
.end method

.method public final a(J)Lcom/tencent/beacon/a/a/a;
    .registers 4

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/tencent/beacon/a/a/a;->a:J

    .line 53
    return-object p0
.end method

.method public final b()[B
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/beacon/a/a/a;->e:[B

    return-object v0
.end method
