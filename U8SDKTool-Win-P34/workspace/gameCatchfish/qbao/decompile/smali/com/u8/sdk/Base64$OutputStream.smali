.class public Lcom/u8/sdk/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private alphabet:[B

.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 1562
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/u8/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1563
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

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
    iput-boolean v0, p0, Lcom/u8/sdk/Base64$OutputStream;->breakLines:Z

    .line 1590
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_3d

    :goto_13
    iput-boolean v1, p0, Lcom/u8/sdk/Base64$OutputStream;->encode:Z

    .line 1591
    iget-boolean v0, p0, Lcom/u8/sdk/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    :goto_1a
    iput v0, p0, Lcom/u8/sdk/Base64$OutputStream;->bufferLength:I

    .line 1592
    iget v0, p0, Lcom/u8/sdk/Base64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    .line 1593
    iput v2, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    .line 1594
    iput v2, p0, Lcom/u8/sdk/Base64$OutputStream;->lineLength:I

    .line 1595
    iput-boolean v2, p0, Lcom/u8/sdk/Base64$OutputStream;->suspendEncoding:Z

    .line 1596
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->b4:[B

    .line 1597
    iput p2, p0, Lcom/u8/sdk/Base64$OutputStream;->options:I

    .line 1598
    # invokes: Lcom/u8/sdk/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/u8/sdk/Base64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->alphabet:[B

    .line 1599
    # invokes: Lcom/u8/sdk/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/u8/sdk/Base64;->access$1(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->decodabet:[B

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
    invoke-virtual {p0}, Lcom/u8/sdk/Base64$OutputStream;->flushBase64()V

    .line 1728
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1730
    iput-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    .line 1731
    iput-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1732
    return-void
.end method

.method public flushBase64()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1700
    iget v0, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    if-lez v0, :cond_1c

    .line 1702
    iget-boolean v0, p0, Lcom/u8/sdk/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1d

    .line 1704
    iget-object v0, p0, Lcom/u8/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    iget v4, p0, Lcom/u8/sdk/Base64$OutputStream;->options:I

    # invokes: Lcom/u8/sdk/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/u8/sdk/Base64;->access$4([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1705
    const/4 v0, 0x0

    iput v0, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

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

.method public resumeEncoding()V
    .registers 2

    .prologue
    .line 1759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/Base64$OutputStream;->suspendEncoding:Z

    .line 1760
    return-void
.end method

.method public suspendEncoding()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/u8/sdk/Base64$OutputStream;->flushBase64()V

    .line 1746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/u8/sdk/Base64$OutputStream;->suspendEncoding:Z

    .line 1747
    return-void
.end method

.method public write(I)V
    .registers 9
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 1618
    iget-boolean v1, p0, Lcom/u8/sdk/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_c

    .line 1620
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1663
    :cond_b
    :goto_b
    return-void

    .line 1625
    :cond_c
    iget-boolean v1, p0, Lcom/u8/sdk/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_4e

    .line 1627
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1628
    iget v1, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/u8/sdk/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_b

    .line 1630
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/u8/sdk/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lcom/u8/sdk/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lcom/u8/sdk/Base64$OutputStream;->options:I

    # invokes: Lcom/u8/sdk/Base64;->encode3to4([B[BII)[B
    invoke-static {v2, v3, v4, v5}, Lcom/u8/sdk/Base64;->access$4([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1632
    iget v1, p0, Lcom/u8/sdk/Base64$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/u8/sdk/Base64$OutputStream;->lineLength:I

    .line 1633
    iget-boolean v1, p0, Lcom/u8/sdk/Base64$OutputStream;->breakLines:Z

    if-eqz v1, :cond_4b

    iget v1, p0, Lcom/u8/sdk/Base64$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_4b

    .line 1635
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1636
    iput v6, p0, Lcom/u8/sdk/Base64$OutputStream;->lineLength:I

    .line 1639
    :cond_4b
    iput v6, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    goto :goto_b

    .line 1647
    :cond_4e
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_7b

    .line 1649
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1650
    iget v1, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/u8/sdk/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_b

    .line 1652
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->buffer:[B

    iget-object v2, p0, Lcom/u8/sdk/Base64$OutputStream;->b4:[B

    iget v3, p0, Lcom/u8/sdk/Base64$OutputStream;->options:I

    # invokes: Lcom/u8/sdk/Base64;->decode4to3([BI[BII)I
    invoke-static {v1, v6, v2, v6, v3}, Lcom/u8/sdk/Base64;->access$3([BI[BII)I

    move-result v0

    .line 1653
    .local v0, "len":I
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/u8/sdk/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1655
    iput v6, p0, Lcom/u8/sdk/Base64$OutputStream;->position:I

    goto :goto_b

    .line 1658
    .end local v0    # "len":I
    :cond_7b
    iget-object v1, p0, Lcom/u8/sdk/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_b

    .line 1660
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .registers 6
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1679
    iget-boolean v1, p0, Lcom/u8/sdk/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_a

    .line 1681
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1690
    :cond_9
    return-void

    .line 1685
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p3, :cond_9

    .line 1687
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/u8/sdk/Base64$OutputStream;->write(I)V

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
