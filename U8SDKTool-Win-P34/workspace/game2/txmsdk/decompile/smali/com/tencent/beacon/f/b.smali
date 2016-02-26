.class public final Lcom/tencent/beacon/f/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    .line 14
    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    .line 15
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xf

    .line 16
    const/16 v2, 0x46

    aput-char v2, v0, v1

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 101
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;-><init>(I)V

    .line 102
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/beacon/f/b;->b:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    .line 97
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_27

    .line 118
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    .line 122
    :try_start_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_25} :catch_28

    .line 129
    iput-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    .line 130
    :cond_27
    return-void

    .line 125
    :catch_28
    move-exception v0

    .line 127
    throw v0
.end method

.method private b(BI)V
    .registers 6

    .prologue
    .line 137
    const/16 v0, 0xf

    if-ge p2, v0, :cond_e

    .line 138
    shl-int/lit8 v0, p2, 0x4

    or-int/2addr v0, p1

    int-to-byte v0, v0

    .line 139
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    :goto_d
    return-void

    .line 140
    :cond_e
    const/16 v0, 0x100

    if-ge p2, v0, :cond_21

    .line 141
    or-int/lit16 v0, p1, 0xf0

    int-to-byte v0, v0

    .line 142
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_d

    .line 145
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tencent/beacon/f/b;->b:Ljava/lang/String;

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public final a()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(BI)V
    .registers 4

    .prologue
    .line 157
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 158
    if-nez p1, :cond_c

    .line 159
    const/16 v0, 0xc

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 164
    :goto_b
    return-void

    .line 161
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 162
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_b
.end method

.method public final a(II)V
    .registers 4

    .prologue
    .line 179
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 180
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_11

    .line 181
    int-to-short v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(SI)V

    .line 186
    :goto_10
    return-void

    .line 183
    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 184
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method public final a(JI)V
    .registers 7

    .prologue
    .line 190
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 191
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_18

    .line 192
    long-to-int v0, p1

    invoke-virtual {p0, v0, p3}, Lcom/tencent/beacon/f/b;->a(II)V

    .line 197
    :goto_17
    return-void

    .line 194
    :cond_18
    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 195
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_17
.end method

