.class public Lcom/tencent/msdk/tea/TEACoding;
.super Ljava/lang/Object;
.source "TEACoding.java"


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field private contextStart:I

.field private crypt:I

.field private header:Z

.field private key:[B

.field private out:[B

.field private padding:I

.field private plain:[B

.field private pos:I

.field private preCrypt:I

.field private prePlain:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/msdk/tea/TEACoding;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "k"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_a

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_12

    .line 41
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length must be 16!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/tea/TEACoding;->header:Z

    .line 44
    iput-object p1, p0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    .line 45
    return-void
.end method

.method private decipher([B)[B
    .registers 3
    .param p1, "in"    # [B

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/tea/TEACoding;->decipher([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private decipher([BI)[B
    .registers 33
    .param p1, "in"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 316
    const/16 v17, 0x10

    .line 317
    .local v17, "loop":I
    const/16 v19, 0x4

    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v22

    .line 318
    .local v22, "y":J
    add-int/lit8 v19, p2, 0x4

    const/16 v26, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v24

    .line 319
    .local v24, "z":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0x0

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v4

    .line 320
    .local v4, "a":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0x4

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v6

    .line 321
    .local v6, "b":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0x8

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v10

    .line 322
    .local v10, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0xc

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v12

    .line 323
    .local v12, "d":J
    const-wide/32 v20, -0x1c886470

    .line 324
    .local v20, "sum":J
    const-wide v26, 0xffffffffL

    and-long v20, v20, v26

    .line 325
    const-wide/32 v14, -0x61c88647

    .line 326
    .local v14, "delta":J
    const-wide v26, 0xffffffffL

    and-long v14, v14, v26

    move/from16 v18, v17

    .line 327
    .end local v17    # "loop":I
    .local v18, "loop":I
    :goto_82
    add-int/lit8 v17, v18, -0x1

    .end local v18    # "loop":I
    .restart local v17    # "loop":I
    if-lez v18, :cond_c8

    .line 329
    const/16 v19, 0x4

    shl-long v26, v22, v19

    add-long v26, v26, v10

    add-long v28, v22, v20

    xor-long v26, v26, v28

    const/16 v19, 0x5

    ushr-long v28, v22, v19

    add-long v28, v28, v12

    xor-long v26, v26, v28

    sub-long v24, v24, v26

    .line 330
    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    .line 331
    const/16 v19, 0x4

    shl-long v26, v24, v19

    add-long v26, v26, v4

    add-long v28, v24, v20

    xor-long v26, v26, v28

    const/16 v19, 0x5

    ushr-long v28, v24, v19

    add-long v28, v28, v6

    xor-long v26, v26, v28

    sub-long v22, v22, v26

    .line 332
    const-wide v26, 0xffffffffL

    and-long v22, v22, v26

    .line 333
    sub-long v20, v20, v14

    .line 334
    const-wide v26, 0xffffffffL

    and-long v20, v20, v26

    move/from16 v18, v17

    .end local v17    # "loop":I
    .restart local v18    # "loop":I
    goto :goto_82

    .line 336
    .end local v18    # "loop":I
    .restart local v17    # "loop":I
    :cond_c8
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 337
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 338
    .local v9, "dos":Ljava/io/DataOutputStream;
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 339
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 340
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 341
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f0} :catch_f2

    move-result-object v19

    .line 345
    .end local v4    # "a":J
    .end local v6    # "b":J
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v10    # "c":J
    .end local v12    # "d":J
    .end local v14    # "delta":J
    .end local v20    # "sum":J
    .end local v22    # "y":J
    .end local v24    # "z":J
    :goto_f1
    return-object v19

    .line 343
    :catch_f2
    move-exception v16

    .line 345
    .local v16, "e":Ljava/io/IOException;
    const/16 v19, 0x0

    goto :goto_f1
.end method

.method private decode([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    .line 186
    iput v5, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    iput v5, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    .line 187
    add-int/lit8 v4, p2, 0x8

    new-array v2, v4, [B

    .line 188
    .local v2, "m":[B
    rem-int/lit8 v4, p3, 0x8

    if-nez v4, :cond_15

    const/16 v4, 0x10

    if-ge p3, v4, :cond_16

    .line 273
    :cond_15
    :goto_15
    return-object v3

    .line 193
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/tencent/msdk/tea/TEACoding;->decipher([BI)[B

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    .line 194
    iget-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    if-eqz v4, :cond_15

    .line 198
    iget-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 199
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    sub-int v4, p3, v4

    add-int/lit8 v0, v4, -0xa

    .line 200
    .local v0, "count":I
    if-ltz v0, :cond_15

    .line 205
    move v1, p2

    .local v1, "i":I
    :goto_31
    array-length v4, v2

    if-ge v1, v4, :cond_39

    .line 207
    aput-byte v5, v2, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 210
    :cond_39
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    .line 211
    iput v5, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    .line 212
    iput v8, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    .line 213
    iput v8, p0, Lcom/tencent/msdk/tea/TEACoding;->contextStart:I

    .line 214
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 215
    iput v9, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    :cond_4b
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_6c

    .line 217
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v4, v8, :cond_60

    .line 219
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 220
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    .line 222
    :cond_60
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ne v4, v8, :cond_4b

    .line 224
    move-object v2, p1

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/tea/TEACoding;->decrypt8Bytes([BII)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_15

    .line 232
    :cond_6c
    const/4 v1, 0x0

    .line 233
    :cond_6d
    if-eqz v0, :cond_a4

    .line 235
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v4, v8, :cond_91

    .line 237
    iget-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    iget v5, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v5, v6

    aget-byte v5, v2, v5

    iget-object v6, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    iget v7, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    .line 239
    add-int/lit8 v0, v0, -0x1

    .line 240
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 242
    :cond_91
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ne v4, v8, :cond_6d

    .line 244
    move-object v2, p1

    .line 245
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    add-int/lit8 v4, v4, -0x8

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    .line 246
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/tea/TEACoding;->decrypt8Bytes([BII)Z

    move-result v4

    if-nez v4, :cond_6d

    goto/16 :goto_15

    .line 252
    :cond_a4
    iput v9, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    :goto_a6
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    if-ge v4, v8, :cond_db

    .line 254
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v4, v8, :cond_c5

    .line 256
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v4, v5

    aget-byte v4, v2, v4

    iget-object v5, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    iget v6, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    if-nez v4, :cond_15

    .line 260
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 262
    :cond_c5
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ne v4, v8, :cond_d4

    .line 264
    move-object v2, p1

    .line 265
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/tea/TEACoding;->decrypt8Bytes([BII)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 252
    :cond_d4
    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    goto :goto_a6

    .line 273
    :cond_db
    iget-object v3, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    goto/16 :goto_15
.end method

.method private decrypt8Bytes([BII)Z
    .registers 11
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 384
    iput v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    :goto_4
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2b

    .line 386
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->contextStart:I

    iget v3, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_12

    .line 403
    :goto_11
    return v0

    .line 390
    :cond_12
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    iget v3, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 384
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    goto :goto_4

    .line 393
    :cond_2b
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    invoke-direct {p0, v2}, Lcom/tencent/msdk/tea/TEACoding;->decipher([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    .line 394
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    if-nez v2, :cond_39

    move v0, v1

    .line 396
    goto :goto_11

    .line 400
    :cond_39
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->contextStart:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->contextStart:I

    .line 401
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    .line 402
    iput v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    goto :goto_11
.end method

.method private encipher([B)[B
    .registers 32
    .param p1, "in"    # [B

    .prologue
    .line 280
    const/16 v17, 0x10

    .line 281
    .local v17, "loop":I
    const/16 v19, 0x0

    const/16 v26, 0x4

    :try_start_6
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v22

    .line 282
    .local v22, "y":J
    const/16 v19, 0x4

    const/16 v26, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v24

    .line 283
    .local v24, "z":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0x0

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v4

    .line 284
    .local v4, "a":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0x4

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v6

    .line 285
    .local v6, "b":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0x8

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v10

    .line 286
    .local v10, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/tea/TEACoding;->key:[B

    move-object/from16 v19, v0

    const/16 v26, 0xc

    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tea/TEACoding;->getUnsignedInt([BII)J

    move-result-wide v12

    .line 287
    .local v12, "d":J
    const-wide/16 v20, 0x0

    .line 288
    .local v20, "sum":J
    const-wide/32 v14, -0x61c88647

    .line 289
    .local v14, "delta":J
    const-wide v26, 0xffffffffL

    and-long v14, v14, v26

    move/from16 v18, v17

    .line 290
    .end local v17    # "loop":I
    .local v18, "loop":I
    :goto_7c
    add-int/lit8 v17, v18, -0x1

    .end local v18    # "loop":I
    .restart local v17    # "loop":I
    if-lez v18, :cond_c2

    .line 292
    add-long v20, v20, v14

    .line 293
    const-wide v26, 0xffffffffL

    and-long v20, v20, v26

    .line 294
    const/16 v19, 0x4

    shl-long v26, v24, v19

    add-long v26, v26, v4

    add-long v28, v24, v20

    xor-long v26, v26, v28

    const/16 v19, 0x5

    ushr-long v28, v24, v19

    add-long v28, v28, v6

    xor-long v26, v26, v28

    add-long v22, v22, v26

    .line 295
    const-wide v26, 0xffffffffL

    and-long v22, v22, v26

    .line 296
    const/16 v19, 0x4

    shl-long v26, v22, v19

    add-long v26, v26, v10

    add-long v28, v22, v20

    xor-long v26, v26, v28

    const/16 v19, 0x5

    ushr-long v28, v22, v19

    add-long v28, v28, v12

    xor-long v26, v26, v28

    add-long v24, v24, v26

    .line 297
    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    move/from16 v18, v17

    .end local v17    # "loop":I
    .restart local v18    # "loop":I
    goto :goto_7c

    .line 299
    .end local v18    # "loop":I
    .restart local v17    # "loop":I
    :cond_c2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 300
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 301
    .local v9, "dos":Ljava/io/DataOutputStream;
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 302
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 304
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_ea} :catch_ec

    move-result-object v19

    .line 308
    .end local v4    # "a":J
    .end local v6    # "b":J
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v10    # "c":J
    .end local v12    # "d":J
    .end local v14    # "delta":J
    .end local v20    # "sum":J
    .end local v22    # "y":J
    .end local v24    # "z":J
    :goto_eb
    return-object v19

    .line 306
    :catch_ec
    move-exception v16

    .line 308
    .local v16, "e":Ljava/io/IOException;
    const/16 v19, 0x0

    goto :goto_eb
.end method

.method private encode([BII)[B
    .registers 12
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 83
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    .line 84
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    .line 85
    iput v7, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 86
    iput v6, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    .line 87
    iput v6, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    iput v6, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    .line 88
    iput-boolean v7, p0, Lcom/tencent/msdk/tea/TEACoding;->header:Z

    .line 89
    add-int/lit8 v2, p3, 0xa

    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 90
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-eqz v2, :cond_26

    .line 92
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    rsub-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 94
    :cond_26
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    .line 95
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    invoke-direct {p0}, Lcom/tencent/msdk/tea/TEACoding;->rand()I

    move-result v3

    and-int/lit16 v3, v3, 0xf8

    iget v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 97
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3e
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-gt v0, v2, :cond_50

    .line 99
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    invoke-direct {p0}, Lcom/tencent/msdk/tea/TEACoding;->rand()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 102
    :cond_50
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 103
    const/4 v0, 0x0

    :goto_57
    if-ge v0, v5, :cond_60

    .line 105
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    aput-byte v6, v2, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 108
    :cond_60
    iput v7, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    :cond_62
    :goto_62
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_8a

    .line 110
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v2, v5, :cond_82

    .line 112
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    iget v3, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    invoke-direct {p0}, Lcom/tencent/msdk/tea/TEACoding;->rand()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 113
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    .line 115
    :cond_82
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ne v2, v5, :cond_62

    .line 117
    invoke-direct {p0}, Lcom/tencent/msdk/tea/TEACoding;->encrypt8Bytes()V

    goto :goto_62

    .line 121
    :cond_8a
    move v0, p2

    move v1, v0

    .line 122
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_8c
    if-lez p3, :cond_ab

    .line 124
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v2, v5, :cond_d3

    .line 126
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    iget v3, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    .line 127
    add-int/lit8 p3, p3, -0x1

    .line 129
    :goto_a2
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ne v2, v5, :cond_d1

    .line 131
    invoke-direct {p0}, Lcom/tencent/msdk/tea/TEACoding;->encrypt8Bytes()V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_8c

    .line 134
    :cond_ab
    iput v7, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    :cond_ad
    :goto_ad
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_ce

    .line 136
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v2, v5, :cond_c6

    .line 138
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    iget v3, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aput-byte v6, v2, v3

    .line 139
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/msdk/tea/TEACoding;->padding:I

    .line 141
    :cond_c6
    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ne v2, v5, :cond_ad

    .line 143
    invoke-direct {p0}, Lcom/tencent/msdk/tea/TEACoding;->encrypt8Bytes()V

    goto :goto_ad

    .line 147
    :cond_ce
    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    return-object v2

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_d1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_8c

    :cond_d3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_a2
.end method

.method private encrypt8Bytes()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 356
    iput v7, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    :goto_5
    iget v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v1, v8, :cond_38

    .line 358
    iget-boolean v1, p0, Lcom/tencent/msdk/tea/TEACoding;->header:Z

    if-eqz v1, :cond_24

    .line 360
    iget-object v1, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    iget v5, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 356
    :goto_1d
    iget v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    goto :goto_5

    .line 364
    :cond_24
    iget-object v1, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    iget v5, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    iget v6, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v5, v6

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1d

    .line 368
    :cond_38
    iget-object v1, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    invoke-direct {p0, v1}, Lcom/tencent/msdk/tea/TEACoding;->encipher([B)[B

    move-result-object v0

    .line 369
    .local v0, "crypted":[B
    iget-object v1, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    invoke-static {v0, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iput v7, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    :goto_47
    iget v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    if-ge v1, v8, :cond_65

    .line 372
    iget-object v1, p0, Lcom/tencent/msdk/tea/TEACoding;->out:[B

    iget v2, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    iget v3, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/2addr v2, v3

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    iget v5, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 370
    iget v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    goto :goto_47

    .line 375
    :cond_65
    iget-object v1, p0, Lcom/tencent/msdk/tea/TEACoding;->plain:[B

    iget-object v2, p0, Lcom/tencent/msdk/tea/TEACoding;->prePlain:[B

    invoke-static {v1, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget v1, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    iput v1, p0, Lcom/tencent/msdk/tea/TEACoding;->preCrypt:I

    .line 377
    iget v1, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/tencent/msdk/tea/TEACoding;->crypt:I

    .line 378
    iput v7, p0, Lcom/tencent/msdk/tea/TEACoding;->pos:I

    .line 379
    iput-boolean v7, p0, Lcom/tencent/msdk/tea/TEACoding;->header:Z

    .line 380
    return-void
.end method

.method public static getUnsignedInt([BII)J
    .registers 11
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v6, 0x8

    .line 414
    const-wide/16 v2, 0x0

    .line 415
    .local v2, "ret":J
    const/4 v0, 0x0

    .line 416
    .local v0, "end":I
    if-le p2, v6, :cond_16

    .line 418
    add-int/lit8 v0, p1, 0x8

    .line 424
    :goto_9
    move v1, p1

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_19

    .line 426
    shl-long/2addr v2, v6

    .line 427
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 422
    .end local v1    # "i":I
    :cond_16
    add-int v0, p1, p2

    goto :goto_9

    .line 430
    .restart local v1    # "i":I
    :cond_19
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    or-long/2addr v4, v6

    return-wide v4
.end method

.method private rand()I
    .registers 2

    .prologue
    .line 409
    sget-object v0, Lcom/tencent/msdk/tea/TEACoding;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decode([B)[B
    .registers 4
    .param p1, "code"    # [B

    .prologue
    .line 158
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/msdk/tea/TEACoding;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public decodeFromBase64Str(Ljava/lang/String;)[B
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/msdk/tea/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/tea/TEACoding;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decodeFromHexStr(Ljava/lang/String;)[B
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Lcom/tencent/msdk/tools/HexUtil;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/tea/TEACoding;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .registers 4
    .param p1, "in"    # [B

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/msdk/tea/TEACoding;->encode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public encode2HexBase64([B)Ljava/lang/String;
    .registers 4
    .param p1, "in"    # [B

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/tea/TEACoding;->encode([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/msdk/tea/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode2HexStr([B)Ljava/lang/String;
    .registers 3
    .param p1, "in"    # [B

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/tea/TEACoding;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
