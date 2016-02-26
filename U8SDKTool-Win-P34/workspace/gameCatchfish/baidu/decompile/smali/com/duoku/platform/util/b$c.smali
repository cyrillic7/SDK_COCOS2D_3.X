.class Lcom/duoku/platform/util/b$c;
.super Lcom/duoku/platform/util/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 544
    const-class v0, Lcom/duoku/platform/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/duoku/platform/util/b$c;->g:Z

    .line 556
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/duoku/platform/util/b$c;->h:[B

    .line 567
    new-array v0, v1, [B

    fill-array-data v0, :array_42

    sput-object v0, Lcom/duoku/platform/util/b$c;->i:[B

    .line 572
    return-void

    .line 544
    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    .line 556
    :array_1e
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 567
    :array_42
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    invoke-direct {p0}, Lcom/duoku/platform/util/b$a;-><init>()V

    .line 584
    iput-object p2, p0, Lcom/duoku/platform/util/b$c;->a:[B

    .line 586
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/duoku/platform/util/b$c;->d:Z

    .line 587
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/duoku/platform/util/b$c;->e:Z

    .line 588
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Lcom/duoku/platform/util/b$c;->f:Z

    .line 589
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Lcom/duoku/platform/util/b$c;->h:[B

    :goto_21
    iput-object v0, p0, Lcom/duoku/platform/util/b$c;->l:[B

    .line 591
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    .line 592
    iput v2, p0, Lcom/duoku/platform/util/b$c;->c:I

    .line 594
    iget-boolean v0, p0, Lcom/duoku/platform/util/b$c;->e:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Lcom/duoku/platform/util/b$c;->k:I

    .line 595
    return-void

    :cond_33
    move v0, v2

    .line 586
    goto :goto_c

    :cond_35
    move v0, v2

    .line 587
    goto :goto_13

    :cond_37
    move v1, v2

    .line 588
    goto :goto_19

    .line 589
    :cond_39
    sget-object v0, Lcom/duoku/platform/util/b$c;->i:[B

    goto :goto_21

    .line 594
    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public a([BIIZ)Z
    .registers 16

    .prologue
    .line 607
    iget-object v6, p0, Lcom/duoku/platform/util/b$c;->l:[B

    .line 608
    iget-object v7, p0, Lcom/duoku/platform/util/b$c;->a:[B

    .line 609
    const/4 v1, 0x0

    .line 610
    iget v0, p0, Lcom/duoku/platform/util/b$c;->k:I

    .line 613
    add-int v8, p3, p2

    .line 614
    const/4 v2, -0x1

    .line 620
    iget v3, p0, Lcom/duoku/platform/util/b$c;->c:I

    packed-switch v3, :pswitch_data_248

    :cond_f
    move v3, p2

    .line 647
    :goto_10
    const/4 v4, -0x1

    if-eq v2, v4, :cond_241

    .line 648
    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 649
    const/4 v1, 0x2

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v4

    .line 650
    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 651
    const/4 v1, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 652
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_241

    .line 653
    iget-boolean v0, p0, Lcom/duoku/platform/util/b$c;->f:Z

    if-eqz v0, :cond_245

    const/4 v0, 0x5

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 654
    :goto_42
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 655
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    .line 664
    :goto_4c
    add-int/lit8 v0, v3, 0x3

    if-le v0, v8, :cond_fd

    .line 681
    if-eqz p4, :cond_1fd

    .line 687
    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_15e

    .line 688
    const/4 v2, 0x0

    .line 689
    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    if-lez v0, :cond_155

    iget-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_65
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 690
    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    .line 691
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    .line 692
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    .line 693
    iget-boolean v1, p0, Lcom/duoku/platform/util/b$c;->d:Z

    if-eqz v1, :cond_90

    .line 694
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v0

    .line 695
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v1

    .line 697
    :cond_90
    iget-boolean v1, p0, Lcom/duoku/platform/util/b$c;->e:Z

    if-eqz v1, :cond_23a

    .line 698
    iget-boolean v1, p0, Lcom/duoku/platform/util/b$c;->f:Z

    if-eqz v1, :cond_9f

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v1

    .line 699
    :cond_9f
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    move v3, v2

    .line 721
    :cond_a6
    :goto_a6
    sget-boolean v0, Lcom/duoku/platform/util/b$c;->g:Z

    if-nez v0, :cond_1f1

    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    if-eqz v0, :cond_1f1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b4
    move v3, p2

    .line 623
    goto/16 :goto_10

    .line 626
    :pswitch_b7
    add-int/lit8 v3, p2, 0x2

    if-gt v3, v8, :cond_f

    .line 629
    iget-object v2, p0, Lcom/duoku/platform/util/b$c;->j:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 630
    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 629
    or-int/2addr v2, v4

    .line 631
    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 629
    or-int/2addr v2, v3

    .line 632
    const/4 v3, 0x0

    iput v3, p0, Lcom/duoku/platform/util/b$c;->c:I

    move v3, p2

    .line 634
    goto/16 :goto_10

    .line 637
    :pswitch_da
    add-int/lit8 v3, p2, 0x1

    if-gt v3, v8, :cond_f

    .line 639
    iget-object v2, p0, Lcom/duoku/platform/util/b$c;->j:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 640
    iget-object v3, p0, Lcom/duoku/platform/util/b$c;->j:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 639
    or-int/2addr v2, v3

    .line 641
    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    .line 639
    or-int/2addr v2, v4

    .line 642
    const/4 v4, 0x0

    iput v4, p0, Lcom/duoku/platform/util/b$c;->c:I

    goto/16 :goto_10

    .line 665
    :cond_fd
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 666
    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 665
    or-int/2addr v0, v1

    .line 667
    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 665
    or-int/2addr v0, v1

    .line 668
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 669
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 670
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 671
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    .line 672
    add-int/lit8 v3, v3, 0x3

    .line 673
    add-int/lit8 v1, v4, 0x4

    .line 674
    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_241

    .line 675
    iget-boolean v0, p0, Lcom/duoku/platform/util/b$c;->f:Z

    if-eqz v0, :cond_23e

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 676
    :goto_149
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 677
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    goto/16 :goto_4c

    .line 689
    :cond_155
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_65

    .line 701
    :cond_15e
    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_1d5

    .line 702
    const/4 v2, 0x0

    .line 703
    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c8

    iget-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_171
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v9, v0, 0xa

    .line 704
    iget v0, p0, Lcom/duoku/platform/util/b$c;->c:I

    if-lez v0, :cond_1cf

    iget-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_180
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    .line 703
    or-int/2addr v0, v9

    .line 705
    iget v2, p0, Lcom/duoku/platform/util/b$c;->c:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/duoku/platform/util/b$c;->c:I

    .line 706
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 707
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v1

    .line 708
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    .line 709
    iget-boolean v0, p0, Lcom/duoku/platform/util/b$c;->d:Z

    if-eqz v0, :cond_237

    .line 710
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 712
    :goto_1b1
    iget-boolean v1, p0, Lcom/duoku/platform/util/b$c;->e:Z

    if-eqz v1, :cond_234

    .line 713
    iget-boolean v1, p0, Lcom/duoku/platform/util/b$c;->f:Z

    if-eqz v1, :cond_1c0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 714
    :cond_1c0
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_a6

    .line 703
    :cond_1c8
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v1

    move v1, v2

    goto :goto_171

    .line 704
    :cond_1cf
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v2

    goto :goto_180

    .line 716
    :cond_1d5
    iget-boolean v0, p0, Lcom/duoku/platform/util/b$c;->e:Z

    if-eqz v0, :cond_a6

    if-lez v4, :cond_a6

    const/16 v0, 0x13

    if-eq v5, v0, :cond_a6

    .line 717
    iget-boolean v0, p0, Lcom/duoku/platform/util/b$c;->f:Z

    if-eqz v0, :cond_232

    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v4

    .line 718
    :goto_1e9
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_a6

    .line 722
    :cond_1f1
    sget-boolean v0, Lcom/duoku/platform/util/b$c;->g:Z

    if-nez v0, :cond_20d

    if-eq v3, v8, :cond_20d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 727
    :cond_1fd
    add-int/lit8 v0, v8, -0x1

    if-ne v3, v0, :cond_213

    .line 728
    iget-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    iget v1, p0, Lcom/duoku/platform/util/b$c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/duoku/platform/util/b$c;->c:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 735
    :cond_20d
    :goto_20d
    iput v4, p0, Lcom/duoku/platform/util/b$c;->b:I

    .line 736
    iput v5, p0, Lcom/duoku/platform/util/b$c;->k:I

    .line 738
    const/4 v0, 0x1

    return v0

    .line 729
    :cond_213
    add-int/lit8 v0, v8, -0x2

    if-ne v3, v0, :cond_20d

    .line 730
    iget-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    iget v1, p0, Lcom/duoku/platform/util/b$c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/duoku/platform/util/b$c;->c:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 731
    iget-object v0, p0, Lcom/duoku/platform/util/b$c;->j:[B

    iget v1, p0, Lcom/duoku/platform/util/b$c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/duoku/platform/util/b$c;->c:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto :goto_20d

    :cond_232
    move v0, v4

    goto :goto_1e9

    :cond_234
    move v4, v0

    goto/16 :goto_a6

    :cond_237
    move v0, v1

    goto/16 :goto_1b1

    :cond_23a
    move v3, v2

    move v4, v0

    goto/16 :goto_a6

    :cond_23e
    move v0, v1

    goto/16 :goto_149

    :cond_241
    move v5, v0

    move v4, v1

    goto/16 :goto_4c

    :cond_245
    move v0, v1

    goto/16 :goto_42

    .line 620
    :pswitch_data_248
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b7
        :pswitch_da
    .end packed-switch
.end method
