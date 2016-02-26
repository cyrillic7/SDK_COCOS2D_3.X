.class public Lcom/tencent/android/tpush/logging/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/io/FileFilter;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/io/File;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/io/FileFilter;

.field private l:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lcom/tencent/android/tpush/logging/a/c;

    invoke-direct {v0}, Lcom/tencent/android/tpush/logging/a/c;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/logging/a/b;->a:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .registers 14

    .prologue
    const v1, 0x7fffffff

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v0, "Tracer.File"

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->b:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/tencent/android/tpush/logging/a/b;->c:I

    .line 130
    iput v1, p0, Lcom/tencent/android/tpush/logging/a/b;->d:I

    .line 131
    const/16 v0, 0x1000

    iput v0, p0, Lcom/tencent/android/tpush/logging/a/b;->e:I

    .line 132
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/android/tpush/logging/a/b;->f:J

    .line 134
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/android/tpush/logging/a/b;->h:I

    .line 135
    const-string v0, ".log"

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->i:Ljava/lang/String;

    .line 136
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/android/tpush/logging/a/b;->j:J

    .line 138
    new-instance v0, Lcom/tencent/android/tpush/logging/a/d;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/logging/a/d;-><init>(Lcom/tencent/android/tpush/logging/a/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->k:Ljava/io/FileFilter;

    .line 163
    new-instance v0, Lcom/tencent/android/tpush/logging/a/e;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/logging/a/e;-><init>(Lcom/tencent/android/tpush/logging/a/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->l:Ljava/util/Comparator;

    .line 199
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/logging/a/b;->c(Ljava/io/File;)V

    .line 200
    invoke-virtual {p0, p2}, Lcom/tencent/android/tpush/logging/a/b;->b(I)V

    .line 201
    invoke-virtual {p0, p3}, Lcom/tencent/android/tpush/logging/a/b;->a(I)V

    .line 202
    invoke-virtual {p0, p4}, Lcom/tencent/android/tpush/logging/a/b;->c(I)V

    .line 203
    invoke-virtual {p0, p5}, Lcom/tencent/android/tpush/logging/a/b;->a(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p6, p7}, Lcom/tencent/android/tpush/logging/a/b;->b(J)V

    .line 205
    invoke-virtual {p0, p8}, Lcom/tencent/android/tpush/logging/a/b;->d(I)V

    .line 206
    invoke-virtual {p0, p9}, Lcom/tencent/android/tpush/logging/a/b;->b(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p10, p11}, Lcom/tencent/android/tpush/logging/a/b;->c(J)V

    .line 208
    return-void
.end method

.method public static a(Ljava/io/File;)J
    .registers 3

    .prologue
    .line 116
    :try_start_0
    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Lcom/tencent/android/tpush/logging/c/c;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-wide v0

    .line 121
    :goto_12
    return-wide v0

    .line 119
    :catch_13
    move-exception v0

    .line 121
    const-wide/16 v0, -0x1

    goto :goto_12
.end method

.method static synthetic d(Ljava/io/File;)I
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/tencent/android/tpush/logging/a/b;->f(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private d(J)Ljava/io/File;
    .registers 4

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/logging/a/b;->a(J)Ljava/io/File;

    move-result-object v0

    .line 231
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/logging/a/b;->e(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/io/File;)Ljava/io/File;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 263
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/logging/a/b;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    .line 268
    if-eqz v4, :cond_28

    array-length v0, v4

    if-eqz v0, :cond_28

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget v1, v3, Landroid/text/format/Time;->hour:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 270
    :cond_28
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    :cond_4a
    return-object v1

    .line 273
    :cond_4b
    invoke-virtual {p0, v4}, Lcom/tencent/android/tpush/logging/a/b;->a([Ljava/io/File;)[Ljava/io/File;

    .line 275
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v4, v0

    .line 278
    array-length v0, v4

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->e()I

    move-result v5

    sub-int/2addr v0, v5

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->d()I

    move-result v6

    if-le v5, v6, :cond_92

    .line 283
    invoke-static {v1}, Lcom/tencent/android/tpush/logging/a/b;->f(Ljava/io/File;)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    .line 284
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 290
    :cond_92
    :goto_92
    if-ge v2, v0, :cond_4a

    .line 292
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_92
.end method

.method private static f(Ljava/io/File;)I
    .registers 3

    .prologue
    .line 388
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result v0

    .line 396
    :goto_11
    return v0

    .line 392
    :catch_12
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    const/4 v0, -0x1

    goto :goto_11
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 3

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/logging/a/b;->d(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/io/File;
    .registers 6

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->h()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/tencent/android/tpush/logging/c/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 249
    :cond_19
    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 440
    iput p1, p0, Lcom/tencent/android/tpush/logging/a/b;->c:I

    .line 441
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/tencent/android/tpush/logging/a/b;->b:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public a([Ljava/io/File;)[Ljava/io/File;
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->l:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 374
    return-object p1
.end method

.method public b()V
    .registers 9

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->h()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    .line 338
    :cond_6
    return-void

    .line 322
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->h()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/logging/a/b;->a:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_6

    .line 329
    array-length v2, v1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 331
    invoke-static {v3}, Lcom/tencent/android/tpush/logging/a/b;->a(Ljava/io/File;)J

    move-result-wide v4

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/b;->k()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2e

    .line 335
    invoke-static {v3}, Lcom/tencent/android/tpush/logging/c/b;->a(Ljava/io/File;)Z

    .line 329
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 461
    iput p1, p0, Lcom/tencent/android/tpush/logging/a/b;->d:I

    .line 462
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 498
    iput-wide p1, p0, Lcom/tencent/android/tpush/logging/a/b;->f:J

    .line 499
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 561
    iput-object p1, p0, Lcom/tencent/android/tpush/logging/a/b;->i:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public b(Ljava/io/File;)[Ljava/io/File;
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->k:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 477
    iput p1, p0, Lcom/tencent/android/tpush/logging/a/b;->e:I

    .line 478
    return-void
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 581
    iput-wide p1, p0, Lcom/tencent/android/tpush/logging/a/b;->j:J

    .line 582
    return-void
.end method

.method public c(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 519
    iput-object p1, p0, Lcom/tencent/android/tpush/logging/a/b;->g:Ljava/io/File;

    .line 520
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Lcom/tencent/android/tpush/logging/a/b;->c:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 540
    iput p1, p0, Lcom/tencent/android/tpush/logging/a/b;->h:I

    .line 541
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/tencent/android/tpush/logging/a/b;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/tencent/android/tpush/logging/a/b;->e:I

    return v0
.end method

.method public g()J
    .registers 3

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/tencent/android/tpush/logging/a/b;->f:J

    return-wide v0
.end method

.method public h()Ljava/io/File;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 529
    iget v0, p0, Lcom/tencent/android/tpush/logging/a/b;->h:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()J
    .registers 3

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/tencent/android/tpush/logging/a/b;->j:J

    return-wide v0
.end method
