.class public Lcom/tencent/android/tpush/service/channel/c/c;
.super Ljava/io/OutputStream;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/c/a;


# direct methods
.method protected constructor <init>(Lcom/tencent/android/tpush/service/channel/c/a;)V
    .registers 2

    .prologue
    .line 660
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 675
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    monitor-enter v1

    .line 676
    :try_start_3
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->k:Z

    if-nez v0, :cond_c

    .line 677
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/c/c;->flush()V

    .line 679
    :cond_c
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->k:Z

    .line 680
    monitor-exit v1

    .line 681
    return-void

    .line 680
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->k:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OutputStream has been closed; cannot flush a closed OutputStream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_e
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->i:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer closed by inputStream; cannot flush."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_1c
    return-void
.end method

.method public write(I)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 783
    .line 784
    :cond_2
    :goto_2
    if-nez v0, :cond_8a

    .line 785
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    monitor-enter v3

    .line 786
    :try_start_7
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->k:Z

    if-eqz v2, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OutputStream has been closed; cannot write to a closed OutputStream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :catchall_15
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0

    .line 787
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->i:Z

    if-eqz v2, :cond_26

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer closed by InputStream; cannot write to a closed buffer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_26
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/c/a;->c(Lcom/tencent/android/tpush/service/channel/c/a;)I

    move-result v2

    .line 789
    :goto_2c
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v4, v4, Lcom/tencent/android/tpush/service/channel/c/a;->f:Z

    if-eqz v4, :cond_40

    if-ge v2, v1, :cond_40

    .line 790
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/c/a;->d(Lcom/tencent/android/tpush/service/channel/c/a;)V

    .line 791
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/c/a;->c(Lcom/tencent/android/tpush/service/channel/c/a;)I

    move-result v2

    goto :goto_2c

    .line 793
    :cond_40
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v4, v4, Lcom/tencent/android/tpush/service/channel/c/a;->g:Z

    if-nez v4, :cond_50

    if-ge v2, v1, :cond_50

    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/IORefusedException;

    const-string v1, "CircularByteBuffer is full; cannot write 1 byte"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/IORefusedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_50
    if-lez v2, :cond_78

    .line 795
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 796
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    .line 797
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_77

    .line 798
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    :cond_77
    move v0, v1

    .line 802
    :cond_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_18 .. :try_end_79} :catchall_15

    .line 803
    if-nez v0, :cond_2

    .line 805
    const-wide/16 v2, 0x64

    :try_start_7d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_2

    .line 806
    :catch_81
    move-exception v0

    .line 807
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Waiting for available space in buffer interrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_8a
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 710
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/channel/c/c;->write([BII)V

    .line 711
    return-void
.end method

.method public write([BII)V
    .registers 10

    .prologue
    .line 729
    :cond_0
    :goto_0
    if-lez p3, :cond_d3

    .line 730
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    monitor-enter v1

    .line 731
    :try_start_5
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->k:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/io/IOException;

    const-string v2, "OutputStream has been closed; cannot write to a closed OutputStream."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 732
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->i:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Buffer closed by InputStream; cannot write to a closed buffer."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_24
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/a;->c(Lcom/tencent/android/tpush/service/channel/c/a;)I

    move-result v0

    .line 734
    :goto_2a
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->f:Z

    if-eqz v2, :cond_3e

    if-ge v0, p3, :cond_3e

    .line 735
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/a;->d(Lcom/tencent/android/tpush/service/channel/c/a;)V

    .line 736
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/a;->c(Lcom/tencent/android/tpush/service/channel/c/a;)I

    move-result v0

    goto :goto_2a

    .line 738
    :cond_3e
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-boolean v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->g:Z

    if-nez v2, :cond_65

    if-ge v0, p3, :cond_65

    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/IORefusedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CircularByteBuffer is full; cannot write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/android/tpush/service/channel/exception/IORefusedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_65
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 740
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v3, v3, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 741
    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v3, v3, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v4, v4, Lcom/tencent/android/tpush/service/channel/c/a;->d:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 742
    add-int v3, v2, v0

    .line 743
    if-lez v2, :cond_97

    .line 744
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v4, v4, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    iget-object v5, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v5, v5, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    invoke-static {p1, p2, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    :cond_97
    if-lez v0, :cond_cb

    .line 747
    add-int/2addr v2, p2

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v4, v4, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    const/4 v5, 0x0

    invoke-static {p1, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iput v0, v2, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    .line 752
    :goto_a6
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v0, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget-object v2, v2, Lcom/tencent/android/tpush/service/channel/c/a;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_b6

    .line 753
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    .line 755
    :cond_b6
    add-int/2addr p2, v3

    .line 756
    sub-int/2addr p3, v3

    .line 757
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_16 .. :try_end_b9} :catchall_13

    .line 758
    if-lez p3, :cond_0

    .line 760
    const-wide/16 v0, 0x64

    :try_start_bd
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c2

    goto/16 :goto_0

    .line 761
    :catch_c2
    move-exception v0

    .line 762
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Waiting for available space in buffer interrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_cb
    :try_start_cb
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/c;->a:Lcom/tencent/android/tpush/service/channel/c/a;

    iget v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/tencent/android/tpush/service/channel/c/a;->c:I
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_13

    goto :goto_a6

    .line 766
    :cond_d3
    return-void
.end method
