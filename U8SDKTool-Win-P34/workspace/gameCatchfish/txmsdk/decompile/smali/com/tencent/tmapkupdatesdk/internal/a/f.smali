.class public Lcom/tencent/tmapkupdatesdk/internal/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    return-void
.end method

.method private a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .registers 9

    .prologue
    const/16 v1, 0x1000

    const/4 v3, 0x0

    .line 308
    invoke-static {p1, p3}, Lcom/tencent/tmapkupdatesdk/internal/a/h;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 312
    iget v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    move v0, v3

    .line 316
    :cond_9
    :goto_9
    if-lez v2, :cond_21

    if-ltz v0, :cond_21

    .line 317
    if-le v2, v1, :cond_1f

    move v0, v1

    .line 318
    :goto_10
    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p2, v4, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 319
    if-lez v0, :cond_9

    .line 320
    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p3, v4, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 321
    sub-int/2addr v2, v0

    goto :goto_9

    :cond_1f
    move v0, v2

    .line 317
    goto :goto_10

    .line 326
    :cond_21
    invoke-virtual {p1}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 327
    invoke-static {p1, p3}, Lcom/tencent/tmapkupdatesdk/internal/a/d;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 329
    :cond_2a
    return-void
.end method

.method private a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/RandomAccessFile;Lcom/tencent/tmapkupdatesdk/internal/a/i;Ljava/io/DataOutputStream;)V
    .registers 12

    .prologue
    const/16 v1, 0x1000

    const/4 v6, 0x0

    .line 250
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 253
    invoke-virtual {p3, v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b(Ljava/lang/String;)Lcom/tencent/tmapkupdatesdk/internal/a/c;

    move-result-object v2

    .line 255
    if-nez v2, :cond_18

    .line 257
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 260
    :cond_18
    iget-short v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    iput-short v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    .line 261
    iget v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    iput v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    .line 262
    iget v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    iput v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    .line 264
    iget-short v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    iput-short v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    .line 265
    iget-object v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    iput-object v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    .line 267
    iget-short v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    iput-short v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    .line 268
    iget-object v2, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    iput-object v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    .line 270
    invoke-static {p1, p4}, Lcom/tencent/tmapkupdatesdk/internal/a/h;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 271
    iget v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    .line 274
    if-lez v2, :cond_59

    .line 276
    invoke-virtual {p3, v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->c(Ljava/lang/String;)I

    move-result v0

    .line 277
    int-to-long v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 282
    :cond_43
    :goto_43
    if-lez v2, :cond_59

    .line 283
    if-le v2, v1, :cond_57

    move v0, v1

    .line 284
    :goto_48
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p2, v3, v6, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 285
    if-lez v0, :cond_43

    .line 286
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p4, v3, v6, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 287
    sub-int/2addr v2, v0

    goto :goto_43

    :cond_57
    move v0, v2

    .line 283
    goto :goto_48

    .line 293
    :cond_59
    invoke-virtual {p1}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 294
    invoke-static {p1, p4}, Lcom/tencent/tmapkupdatesdk/internal/a/d;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 296
    :cond_62
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 333
    const-string v1, "GenNewApkV2"

    const-string v2, "enter"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "GenNewApkV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", patchPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newGenApkPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 339
    const/4 v2, 0x0

    :try_start_41
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_44} :catch_4f

    move-result-object v2

    .line 346
    if-nez v2, :cond_5b

    .line 347
    const-string v1, "GenNewApkV2"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_4e
    return v0

    .line 340
    :catch_4f
    move-exception v1

    .line 341
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 342
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    .line 351
    :cond_5b
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 354
    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/a/f;

    invoke-direct {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/f;-><init>()V

    .line 355
    invoke-virtual {v2, v0, p1, p2}, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 357
    if-nez v0, :cond_82

    .line 358
    const-string v2, "GenNewApkV2"

    const-string v3, "genNewApk succeed"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 361
    if-nez v1, :cond_9a

    .line 362
    const-string v0, "GenNewApkV2"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v0, -0xb

    goto :goto_4e

    .line 366
    :cond_82
    const-string v1, "GenNewApkV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genNewApk failed errcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_9a
    const-string v1, "GenNewApkV2"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 76
    const-string v0, "GenNewApkV2"

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "GenNewApkV2"

    const-string v2, "start parser old apk file."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_11
    new-instance v7, Lcom/tencent/tmapkupdatesdk/internal/a/i;

    invoke-direct {v7}, Lcom/tencent/tmapkupdatesdk/internal/a/i;-><init>()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_af
    .catchall {:try_start_11 .. :try_end_16} :catchall_22a

    .line 87
    :try_start_16
    invoke-virtual {v7, p1}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_5f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_af
    .catchall {:try_start_16 .. :try_end_19} :catchall_22a

    .line 94
    :try_start_19
    const-string v0, "GenNewApkV2"

    const-string v2, "parse old apk file finished."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_20} :catch_af
    .catchall {:try_start_19 .. :try_end_20} :catchall_22a

    .line 97
    :try_start_20
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2f} :catch_a4
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2f} :catch_af
    .catchall {:try_start_20 .. :try_end_2f} :catchall_22a

    .line 105
    :try_start_2f
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_3e} :catch_b6
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3e} :catch_c1
    .catchall {:try_start_2f .. :try_end_3e} :catchall_230

    .line 113
    :try_start_3e
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_45} :catch_c8
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_45} :catch_23e
    .catchall {:try_start_3e .. :try_end_45} :catchall_235

    .line 120
    :try_start_45
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4a} :catch_e4
    .catchall {:try_start_45 .. :try_end_4a} :catchall_f6

    .line 125
    :try_start_4a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_d9
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_e4
    .catchall {:try_start_4a .. :try_end_4d} :catchall_f6

    move-result v6

    move v0, v1

    .line 133
    :goto_4f
    if-ge v0, v6, :cond_112

    .line 134
    :try_start_51
    new-instance v8, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    invoke-direct {v8}, Lcom/tencent/tmapkupdatesdk/internal/a/c;-><init>()V

    .line 135
    invoke-virtual {v8, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->b(Ljava/io/DataInputStream;)V

    .line 136
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_eb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_5c} :catch_107
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5c} :catch_e4
    .catchall {:try_start_51 .. :try_end_5c} :catchall_f6

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 88
    :catch_5f
    move-exception v0

    .line 89
    :try_start_60
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_af
    .catchall {:try_start_60 .. :try_end_63} :catchall_22a

    .line 91
    :try_start_63
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_69} :catch_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_22a

    .line 203
    :catch_69
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move v0, v6

    .line 204
    :goto_6e
    :try_start_6e
    const-string v5, "GenNewApkV2"

    const-string v6, "Throwable: "

    invoke-static {v5, v6, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const-string v1, "GenNewApkV2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errcode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_6e .. :try_end_8d} :catchall_239

    .line 208
    if-eqz v2, :cond_92

    .line 210
    :try_start_8f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_1de

    .line 216
    :cond_92
    :goto_92
    if-eqz v3, :cond_97

    .line 218
    :try_start_94
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_1eb

    .line 224
    :cond_97
    :goto_97
    if-eqz v4, :cond_9c

    .line 226
    :try_start_99
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_1f8

    .line 233
    :cond_9c
    :goto_9c
    const-string v1, "GenNewApkV2"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v0

    .line 98
    :catch_a4
    move-exception v0

    .line 99
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 100
    const/4 v1, -0x2

    .line 101
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_af} :catch_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_22a

    .line 203
    :catch_af
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_6e

    .line 106
    :catch_b6
    move-exception v0

    .line 107
    :try_start_b7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 108
    const/4 v1, -0x3

    .line 109
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_c1} :catch_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_230

    .line 203
    :catch_c1
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_6e

    .line 114
    :catch_c8
    move-exception v0

    .line 115
    :try_start_c9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_23e
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_235

    .line 117
    :try_start_cc
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_d2} :catch_d2
    .catchall {:try_start_cc .. :try_end_d2} :catchall_235

    .line 203
    :catch_d2
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move v0, v6

    move-object v4, v5

    goto :goto_6e

    .line 126
    :catch_d9
    move-exception v0

    .line 127
    :try_start_da
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    const/4 v1, -0x4

    .line 129
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0

    .line 203
    :catch_e4
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_6e

    .line 138
    :catch_eb
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    const/4 v1, -0x5

    .line 141
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_f6} :catch_e4
    .catchall {:try_start_da .. :try_end_f6} :catchall_f6

    .line 208
    :catchall_f6
    move-exception v0

    :goto_f7
    if-eqz v2, :cond_fc

    .line 210
    :try_start_f9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_1b7

    .line 216
    :cond_fc
    :goto_fc
    if-eqz v4, :cond_101

    .line 218
    :try_start_fe
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_1c4

    .line 224
    :cond_101
    :goto_101
    if-eqz v5, :cond_106

    .line 226
    :try_start_103
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_1d1

    .line 208
    :cond_106
    :goto_106
    throw v0

    .line 142
    :catch_107
    move-exception v0

    .line 143
    :try_start_108
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 144
    const/4 v1, -0x6

    .line 145
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0

    .line 148
    :cond_112
    const-string v0, "GenNewApkV2"

    const-string v6, "read patch file headed finished."

    invoke-static {v0, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_119} :catch_e4
    .catchall {:try_start_108 .. :try_end_119} :catchall_f6

    .line 152
    :try_start_119
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    .line 153
    const/4 v8, 0x0

    iput-short v8, v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    .line 154
    iget-boolean v8, v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->r:Z

    if-eqz v8, :cond_140

    .line 156
    invoke-direct {p0, v0, v5, v4}, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_133} :catch_134
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_133} :catch_e4
    .catchall {:try_start_119 .. :try_end_133} :catchall_f6

    goto :goto_11d

    .line 162
    :catch_134
    move-exception v0

    .line 163
    :try_start_135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const/16 v1, -0xa

    .line 165
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_140} :catch_e4
    .catchall {:try_start_135 .. :try_end_140} :catchall_f6

    .line 159
    :cond_140
    :try_start_140
    invoke-direct {p0, v0, v2, v7, v4}, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/RandomAccessFile;Lcom/tencent/tmapkupdatesdk/internal/a/i;Ljava/io/DataOutputStream;)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_134
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_e4
    .catchall {:try_start_140 .. :try_end_143} :catchall_f6

    goto :goto_11d

    .line 168
    :cond_144
    :try_start_144
    const-string v0, "GenNewApkV2"

    const-string v6, "writeLocalFileHeaderAndData finished."

    invoke-static {v0, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->size()I
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_14e} :catch_e4
    .catchall {:try_start_144 .. :try_end_14e} :catchall_f6

    move-result v6

    .line 173
    :try_start_14f
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_153
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    .line 174
    invoke-virtual {v0, v4}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a(Ljava/io/DataOutputStream;)V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_162} :catch_163
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_162} :catch_e4
    .catchall {:try_start_14f .. :try_end_162} :catchall_f6

    goto :goto_153

    .line 176
    :catch_163
    move-exception v0

    .line 177
    :try_start_164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    const/4 v1, -0x7

    .line 179
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_16e
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_16e} :catch_e4
    .catchall {:try_start_164 .. :try_end_16e} :catchall_f6

    .line 183
    :cond_16e
    :try_start_16e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 184
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .line 185
    const v7, 0x504b0506

    if-ne v0, v7, :cond_1a4

    .line 186
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/e;-><init>()V

    .line 187
    invoke-virtual {v0, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a(Ljava/io/DataInputStream;)V

    .line 188
    iput v6, v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->f:I

    .line 189
    iput v3, v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->e:I

    .line 190
    invoke-virtual {v0, v4}, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a(Ljava/io/DataOutputStream;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_18b} :catch_1ab
    .catch Ljava/lang/Throwable; {:try_start_16e .. :try_end_18b} :catch_e4
    .catchall {:try_start_16e .. :try_end_18b} :catchall_f6

    .line 202
    :try_start_18b
    const-string v0, "GenNewApkV2"

    const-string v3, "write EndOfCentralDirRecord finished."

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_192
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_192} :catch_e4
    .catchall {:try_start_18b .. :try_end_192} :catchall_f6

    .line 208
    if-eqz v2, :cond_197

    .line 210
    :try_start_194
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_197} :catch_205

    .line 216
    :cond_197
    :goto_197
    if-eqz v4, :cond_19c

    .line 218
    :try_start_199
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_211

    .line 224
    :cond_19c
    :goto_19c
    if-eqz v5, :cond_1a1

    .line 226
    :try_start_19e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_21d

    :cond_1a1
    :goto_1a1
    move v0, v1

    .line 232
    goto/16 :goto_9c

    .line 193
    :cond_1a4
    const/4 v1, -0x8

    .line 194
    :try_start_1a5
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1ab} :catch_1ab
    .catch Ljava/lang/Throwable; {:try_start_1a5 .. :try_end_1ab} :catch_e4
    .catchall {:try_start_1a5 .. :try_end_1ab} :catchall_f6

    .line 196
    :catch_1ab
    move-exception v0

    .line 197
    :try_start_1ac
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    const/16 v1, -0x9

    .line 199
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_1ac .. :try_end_1b7} :catch_e4
    .catchall {:try_start_1ac .. :try_end_1b7} :catchall_f6

    .line 211
    :catch_1b7
    move-exception v1

    .line 212
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_fc

    .line 219
    :catch_1c4
    move-exception v1

    .line 220
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_101

    .line 227
    :catch_1d1
    move-exception v1

    .line 228
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_106

    .line 211
    :catch_1de
    move-exception v1

    .line 212
    const-string v2, "GenNewApkV2"

    const-string v5, "exception: "

    invoke-static {v2, v5, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_92

    .line 219
    :catch_1eb
    move-exception v1

    .line 220
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_97

    .line 227
    :catch_1f8
    move-exception v1

    .line 228
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9c

    .line 211
    :catch_205
    move-exception v0

    .line 212
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_197

    .line 219
    :catch_211
    move-exception v0

    .line 220
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19c

    .line 227
    :catch_21d
    move-exception v0

    .line 228
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a1

    .line 208
    :catchall_22a
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_f7

    :catchall_230
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_f7

    :catchall_235
    move-exception v0

    move-object v2, v3

    goto/16 :goto_f7

    :catchall_239
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_f7

    .line 203
    :catch_23e
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto/16 :goto_6e
.end method
