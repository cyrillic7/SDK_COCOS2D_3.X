.class public Lcom/qbao/core/util/Base64$a;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private bm:Z

.field private bn:I

.field private bo:I

.field private bp:I

.field private bq:Z

.field private br:I

.field private bs:[B

.field private bt:[B

.field private buffer:[B

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 1326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qbao/core/util/Base64$a;-><init>(Ljava/io/InputStream;I)V

    .line 1327
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 7

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
    iput-boolean v0, p0, Lcom/qbao/core/util/Base64$a;->bq:Z

    .line 1355
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_37

    :goto_12
    iput-boolean v1, p0, Lcom/qbao/core/util/Base64$a;->bm:Z

    .line 1356
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$a;->bm:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x4

    :goto_19
    iput v0, p0, Lcom/qbao/core/util/Base64$a;->bn:I

    .line 1357
    iget v0, p0, Lcom/qbao/core/util/Base64$a;->bn:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qbao/core/util/Base64$a;->buffer:[B

    .line 1358
    const/4 v0, -0x1

    iput v0, p0, Lcom/qbao/core/util/Base64$a;->position:I

    .line 1359
    iput v2, p0, Lcom/qbao/core/util/Base64$a;->bp:I

    .line 1360
    iput p2, p0, Lcom/qbao/core/util/Base64$a;->br:I

    .line 1361
    invoke-static {p2}, Lcom/qbao/core/util/Base64;->j(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/util/Base64$a;->bs:[B

    .line 1362
    invoke-static {p2}, Lcom/qbao/core/util/Base64;->k(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/util/Base64$a;->bt:[B

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1375
    iget v0, p0, Lcom/qbao/core/util/Base64$a;->position:I

    if-gez v0, :cond_20

    .line 1377
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$a;->bm:Z

    if-eqz v0, :cond_43

    .line 1379
    new-array v0, v5, [B

    move v4, v1

    move v2, v1

    .line 1381
    :goto_10
    if-lt v4, v5, :cond_2c

    .line 1404
    if-lez v2, :cond_41

    .line 1406
    iget-object v3, p0, Lcom/qbao/core/util/Base64$a;->buffer:[B

    iget v5, p0, Lcom/qbao/core/util/Base64$a;->br:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/qbao/core/util/Base64;->b([BII[BII)[B

    .line 1407
    iput v1, p0, Lcom/qbao/core/util/Base64$a;->position:I

    .line 1408
    iput v7, p0, Lcom/qbao/core/util/Base64$a;->bo:I

    .line 1452
    :cond_20
    :goto_20
    iget v0, p0, Lcom/qbao/core/util/Base64$a;->position:I

    if-ltz v0, :cond_aa

    .line 1455
    iget v0, p0, Lcom/qbao/core/util/Base64$a;->position:I

    iget v2, p0, Lcom/qbao/core/util/Base64$a;->bo:I

    if-lt v0, v2, :cond_7c

    move v0, v6

    .line 1474
    :goto_2b
    return v0

    .line 1385
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/qbao/core/util/Base64$a;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1388
    if-ltz v3, :cond_39

    .line 1390
    int-to-byte v3, v3

    aput-byte v3, v0, v4
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_3d

    .line 1391
    add-int/lit8 v2, v2, 0x1

    .line 1381
    :cond_39
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_10

    .line 1395
    :catch_3d
    move-exception v3

    .line 1398
    if-nez v4, :cond_39

    .line 1399
    throw v3

    :cond_41
    move v0, v6

    .line 1412
    goto :goto_2b

    .line 1419
    :cond_43
    new-array v2, v7, [B

    move v0, v1

    .line 1421
    :goto_46
    if-lt v0, v7, :cond_57

    .line 1434
    :cond_48
    if-ne v0, v7, :cond_70

    .line 1436
    iget-object v0, p0, Lcom/qbao/core/util/Base64$a;->buffer:[B

    iget v3, p0, Lcom/qbao/core/util/Base64$a;->br:I

    invoke-static {v2, v1, v0, v1, v3}, Lcom/qbao/core/util/Base64;->b([BI[BII)I

    move-result v0

    iput v0, p0, Lcom/qbao/core/util/Base64$a;->bo:I

    .line 1437
    iput v1, p0, Lcom/qbao/core/util/Base64$a;->position:I

    goto :goto_20

    .line 1425
    :cond_57
    iget-object v3, p0, Lcom/qbao/core/util/Base64$a;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1426
    if-ltz v3, :cond_68

    iget-object v4, p0, Lcom/qbao/core/util/Base64$a;->bt:[B

    and-int/lit8 v5, v3, 0x7f

    aget-byte v4, v4, v5

    const/4 v5, -0x5

    .line 1425
    if-le v4, v5, :cond_57

    .line 1428
    :cond_68
    if-ltz v3, :cond_48

    .line 1431
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1421
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1439
    :cond_70
    if-nez v0, :cond_74

    move v0, v6

    .line 1440
    goto :goto_2b

    .line 1445
    :cond_74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly padded Base64 input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_7c
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$a;->bm:Z

    if-eqz v0, :cond_8f

    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$a;->bq:Z

    if-eqz v0, :cond_8f

    iget v0, p0, Lcom/qbao/core/util/Base64$a;->bp:I

    const/16 v2, 0x4c

    if-lt v0, v2, :cond_8f

    .line 1460
    iput v1, p0, Lcom/qbao/core/util/Base64$a;->bp:I

    .line 1461
    const/16 v0, 0xa

    goto :goto_2b

    .line 1465
    :cond_8f
    iget v0, p0, Lcom/qbao/core/util/Base64$a;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qbao/core/util/Base64$a;->bp:I

    .line 1469
    iget-object v0, p0, Lcom/qbao/core/util/Base64$a;->buffer:[B

    iget v1, p0, Lcom/qbao/core/util/Base64$a;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/qbao/core/util/Base64$a;->position:I

    aget-byte v0, v0, v1

    .line 1471
    iget v1, p0, Lcom/qbao/core/util/Base64$a;->position:I

    iget v2, p0, Lcom/qbao/core/util/Base64$a;->bn:I

    if-lt v1, v2, :cond_a7

    .line 1472
    iput v6, p0, Lcom/qbao/core/util/Base64$a;->position:I

    .line 1474
    :cond_a7
    and-int/lit16 v0, v0, 0xff

    goto :goto_2b

    .line 1483
    :cond_aa
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Base64 code reading stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    .line 1518
    :cond_3
    :goto_3
    return v0

    .line 1506
    :cond_4
    invoke-virtual {p0}, Lcom/qbao/core/util/Base64$a;->read()I

    move-result v1

    .line 1511
    if-ltz v1, :cond_12

    .line 1512
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1513
    :cond_12
    if-nez v0, :cond_3

    .line 1514
    const/4 v0, -0x1

    goto :goto_3
.end method