.method public final a(Lcom/tencent/beacon/f/c;I)V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 371
    invoke-direct {p0, v1}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 372
    const/16 v0, 0xa

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 373
    invoke-virtual {p1, p0}, Lcom/tencent/beacon/f/c;->a(Lcom/tencent/beacon/f/b;)V

    .line 374
    invoke-direct {p0, v1}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 375
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 376
    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/16 v6, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 415
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_16

    .line 416
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(BI)V

    .line 455
    :cond_15
    :goto_15
    return-void

    .line 417
    :cond_16
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_29

    .line 418
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    :goto_22
    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(BI)V

    goto :goto_15

    :cond_27
    move v0, v1

    goto :goto_22

    .line 419
    :cond_29
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_37

    .line 420
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(SI)V

    goto :goto_15

    .line 421
    :cond_37
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_45

    .line 422
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(II)V

    goto :goto_15

    .line 423
    :cond_45
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_53

    .line 424
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/beacon/f/b;->a(JI)V

    goto :goto_15

    .line 425
    :cond_53
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_6b

    .line 426
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/tencent/beacon/f/b;->a(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 427
    :cond_6b
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_82

    .line 428
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v6}, Lcom/tencent/beacon/f/b;->a(I)V

    const/4 v2, 0x5

    invoke-direct {p0, v2, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    iget-object v2, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 429
    :cond_82
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_8c

    .line 430
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    goto :goto_15

    .line 431
    :cond_8c
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_96

    .line 432
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/f/b;->a(Ljava/util/Map;I)V

    goto :goto_15

    .line 433
    :cond_96
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_a1

    .line 434
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/f/b;->a(Ljava/util/Collection;I)V

    goto/16 :goto_15

    .line 435
    :cond_a1
    instance-of v2, p1, Lcom/tencent/beacon/f/c;

    if-eqz v2, :cond_bc

    .line 436
    check-cast p1, Lcom/tencent/beacon/f/c;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/f/c;->a(Lcom/tencent/beacon/f/b;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    const/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Lcom/tencent/beacon/f/b;->b(BI)V

    goto/16 :goto_15

    .line 437
    :cond_bc
    instance-of v2, p1, [B

    if-eqz v2, :cond_c7

    .line 438
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/f/b;->a([BI)V

    goto/16 :goto_15

    .line 439
    :cond_c7
    instance-of v2, p1, [Z

    if-eqz v2, :cond_ea

    .line 440
    check-cast p1, [Z

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v2, p1

    invoke-virtual {p0, v2, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v4, p1

    move v3, v1

    :goto_d9
    if-ge v3, v4, :cond_15

    aget-boolean v2, p1, v3

    if-eqz v2, :cond_e8

    move v2, v0

    :goto_e0
    int-to-byte v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/tencent/beacon/f/b;->a(BI)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d9

    :cond_e8
    move v2, v1

    goto :goto_e0

    .line 441
    :cond_ea
    instance-of v0, p1, [S

    if-eqz v0, :cond_106

    .line 442
    check-cast p1, [S

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_fc
    if-ge v0, v2, :cond_15

    aget-short v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/beacon/f/b;->a(SI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 443
    :cond_106
    instance-of v0, p1, [I

    if-eqz v0, :cond_122

    .line 444
    check-cast p1, [I

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_118
    if-ge v0, v2, :cond_15

    aget v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    .line 445
    :cond_122
    instance-of v0, p1, [J

    if-eqz v0, :cond_13e

    .line 446
    check-cast p1, [J

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_134
    if-ge v0, v2, :cond_15

    aget-wide v4, p1, v0

    invoke-virtual {p0, v4, v5, v1}, Lcom/tencent/beacon/f/b;->a(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_134

    .line 447
    :cond_13e
    instance-of v0, p1, [F

    if-eqz v0, :cond_164

    .line 448
    check-cast p1, [F

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_150
    if-ge v0, v2, :cond_15

    aget v3, p1, v0

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/tencent/beacon/f/b;->a(I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4, v1}, Lcom/tencent/beacon/f/b;->b(BI)V

    iget-object v4, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_150

    .line 449
    :cond_164
    instance-of v0, p1, [D

    if-eqz v0, :cond_189

    .line 450
    check-cast p1, [D

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_176
    if-ge v0, v2, :cond_15

    aget-wide v4, p1, v0

    invoke-direct {p0, v6}, Lcom/tencent/beacon/f/b;->a(I)V

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1}, Lcom/tencent/beacon/f/b;->b(BI)V

    iget-object v3, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_176

    .line 451
    :cond_189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 452
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/tencent/beacon/f/b;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_1a1
    if-ge v0, v2, :cond_15

    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a1

    .line 453
    :cond_1ab
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1b6

    .line 454
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/f/b;->a(Ljava/util/Collection;I)V

    goto/16 :goto_15

    .line 456
    :cond_1b6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write object error: unsupport type. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_21

    move-result-object v0

    .line 256
    :goto_6
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 257
    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_27

    .line 258
    const/4 v1, 0x7

    invoke-direct {p0, v1, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 259
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 260
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 266
    :goto_20
    return-void

    .line 254
    :catch_21
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_6

    .line 262
    :cond_27
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 263
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_20
.end method

.method public final a(Ljava/util/Collection;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 360
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 361
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 362
    if-nez p1, :cond_1e

    move v0, v1

    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    .line 363
    if-eqz p1, :cond_1d

    .line 364
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 367
    :cond_1d
    return-void

    .line 362
    :cond_1e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_e

    .line 364
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 365
    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/Object;I)V

    goto :goto_17
.end method

.method public final a(Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 270
    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 271
    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 272
    if-nez p1, :cond_20

    move v0, v1

    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    .line 273
    if-eqz p1, :cond_1f

    .line 274
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    .line 279
    :cond_1f
    return-void

    .line 272
    :cond_20
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_c

    .line 274
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/Object;I)V

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/Object;I)V

    goto :goto_19
.end method

.method public final a(SI)V
    .registers 4

    .prologue
    .line 168
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 169
    const/16 v0, -0x80

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_11

    .line 170
    int-to-byte v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(BI)V

    .line 175
    :goto_10
    return-void

    .line 172
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 173
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method public final a(ZI)V
    .registers 4

    .prologue
    .line 151
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    .line 152
    invoke-virtual {p0, v0, p2}, Lcom/tencent/beacon/f/b;->a(BI)V

    .line 153
    return-void

    .line 151
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final a([BI)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 292
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/beacon/f/b;->a(I)V

    .line 293
    const/16 v0, 0xd

    invoke-direct {p0, v0, p2}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 294
    invoke-direct {p0, v1, v1}, Lcom/tencent/beacon/f/b;->b(BI)V

    .line 295
    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/f/b;->a(II)V

    .line 296
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    return-void
.end method

.method public final b()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 111
    iget-object v1, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/f/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-object v0
.end method
