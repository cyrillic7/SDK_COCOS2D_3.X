.class public Lcom/qbao/core/util/Base64$b;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private bm:Z

.field private bn:I

.field private bp:I

.field private bq:Z

.field private br:I

.field private bs:[B

.field private bt:[B

.field private bu:[B

.field private buffer:[B

.field private bv:Z

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 1562
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qbao/core/util/Base64$b;-><init>(Ljava/io/OutputStream;I)V

    .line 1563
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 8

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1588
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1589
    and-int/lit8 v0, p2, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_3b

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bq:Z

    .line 1590
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_3d

    :goto_13
    iput-boolean v1, p0, Lcom/qbao/core/util/Base64$b;->bm:Z

    .line 1591
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bm:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    :goto_1a
    iput v0, p0, Lcom/qbao/core/util/Base64$b;->bn:I

    .line 1592
    iget v0, p0, Lcom/qbao/core/util/Base64$b;->bn:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    .line 1593
    iput v2, p0, Lcom/qbao/core/util/Base64$b;->position:I

    .line 1594
    iput v2, p0, Lcom/qbao/core/util/Base64$b;->bp:I

    .line 1595
    iput-boolean v2, p0, Lcom/qbao/core/util/Base64$b;->bv:Z

    .line 1596
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/qbao/core/util/Base64$b;->bu:[B

    .line 1597
    iput p2, p0, Lcom/qbao/core/util/Base64$b;->br:I

    .line 1598
    invoke-static {p2}, Lcom/qbao/core/util/Base64;->j(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/util/Base64$b;->bs:[B

    .line 1599
    invoke-static {p2}, Lcom/qbao/core/util/Base64;->k(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/core/util/Base64$b;->bt:[B

    .line 1600
    return-void

    :cond_3b
    move v0, v2

    .line 1589
    goto :goto_d

    :cond_3d
    move v1, v2

    .line 1590
    goto :goto_13

    :cond_3f
    move v0, v3

    .line 1591
    goto :goto_1a
.end method


# virtual methods
.method public L()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1700
    iget v0, p0, Lcom/qbao/core/util/Base64$b;->position:I

    if-lez v0, :cond_1c

    .line 1702
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bm:Z

    if-eqz v0, :cond_1d

    .line 1704
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/qbao/core/util/Base64$b;->bu:[B

    iget-object v2, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    iget v3, p0, Lcom/qbao/core/util/Base64$b;->position:I

    iget v4, p0, Lcom/qbao/core/util/Base64$b;->br:I

    invoke-static {v1, v2, v3, v4}, Lcom/qbao/core/util/Base64;->b([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1705
    const/4 v0, 0x0

    iput v0, p0, Lcom/qbao/core/util/Base64$b;->position:I

    .line 1713
    :cond_1c
    return-void

    .line 1709
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/qbao/core/util/Base64$b;->L()V

    .line 1746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bv:Z

    .line 1747
    return-void
.end method

.method public N()V
    .registers 2

    .prologue
    .line 1759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bv:Z

    .line 1760
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1724
    invoke-virtual {p0}, Lcom/qbao/core/util/Base64$b;->L()V

    .line 1728
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1730
    iput-object v0, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    .line 1731
    iput-object v0, p0, Lcom/qbao/core/util/Base64$b;->out:Ljava/io/OutputStream;

    .line 1732
    return-void
.end method

.method public write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 1618
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bv:Z

    if-eqz v0, :cond_c

    .line 1620
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1663
    :cond_b
    :goto_b
    return-void

    .line 1625
    :cond_c
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bm:Z

    if-eqz v0, :cond_4e

    .line 1627
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    iget v1, p0, Lcom/qbao/core/util/Base64$b;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/qbao/core/util/Base64$b;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1628
    iget v0, p0, Lcom/qbao/core/util/Base64$b;->position:I

    iget v1, p0, Lcom/qbao/core/util/Base64$b;->bn:I

    if-lt v0, v1, :cond_b

    .line 1630
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/qbao/core/util/Base64$b;->bu:[B

    iget-object v2, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    iget v3, p0, Lcom/qbao/core/util/Base64$b;->bn:I

    iget v4, p0, Lcom/qbao/core/util/Base64$b;->br:I

    invoke-static {v1, v2, v3, v4}, Lcom/qbao/core/util/Base64;->b([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1632
    iget v0, p0, Lcom/qbao/core/util/Base64$b;->bp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/qbao/core/util/Base64$b;->bp:I

    .line 1633
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bq:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/qbao/core/util/Base64$b;->bp:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_4b

    .line 1635
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1636
    iput v5, p0, Lcom/qbao/core/util/Base64$b;->bp:I

    .line 1639
    :cond_4b
    iput v5, p0, Lcom/qbao/core/util/Base64$b;->position:I

    goto :goto_b

    .line 1647
    :cond_4e
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->bt:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_7b

    .line 1649
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    iget v1, p0, Lcom/qbao/core/util/Base64$b;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/qbao/core/util/Base64$b;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1650
    iget v0, p0, Lcom/qbao/core/util/Base64$b;->position:I

    iget v1, p0, Lcom/qbao/core/util/Base64$b;->bn:I

    if-lt v0, v1, :cond_b

    .line 1652
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->buffer:[B

    iget-object v1, p0, Lcom/qbao/core/util/Base64$b;->bu:[B

    iget v2, p0, Lcom/qbao/core/util/Base64$b;->br:I

    invoke-static {v0, v5, v1, v5, v2}, Lcom/qbao/core/util/Base64;->b([BI[BII)I

    move-result v0

    .line 1653
    iget-object v1, p0, Lcom/qbao/core/util/Base64$b;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/qbao/core/util/Base64$b;->bu:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1655
    iput v5, p0, Lcom/qbao/core/util/Base64$b;->position:I

    goto :goto_b

    .line 1658
    :cond_7b
    iget-object v0, p0, Lcom/qbao/core/util/Base64$b;->bt:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_b

    .line 1660
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1679
    iget-boolean v0, p0, Lcom/qbao/core/util/Base64$b;->bv:Z

    if-eqz v0, :cond_a

    .line 1681
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1690
    :cond_9
    return-void

    .line 1685
    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_9

    .line 1687
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/qbao/core/util/Base64$b;->write(I)V

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
