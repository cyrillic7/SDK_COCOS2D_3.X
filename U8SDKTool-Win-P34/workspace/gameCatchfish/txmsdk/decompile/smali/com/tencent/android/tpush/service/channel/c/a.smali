.class public Lcom/tencent/android/tpush/service/channel/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:[B

.field protected volatile b:I

.field protected volatile c:I

.field protected volatile d:I

.field protected volatile e:I

.field protected volatile f:Z

.field protected g:Z

.field protected h:Ljava/io/InputStream;

.field protected i:Z

.field protected j:Ljava/io/OutputStream;

.field protected k:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 351
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/service/channel/c/a;-><init>(IZ)V

    .line 352
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    .line 97
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    .line 103
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    .line 110
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->e:I

    .line 116
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->f:Z

    .line 123
    iput-boolean v2, p0, Lcom/tencent/android/tpush/service/channel/c/a;->g:Z

    .line 129
    new-instance v0, Lcom/tencent/android/tpush/service/channel/c/b;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/c/b;-><init>(Lcom/tencent/android/tpush/service/channel/c/a;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->h:Ljava/io/InputStream;

    .line 135
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->i:Z

    .line 141
    new-instance v0, Lcom/tencent/android/tpush/service/channel/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/c/c;-><init>(Lcom/tencent/android/tpush/service/channel/c/a;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->j:Ljava/io/OutputStream;

    .line 147
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->k:Z

    .line 409
    const/4 v0, -0x1

    if-ne p1, v0, :cond_31

    .line 410
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    .line 411
    iput-boolean v2, p0, Lcom/tencent/android/tpush/service/channel/c/a;->f:Z

    .line 416
    :goto_2e
    iput-boolean p2, p0, Lcom/tencent/android/tpush/service/channel/c/a;->g:Z

    .line 417
    return-void

    .line 413
    :cond_31
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    .line 414
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->f:Z

    goto :goto_2e
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/c/a;)I
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->g()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/c/a;)V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->i()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/channel/c/a;)I
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->f()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/channel/c/a;)V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->e()V

    return-void
.end method

.method private e()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 261
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 262
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->h()I

    move-result v1

    .line 263
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->g()I

    move-result v2

    .line 264
    iget v3, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    iget v4, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    if-gt v3, v4, :cond_2d

    .line 268
    iget v3, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    iget v4, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    sub-int/2addr v3, v4

    .line 269
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    iget v5, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :goto_22
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    .line 277
    iput v6, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    .line 278
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    .line 279
    add-int v0, v1, v2

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    .line 280
    return-void

    .line 271
    :cond_2d
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v3, v3

    iget v4, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    sub-int/2addr v3, v4

    .line 272
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    iget v5, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget v4, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    .line 274
    iget-object v5, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    invoke-static {v5, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_22
.end method

.method private f()I
    .registers 4

    .prologue
    .line 288
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    if-ge v0, v1, :cond_e

    .line 292
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 295
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_d
.end method

.method private g()I
    .registers 4

    .prologue
    .line 304
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    if-gt v0, v1, :cond_c

    .line 308
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    sub-int/2addr v0, v1

    .line 311
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_b
.end method

.method private h()I
    .registers 4

    .prologue
    .line 320
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    if-gt v0, v1, :cond_c

    .line 324
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    sub-int/2addr v0, v1

    .line 327
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_b
.end method

.method private i()V
    .registers 3

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->h()I

    move-result v0

    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/a;->e:I

    if-lt v0, v1, :cond_f

    .line 338
    iget v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->b:I

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->e:I

    .line 341
    :cond_f
    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->j:Ljava/io/OutputStream;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/a;->h:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->g()I

    move-result v0

    monitor-exit p0

    return v0

    .line 215
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 232
    monitor-enter p0

    .line 233
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/c/a;->f()I

    move-result v0

    monitor-exit p0

    return v0

    .line 234
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
