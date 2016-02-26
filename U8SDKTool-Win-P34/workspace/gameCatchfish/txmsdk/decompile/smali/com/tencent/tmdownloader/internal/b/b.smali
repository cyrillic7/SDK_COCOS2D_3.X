.class public Lcom/tencent/tmdownloader/internal/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/io/FileOutputStream;

.field protected d:[B

.field protected e:J

.field protected f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    .line 34
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 49
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 53
    return-void
.end method

.method private a(Ljava/io/FileOutputStream;[BIIJ)Z
    .registers 14

    .prologue
    const/16 v4, 0x4000

    const/4 v0, 0x0

    .line 393
    if-eqz p1, :cond_7

    if-nez p2, :cond_16

    .line 395
    :cond_7
    const-string v1, "TMAssistantFile"

    const-string v2, "fileOutputStream == null || buffer == null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "TMAssistantFile"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_15
    return v0

    .line 400
    :cond_16
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    cmp-long v1, p5, v2

    if-eqz v1, :cond_54

    .line 402
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeData0 failed,filelen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "TMAssistantFile"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 408
    :cond_54
    if-lt p4, v4, :cond_8d

    .line 413
    :try_start_56
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    if-lez v1, :cond_65

    .line 415
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 416
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 420
    :cond_65
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 421
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    int-to-long v4, p4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6e} :catch_70

    .line 456
    :goto_6e
    const/4 v0, 0x1

    goto :goto_15

    .line 423
    :catch_70
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeData1 failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 433
    :cond_8d
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    add-int/2addr v1, p4

    if-le v1, v4, :cond_a1

    .line 436
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    if-lez v1, :cond_a1

    .line 440
    :try_start_96
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 441
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_b4

    .line 452
    :cond_a1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 454
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    goto :goto_6e

    .line 443
    :catch_b4
    move-exception v1

    .line 445
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 446
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeData2 failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 462
    const-string v0, "TMAssistantFile"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    .line 465
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 468
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 470
    if-eqz v0, :cond_25

    .line 472
    invoke-static {p2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->updateFilePathAuthorized(Ljava/lang/String;)V

    .line 474
    :cond_25
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveFileFromTmpToSavaPath result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_3d
    return v0

    .line 478
    :cond_3e
    const-string v0, "TMAssistantFile"

    const-string v1, "moveFileFromTmpToSavaPath failed "

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "TMAssistantFile"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 305
    if-nez p0, :cond_4

    .line 316
    :cond_3
    :goto_3
    return-object v0

    .line 310
    :cond_4
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    if-nez v0, :cond_c

    .line 353
    const/4 v0, 0x0

    .line 370
    :goto_b
    return-object v0

    .line 357
    :cond_c
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->g()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 359
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/tencent/TMAssistantSDK/Download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 365
    :cond_43
    const-string v1, "/TMAssistantSDK/Download"

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static g()Z
    .registers 2

    .prologue
    .line 386
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile 1 tmpFilePathString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile 2 file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 86
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",filename:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_6f
    :goto_6f
    return-void

    .line 90
    :cond_70
    const-string v0, "TMAssistantFile"

    const-string v1, "deleteFile 3"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 142
    const-string v1, "TMAssistantFile"

    const-string v2, "enter"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileFullPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 146
    const-string v0, "TMAssistantFile"

    const-string v1, "fileFullPath is null or the filename.size is zero."

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "fileFullPath is null or the filename.size is zero."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_35
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 151
    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_75

    .line 153
    :cond_44
    const-string v0, "TMAssistantFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFullPath is not a valid full path. fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFullPath is not a valid full path. fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_75
    if-lez v1, :cond_7c

    .line 160
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_7c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 172
    :cond_8b
    if-nez v0, :cond_be

    .line 174
    const-string v0, "TMAssistantFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory. dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory. dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_be
    const-string v0, "TMAssistantFile"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public declared-synchronized a([BIIJZ)Z
    .registers 19

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 194
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    if-nez v3, :cond_1a

    .line 196
    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_54

    move-result-object v3

    .line 197
    if-eqz v3, :cond_57

    .line 202
    :try_start_f
    invoke-virtual {p0, v3}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/lang/String;)V

    .line 203
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_37
    .catchall {:try_start_f .. :try_end_1a} :catchall_54

    .line 220
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    if-nez v2, :cond_27

    .line 222
    const/16 v2, 0x4000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    .line 223
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 227
    :cond_27
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/io/FileOutputStream;[BIIJ)Z
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_54

    move-result v2

    .line 228
    if-nez v2, :cond_66

    .line 244
    :goto_35
    monitor-exit p0

    return v2

    .line 205
    :catch_37
    move-exception v3

    .line 207
    :try_start_38
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    const-string v4, "TMAssistantFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_54

    goto :goto_35

    .line 194
    :catchall_54
    move-exception v2

    monitor-exit p0

    throw v2

    .line 214
    :cond_57
    :try_start_57
    const-string v3, "TMAssistantFile"

    const-string v4, "write failed tmpFilePathString is null"

    invoke-static {v3, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v3, "TMAssistantFile"

    const-string v4, "exit"

    invoke-static {v3, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 234
    :cond_66
    move/from16 v0, p6

    if-ne v0, v10, :cond_8f

    .line 236
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/b;->c()Z

    move-result v2

    if-ne v2, v10, :cond_8f

    .line 239
    const-string v2, "TMAssistantFile"

    const-string v3, "moveFileFromTmpToSavaPath"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "TMAssistantFile"

    const-string v3, "exit"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8d
    .catchall {:try_start_57 .. :try_end_8d} :catchall_54

    move-result v2

    goto :goto_35

    :cond_8f
    move v2, v10

    .line 244
    goto :goto_35
.end method

.method public b()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 103
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_2c

    .line 106
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    .line 110
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_2a

    .line 113
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 116
    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 129
    :cond_2a
    :goto_2a
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 131
    :cond_2c
    return-wide v0

    .line 120
    :cond_2d
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    goto :goto_2a

    .line 126
    :cond_34
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    goto :goto_2a
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 328
    if-nez p1, :cond_4

    .line 339
    :cond_3
    :goto_3
    return-object v0

    .line 333
    :cond_4
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_3

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public declared-synchronized c()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 252
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_18

    .line 254
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_37

    if-lez v1, :cond_18

    .line 258
    :try_start_a
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_1a
    .catchall {:try_start_a .. :try_end_17} :catchall_37

    .line 261
    const/4 v0, 0x1

    .line 270
    :cond_18
    :goto_18
    monitor-exit p0

    return v0

    .line 263
    :catch_1a
    move-exception v1

    .line 265
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_37

    goto :goto_18

    .line 252
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 5

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/b;->c()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_36

    .line 282
    :try_start_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_d

    .line 284
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_19
    .catchall {:try_start_4 .. :try_end_d} :catchall_36

    .line 292
    :cond_d
    :goto_d
    const/4 v0, 0x0

    :try_start_e
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_36

    .line 295
    monitor-exit p0

    return-void

    .line 287
    :catch_19
    move-exception v0

    .line 289
    :try_start_1a
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_36

    goto :goto_d

    .line 278
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    return-void
.end method
