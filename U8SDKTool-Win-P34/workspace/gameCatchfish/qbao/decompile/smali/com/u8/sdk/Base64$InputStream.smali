.class public Lcom/u8/sdk/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private alphabet:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/u8/sdk/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1327
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1353
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1354
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_35

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/u8/sdk/Base64$InputStream;->breakLines:Z

    .line 1355
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_37

    :goto_12
    iput-boolean v1, p0, Lcom/u8/sdk/Base64$InputStream;->encode:Z

    .line 1356
    iget-boolean v0, p0, Lcom/u8/sdk/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x4

    :goto_19
    iput v0, p0, Lcom/u8/sdk/Base64$InputStream;->bufferLength:I

    .line 1357
    iget v0, p0, Lcom/u8/sdk/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/u8/sdk/Base64$InputStream;->buffer:[B

    .line 1358
    const/4 v0, -0x1

    iput v0, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    .line 1359
    iput v2, p0, Lcom/u8/sdk/Base64$InputStream;->lineLength:I

    .line 1360
    iput p2, p0, Lcom/u8/sdk/Base64$InputStream;->options:I

    .line 1361
    # invokes: Lcom/u8/sdk/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/u8/sdk/Base64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/Base64$InputStream;->alphabet:[B

    .line 1362
    # invokes: Lcom/u8/sdk/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/u8/sdk/Base64;->access$1(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/Base64$InputStream;->decodabet:[B

    .line 1363
    return-void

    :cond_35
    move v0, v2

    .line 1354
    goto :goto_c

    :cond_37
    move v1, v2

    .line 1355
    goto :goto_12

    .line 1356
    :cond_39
    const/4 v0, 0x3

    goto :goto_19
.end method


# virtual methods
.method public read()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 1375
    iget v3, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    if-gez v3, :cond_20

    .line 1377
    iget-boolean v3, p0, Lcom/u8/sdk/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_42

    .line 1379
    new-array v0, v4, [B

    .line 1380
    .local v0, "b3":[B
    const/4 v2, 0x0

    .line 1381
    .local v2, "numBinaryBytes":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_10
    if-lt v9, v4, :cond_2c

    .line 1404
    if-lez v2, :cond_40

    .line 1406
    iget-object v3, p0, Lcom/u8/sdk/Base64$InputStream;->buffer:[B

    iget v5, p0, Lcom/u8/sdk/Base64$InputStream;->options:I

    move v4, v1

    # invokes: Lcom/u8/sdk/Base64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/u8/sdk/Base64;->access$2([BII[BII)[B

    .line 1407
    iput v1, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    .line 1408
    iput v11, p0, Lcom/u8/sdk/Base64$InputStream;->numSigBytes:I

    .line 1452
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v9    # "i":I
    :cond_20
    :goto_20
    iget v3, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    if-ltz v3, :cond_ab

    .line 1455
    iget v3, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    iget v4, p0, Lcom/u8/sdk/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_7d

    move v1, v10

    .line 1474
    :goto_2b
    return v1

    .line 1385
    .restart local v0    # "b3":[B
    .restart local v2    # "numBinaryBytes":I
    .restart local v9    # "i":I
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/u8/sdk/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1388
    .local v6, "b":I
    if-ltz v6, :cond_39

    .line 1390
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_3c

    .line 1391
    add-int/lit8 v2, v2, 0x1

    .line 1381
    .end local v6    # "b":I
    :cond_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 1395
    :catch_3c
    move-exception v8

    .line 1398
    .local v8, "e":Ljava/io/IOException;
    if-nez v9, :cond_39

    .line 1399
    throw v8

    .end local v8    # "e":Ljava/io/IOException;
    :cond_40
    move v1, v10

    .line 1412
    goto :goto_2b

    .line 1419
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v9    # "i":I
    :cond_42
    new-array v7, v11, [B

    .line 1420
    .local v7, "b4":[B
    const/4 v9, 0x0

    .line 1421
    .restart local v9    # "i":I
    const/4 v9, 0x0

    :goto_46
    if-lt v9, v11, :cond_57

    .line 1434
    :cond_48
    if-ne v9, v11, :cond_71

    .line 1436
    iget-object v3, p0, Lcom/u8/sdk/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/u8/sdk/Base64$InputStream;->options:I

    # invokes: Lcom/u8/sdk/Base64;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lcom/u8/sdk/Base64;->access$3([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/u8/sdk/Base64$InputStream;->numSigBytes:I

    .line 1437
    iput v1, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    goto :goto_20

    .line 1424
    :cond_57
    const/4 v6, 0x0

    .line 1425
    .restart local v6    # "b":I
    :cond_58
    iget-object v3, p0, Lcom/u8/sdk/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1426
    if-ltz v6, :cond_69

    iget-object v3, p0, Lcom/u8/sdk/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    .line 1425
    if-le v3, v4, :cond_58

    .line 1428
    :cond_69
    if-ltz v6, :cond_48

    .line 1431
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 1421
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 1439
    .end local v6    # "b":I
    :cond_71
    if-nez v9, :cond_75

    move v1, v10

    .line 1440
    goto :goto_2b

    .line 1445
    :cond_75
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1458
    .end local v7    # "b4":[B
    .end local v9    # "i":I
    :cond_7d
    iget-boolean v3, p0, Lcom/u8/sdk/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_90

    iget-boolean v3, p0, Lcom/u8/sdk/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_90

    iget v3, p0, Lcom/u8/sdk/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_90

    .line 1460
    iput v1, p0, Lcom/u8/sdk/Base64$InputStream;->lineLength:I

    .line 1461
    const/16 v1, 0xa

    goto :goto_2b

    .line 1465
    :cond_90
    iget v1, p0, Lcom/u8/sdk/Base64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/u8/sdk/Base64$InputStream;->lineLength:I

    .line 1469
    iget-object v1, p0, Lcom/u8/sdk/Base64$InputStream;->buffer:[B

    iget v3, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1471
    .restart local v6    # "b":I
    iget v1, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    iget v3, p0, Lcom/u8/sdk/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_a8

    .line 1472
    iput v10, p0, Lcom/u8/sdk/Base64$InputStream;->position:I

    .line 1474
    :cond_a8
    and-int/lit16 v1, v6, 0xff

    goto :goto_2b

    .line 1483
    .end local v6    # "b":I
    :cond_ab
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .registers 8
    .param p1, "dest"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p3, :cond_4

    .line 1518
    .end local v1    # "i":I
    :cond_3
    :goto_3
    return v1

    .line 1506
    .restart local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/u8/sdk/Base64$InputStream;->read()I

    move-result v0

    .line 1511
    .local v0, "b":I
    if-ltz v0, :cond_12

    .line 1512
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1513
    :cond_12
    if-nez v1, :cond_3

    .line 1514
    const/4 v1, -0x1

    goto :goto_3
.end method
