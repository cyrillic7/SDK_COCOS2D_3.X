.class public Lcom/qbao/core/util/h;
.super Ljava/lang/Object;
.source "MD5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/util/h$a;
    }
.end annotation


# static fields
.field private static final cf:[B


# instance fields
.field private cc:Lcom/qbao/core/util/h$a;

.field private cd:Lcom/qbao/core/util/h$a;

.field private ce:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 455
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 456
    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 455
    sput-object v0, Lcom/qbao/core/util/h;->cf:[B

    .line 464
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Lcom/qbao/core/util/h$a;

    invoke-direct {v0, p0, v1}, Lcom/qbao/core/util/h$a;-><init>(Lcom/qbao/core/util/h;Lcom/qbao/core/util/h$a;)V

    iput-object v0, p0, Lcom/qbao/core/util/h;->cc:Lcom/qbao/core/util/h$a;

    .line 440
    new-instance v0, Lcom/qbao/core/util/h$a;

    invoke-direct {v0, p0, v1}, Lcom/qbao/core/util/h$a;-><init>(Lcom/qbao/core/util/h;Lcom/qbao/core/util/h$a;)V

    iput-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    .line 447
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qbao/core/util/h;->ce:[I

    .line 66
    invoke-virtual {p0}, Lcom/qbao/core/util/h;->reset()V

    .line 67
    return-void
.end method

.method private static a(IIIIIII)I
    .registers 10

    .prologue
    .line 560
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 561
    add-int/2addr v0, p4

    .line 562
    add-int/2addr v0, p6

    .line 564
    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 565
    add-int/2addr v0, p1

    return v0
.end method

.method private a(Lcom/qbao/core/util/h$a;[BII)V
    .registers 12

    .prologue
    const/16 v6, 0x40

    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    invoke-static {v1, v0}, Lcom/qbao/core/util/h$a;->a(Lcom/qbao/core/util/h$a;Z)V

    .line 312
    add-int v1, p4, p3

    array-length v2, p2

    if-le v1, v2, :cond_10

    .line 313
    array-length v1, p2

    sub-int p4, v1, p3

    .line 319
    :cond_10
    invoke-static {p1}, Lcom/qbao/core/util/h$a;->c(Lcom/qbao/core/util/h$a;)J

    move-result-wide v2

    const/4 v1, 0x3

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x3f

    .line 322
    invoke-static {p1}, Lcom/qbao/core/util/h$a;->c(Lcom/qbao/core/util/h$a;)J

    move-result-wide v2

    shl-int/lit8 v4, p4, 0x3

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/qbao/core/util/h$a;->a(Lcom/qbao/core/util/h$a;J)V

    .line 324
    rsub-int/lit8 v2, v1, 0x40

    .line 327
    if-lt p4, v2, :cond_60

    .line 328
    invoke-static {p1}, Lcom/qbao/core/util/h$a;->f(Lcom/qbao/core/util/h$a;)[B

    move-result-object v3

    invoke-static {p2, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    invoke-static {p1}, Lcom/qbao/core/util/h$a;->f(Lcom/qbao/core/util/h$a;)[B

    move-result-object v1

    invoke-direct {p0, v1, v6, v0}, Lcom/qbao/core/util/h;->b([BII)[I

    move-result-object v1

    invoke-static {p1, v1}, Lcom/qbao/core/util/h;->a(Lcom/qbao/core/util/h$a;[I)V

    move v1, v2

    .line 330
    :goto_3b
    add-int/lit8 v2, v1, 0x3f

    if-lt v2, p4, :cond_46

    move v2, v0

    .line 337
    :goto_40
    if-ge v1, p4, :cond_45

    move v0, v1

    .line 338
    :goto_43
    if-lt v0, p4, :cond_50

    .line 342
    :cond_45
    return-void

    .line 331
    :cond_46
    invoke-direct {p0, p2, v6, v1}, Lcom/qbao/core/util/h;->b([BII)[I

    move-result-object v2

    invoke-static {p1, v2}, Lcom/qbao/core/util/h;->a(Lcom/qbao/core/util/h$a;[I)V

    .line 330
    add-int/lit8 v1, v1, 0x40

    goto :goto_3b

    .line 339
    :cond_50
    invoke-static {p1}, Lcom/qbao/core/util/h$a;->f(Lcom/qbao/core/util/h$a;)[B

    move-result-object v3

    add-int v4, v2, v0

    sub-int/2addr v4, v1

    add-int v5, v0, p3

    aget-byte v5, p2, v5

    aput-byte v5, v3, v4

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_60
    move v2, v1

    move v1, v0

    goto :goto_40
.end method

.method private static a(Lcom/qbao/core/util/h$a;[I)V
    .registers 32

    .prologue
    .line 634
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 635
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 636
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 637
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    .line 640
    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x7

    const v6, -0x28955b88

    invoke-static/range {v0 .. v6}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v4

    .line 641
    const/4 v0, 0x1

    aget v7, p1, v0

    const/16 v8, 0xc

    const v9, -0x173848aa

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v3

    .line 642
    const/4 v0, 0x2

    aget v6, p1, v0

    const/16 v7, 0x11

    const v8, 0x242070db

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v2

    .line 643
    const/4 v0, 0x3

    aget v5, p1, v0

    const/16 v6, 0x16

    const v7, -0x3e423112

    invoke-static/range {v1 .. v7}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v5

    .line 644
    const/4 v0, 0x4

    aget v8, p1, v0

    const/4 v9, 0x7

    const v10, -0xa83f051

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v10}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v4

    .line 645
    const/4 v0, 0x5

    aget v7, p1, v0

    const/16 v8, 0xc

    const v9, 0x4787c62a

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v3

    .line 646
    const/4 v0, 0x6

    aget v6, p1, v0

    const/16 v7, 0x11

    const v8, -0x57cfb9ed

    invoke-static/range {v2 .. v8}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v6

    .line 647
    const/4 v0, 0x7

    aget v9, p1, v0

    const/16 v10, 0x16

    const v11, -0x2b96aff

    move v7, v3

    move v8, v4

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v5

    .line 648
    const/16 v0, 0x8

    aget v8, p1, v0

    const/4 v9, 0x7

    const v10, 0x698098d8

    move v7, v3

    invoke-static/range {v4 .. v10}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v4

    .line 649
    const/16 v0, 0x9

    aget v7, p1, v0

    const/16 v8, 0xc

    const v9, -0x74bb0851

    invoke-static/range {v3 .. v9}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v7

    .line 650
    const/16 v0, 0xa

    aget v10, p1, v0

    const/16 v11, 0x11

    const v12, -0xa44f

    move v8, v4

    move v9, v5

    invoke-static/range {v6 .. v12}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v6

    .line 651
    const/16 v0, 0xb

    aget v9, p1, v0

    const/16 v10, 0x16

    const v11, -0x76a32842

    move v8, v4

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v5

    .line 652
    const/16 v0, 0xc

    aget v8, p1, v0

    const/4 v9, 0x7

    const v10, 0x6b901122

    invoke-static/range {v4 .. v10}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v8

    .line 653
    const/16 v0, 0xd

    aget v11, p1, v0

    const/16 v12, 0xc

    const v13, -0x2678e6d

    move v9, v5

    move v10, v6

    invoke-static/range {v7 .. v13}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v7

    .line 654
    const/16 v0, 0xe

    aget v10, p1, v0

    const/16 v11, 0x11

    const v12, -0x5986bc72

    move v9, v5

    invoke-static/range {v6 .. v12}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v6

    .line 655
    const/16 v0, 0xf

    aget v9, p1, v0

    const/16 v10, 0x16

    const v11, 0x49b40821

    invoke-static/range {v5 .. v11}, Lcom/qbao/core/util/h;->a(IIIIIII)I

    move-result v9

    .line 658
    const/4 v0, 0x1

    aget v12, p1, v0

    const/4 v13, 0x5

    const v14, -0x9e1da9e

    move v10, v6

    move v11, v7

    invoke-static/range {v8 .. v14}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v8

    .line 659
    const/4 v0, 0x6

    aget v11, p1, v0

    const/16 v12, 0x9

    const v13, -0x3fbf4cc0

    move v10, v6

    invoke-static/range {v7 .. v13}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v7

    .line 660
    const/16 v0, 0xb

    aget v10, p1, v0

    const/16 v11, 0xe

    const v12, 0x265e5a51

    invoke-static/range {v6 .. v12}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v10

    .line 661
    const/4 v0, 0x0

    aget v13, p1, v0

    const/16 v14, 0x14

    const v15, -0x16493856

    move v11, v7

    move v12, v8

    invoke-static/range {v9 .. v15}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v9

    .line 662
    const/4 v0, 0x5

    aget v12, p1, v0

    const/4 v13, 0x5

    const v14, -0x29d0efa3

    move v11, v7

    invoke-static/range {v8 .. v14}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v8

    .line 663
    const/16 v0, 0xa

    aget v11, p1, v0

    const/16 v12, 0x9

    const v13, 0x2441453

    invoke-static/range {v7 .. v13}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v11

    .line 664
    const/16 v0, 0xf

    aget v14, p1, v0

    const/16 v15, 0xe

    const v16, -0x275e197f

    move v12, v8

    move v13, v9

    invoke-static/range {v10 .. v16}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v10

    .line 665
    const/4 v0, 0x4

    aget v13, p1, v0

    const/16 v14, 0x14

    const v15, -0x182c0438

    move v12, v8

    invoke-static/range {v9 .. v15}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v9

    .line 666
    const/16 v0, 0x9

    aget v12, p1, v0

    const/4 v13, 0x5

    const v14, 0x21e1cde6

    invoke-static/range {v8 .. v14}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v12

    .line 667
    const/16 v0, 0xe

    aget v15, p1, v0

    const/16 v16, 0x9

    const v17, -0x3cc8f82a

    move v13, v9

    move v14, v10

    invoke-static/range {v11 .. v17}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v11

    .line 668
    const/4 v0, 0x3

    aget v14, p1, v0

    const/16 v15, 0xe

    const v16, -0xb2af279

    move v13, v9

    invoke-static/range {v10 .. v16}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v10

    .line 669
    const/16 v0, 0x8

    aget v13, p1, v0

    const/16 v14, 0x14

    const v15, 0x455a14ed

    invoke-static/range {v9 .. v15}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v13

    .line 670
    const/16 v0, 0xd

    aget v16, p1, v0

    const/16 v17, 0x5

    const v18, -0x561c16fb

    move v14, v10

    move v15, v11

    invoke-static/range {v12 .. v18}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v12

    .line 671
    const/4 v0, 0x2

    aget v15, p1, v0

    const/16 v16, 0x9

    const v17, -0x3105c08

    move v14, v10

    invoke-static/range {v11 .. v17}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v11

    .line 672
    const/4 v0, 0x7

    aget v14, p1, v0

    const/16 v15, 0xe

    const v16, 0x676f02d9

    invoke-static/range {v10 .. v16}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v14

    .line 673
    const/16 v0, 0xc

    aget v17, p1, v0

    const/16 v18, 0x14

    const v19, -0x72d5b376

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v13 .. v19}, Lcom/qbao/core/util/h;->b(IIIIIII)I

    move-result v13

    .line 676
    const/4 v0, 0x5

    aget v16, p1, v0

    const/16 v17, 0x4

    const v18, -0x5c6be

    move v15, v11

    invoke-static/range {v12 .. v18}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v12

    .line 677
    const/16 v0, 0x8

    aget v15, p1, v0

    const/16 v16, 0xb

    const v17, -0x788e097f

    invoke-static/range {v11 .. v17}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v15

    .line 678
    const/16 v0, 0xb

    aget v18, p1, v0

    const/16 v19, 0x10

    const v20, 0x6d9d6122

    move/from16 v16, v12

    move/from16 v17, v13

    invoke-static/range {v14 .. v20}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v14

    .line 679
    const/16 v0, 0xe

    aget v17, p1, v0

    const/16 v18, 0x17

    const v19, -0x21ac7f4

    move/from16 v16, v12

    invoke-static/range {v13 .. v19}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v13

    .line 680
    const/4 v0, 0x1

    aget v16, p1, v0

    const/16 v17, 0x4

    const v18, -0x5b4115bc

    invoke-static/range {v12 .. v18}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v16

    .line 681
    const/4 v0, 0x4

    aget v19, p1, v0

    const/16 v20, 0xb

    const v21, 0x4bdecfa9

    move/from16 v17, v13

    move/from16 v18, v14

    invoke-static/range {v15 .. v21}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v15

    .line 682
    const/4 v0, 0x7

    aget v18, p1, v0

    const/16 v19, 0x10

    const v20, -0x944b4a0

    move/from16 v17, v13

    invoke-static/range {v14 .. v20}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v14

    .line 683
    const/16 v0, 0xa

    aget v17, p1, v0

    const/16 v18, 0x17

    const v19, -0x41404390

    invoke-static/range {v13 .. v19}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v17

    .line 684
    const/16 v0, 0xd

    aget v20, p1, v0

    const/16 v21, 0x4

    const v22, 0x289b7ec6

    move/from16 v18, v14

    move/from16 v19, v15

    invoke-static/range {v16 .. v22}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v16

    .line 685
    const/4 v0, 0x0

    aget v19, p1, v0

    const/16 v20, 0xb

    const v21, -0x155ed806

    move/from16 v18, v14

    invoke-static/range {v15 .. v21}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v15

    .line 686
    const/4 v0, 0x3

    aget v18, p1, v0

    const/16 v19, 0x10

    const v20, -0x2b10cf7b

    invoke-static/range {v14 .. v20}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v18

    .line 687
    const/4 v0, 0x6

    aget v21, p1, v0

    const/16 v22, 0x17

    const v23, 0x4881d05

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-static/range {v17 .. v23}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v17

    .line 688
    const/16 v0, 0x9

    aget v20, p1, v0

    const/16 v21, 0x4

    const v22, -0x262b2fc7

    move/from16 v19, v15

    invoke-static/range {v16 .. v22}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v16

    .line 689
    const/16 v0, 0xc

    aget v19, p1, v0

    const/16 v20, 0xb

    const v21, -0x1924661b

    invoke-static/range {v15 .. v21}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v19

    .line 690
    const/16 v0, 0xf

    aget v22, p1, v0

    const/16 v23, 0x10

    const v24, 0x1fa27cf8

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-static/range {v18 .. v24}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v18

    .line 691
    const/4 v0, 0x2

    aget v21, p1, v0

    const/16 v22, 0x17

    const v23, -0x3b53a99b

    move/from16 v20, v16

    invoke-static/range {v17 .. v23}, Lcom/qbao/core/util/h;->c(IIIIIII)I

    move-result v17

    .line 694
    const/4 v0, 0x0

    aget v20, p1, v0

    const/16 v21, 0x6

    const v22, -0xbd6ddbc

    invoke-static/range {v16 .. v22}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v20

    .line 695
    const/4 v0, 0x7

    aget v23, p1, v0

    const/16 v24, 0xa

    const v25, 0x432aff97

    move/from16 v21, v17

    move/from16 v22, v18

    invoke-static/range {v19 .. v25}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v19

    .line 696
    const/16 v0, 0xe

    aget v22, p1, v0

    const/16 v23, 0xf

    const v24, -0x546bdc59

    move/from16 v21, v17

    invoke-static/range {v18 .. v24}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v18

    .line 697
    const/4 v0, 0x5

    aget v21, p1, v0

    const/16 v22, 0x15

    const v23, -0x36c5fc7

    invoke-static/range {v17 .. v23}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v21

    .line 698
    const/16 v0, 0xc

    aget v24, p1, v0

    const/16 v25, 0x6

    const v26, 0x655b59c3

    move/from16 v22, v18

    move/from16 v23, v19

    invoke-static/range {v20 .. v26}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v20

    .line 699
    const/4 v0, 0x3

    aget v23, p1, v0

    const/16 v24, 0xa

    const v25, -0x70f3336e

    move/from16 v22, v18

    invoke-static/range {v19 .. v25}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v19

    .line 700
    const/16 v0, 0xa

    aget v22, p1, v0

    const/16 v23, 0xf

    const v24, -0x100b83

    invoke-static/range {v18 .. v24}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v22

    .line 701
    const/4 v0, 0x1

    aget v25, p1, v0

    const/16 v26, 0x15

    const v27, -0x7a7ba22f

    move/from16 v23, v19

    move/from16 v24, v20

    invoke-static/range {v21 .. v27}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v21

    .line 702
    const/16 v0, 0x8

    aget v24, p1, v0

    const/16 v25, 0x6

    const v26, 0x6fa87e4f

    move/from16 v23, v19

    invoke-static/range {v20 .. v26}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v20

    .line 703
    const/16 v0, 0xf

    aget v23, p1, v0

    const/16 v24, 0xa

    const v25, -0x1d31920

    invoke-static/range {v19 .. v25}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v23

    .line 704
    const/4 v0, 0x6

    aget v26, p1, v0

    const/16 v27, 0xf

    const v28, -0x5cfebcec

    move/from16 v24, v20

    move/from16 v25, v21

    invoke-static/range {v22 .. v28}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v22

    .line 705
    const/16 v0, 0xd

    aget v25, p1, v0

    const/16 v26, 0x15

    const v27, 0x4e0811a1

    move/from16 v24, v20

    invoke-static/range {v21 .. v27}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v21

    .line 706
    const/4 v0, 0x4

    aget v24, p1, v0

    const/16 v25, 0x6

    const v26, -0x8ac817e

    invoke-static/range {v20 .. v26}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v24

    .line 707
    const/16 v0, 0xb

    aget v27, p1, v0

    const/16 v28, 0xa

    const v29, -0x42c50dcb

    move/from16 v25, v21

    move/from16 v26, v22

    invoke-static/range {v23 .. v29}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v23

    .line 708
    const/4 v0, 0x2

    aget v26, p1, v0

    const/16 v27, 0xf

    const v28, 0x2ad7d2bb

    move/from16 v25, v21

    invoke-static/range {v22 .. v28}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v22

    .line 709
    const/16 v0, 0x9

    aget v25, p1, v0

    const/16 v26, 0x15

    const v27, -0x14792c6f

    invoke-static/range {v21 .. v27}, Lcom/qbao/core/util/h;->d(IIIIIII)I

    move-result v0

    .line 711
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int v3, v3, v24

    aput v3, v1, v2

    .line 712
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/2addr v0, v3

    aput v0, v1, v2

    .line 713
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int v2, v2, v22

    aput v2, v0, v1

    .line 714
    invoke-static/range {p0 .. p0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v2, v0, v1

    add-int v2, v2, v23

    aput v2, v0, v1

    .line 715
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 144
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 146
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 149
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->Q()[B

    move-result-object v0

    return-object v0

    .line 147
    :cond_15
    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/util/h;->b([BI)V

    goto :goto_9
.end method

.method private static a([II)[B
    .registers 7

    .prologue
    .line 609
    new-array v2, p1, [B

    .line 611
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-lt v0, p1, :cond_7

    .line 617
    return-object v2

    .line 612
    :cond_7
    aget v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 613
    add-int/lit8 v3, v0, 0x1

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 614
    add-int/lit8 v3, v0, 0x2

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 615
    add-int/lit8 v3, v0, 0x3

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 611
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_4
.end method

.method private static b(IIIIIII)I
    .registers 10

    .prologue
    .line 569
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 570
    add-int/2addr v0, p4

    .line 571
    add-int/2addr v0, p6

    .line 573
    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 574
    add-int/2addr v0, p1

    return v0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 163
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 165
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 168
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_15
    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/util/h;->b([BI)V

    goto :goto_9
.end method

.method private static b(J)[B
    .registers 10

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 596
    new-array v0, v6, [B

    .line 597
    const/4 v1, 0x0

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 598
    const/4 v1, 0x1

    ushr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 599
    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 600
    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 601
    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 602
    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 603
    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 604
    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 605
    return-object v0
.end method

.method private b([BII)[I
    .registers 9

    .prologue
    .line 622
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v0, p2, :cond_7

    .line 630
    iget-object v0, p0, Lcom/qbao/core/util/h;->ce:[I

    return-object v0

    .line 623
    :cond_7
    iget-object v2, p0, Lcom/qbao/core/util/h;->ce:[I

    .line 624
    add-int v3, v0, p3

    aget-byte v3, p1, v3

    .line 623
    and-int/lit16 v3, v3, 0xff

    .line 625
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v4, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 623
    or-int/2addr v3, v4

    .line 626
    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 623
    or-int/2addr v3, v4

    .line 627
    add-int/lit8 v4, v0, 0x3

    add-int/2addr v4, p3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 623
    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method private static c(IIIIIII)I
    .registers 10

    .prologue
    .line 578
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    add-int/2addr v0, p0

    .line 579
    add-int/2addr v0, p4

    .line 580
    add-int/2addr v0, p6

    .line 582
    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 583
    add-int/2addr v0, p1

    return v0
.end method

.method public static c(Ljava/io/File;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 182
    invoke-static {v0}, Lcom/qbao/core/util/h;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 184
    return-object v1
.end method

.method private static d(IIIIIII)I
    .registers 10

    .prologue
    .line 587
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    add-int/2addr v0, p0

    .line 588
    add-int/2addr v0, p4

    .line 589
    add-int/2addr v0, p6

    .line 591
    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 592
    add-int/2addr v0, p1

    return v0
.end method

.method public static d(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 198
    invoke-static {v0}, Lcom/qbao/core/util/h;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    return-object v1
.end method

.method private static f([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 546
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 547
    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_11

    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :cond_11
    aget-byte v3, p0, v0

    .line 548
    and-int/lit16 v3, v3, 0xff

    .line 549
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1e

    .line 552
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static g([B)[B
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 115
    invoke-virtual {v0, p0}, Lcom/qbao/core/util/h;->update([B)V

    .line 116
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->Q()[B

    move-result-object v0

    return-object v0
.end method

.method public static h([B)Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 129
    invoke-virtual {v0, p0}, Lcom/qbao/core/util/h;->update([B)V

    .line 130
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 248
    invoke-virtual {v0, p0, p1}, Lcom/qbao/core/util/h;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->Q()[B

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 264
    invoke-virtual {v0, p0, p1}, Lcom/qbao/core/util/h;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 214
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 215
    invoke-virtual {v0, p0}, Lcom/qbao/core/util/h;->z(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->Q()[B

    move-result-object v0

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    new-instance v0, Lcom/qbao/core/util/h;

    invoke-direct {v0}, Lcom/qbao/core/util/h;-><init>()V

    .line 231
    invoke-virtual {v0, p0}, Lcom/qbao/core/util/h;->z(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/qbao/core/util/h;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Q()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 77
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    invoke-static {v0}, Lcom/qbao/core/util/h$a;->b(Lcom/qbao/core/util/h$a;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 78
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    iget-object v1, p0, Lcom/qbao/core/util/h;->cc:Lcom/qbao/core/util/h$a;

    invoke-static {v0, v1}, Lcom/qbao/core/util/h$a;->a(Lcom/qbao/core/util/h$a;Lcom/qbao/core/util/h$a;)V

    .line 79
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    invoke-static {v0}, Lcom/qbao/core/util/h$a;->c(Lcom/qbao/core/util/h$a;)J

    move-result-wide v2

    .line 81
    const/4 v0, 0x3

    ushr-long v0, v2, v0

    const-wide/16 v4, 0x3f

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 83
    const/16 v1, 0x38

    if-ge v0, v1, :cond_48

    rsub-int/lit8 v0, v0, 0x38

    .line 85
    :goto_23
    iget-object v1, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    sget-object v4, Lcom/qbao/core/util/h;->cf:[B

    invoke-direct {p0, v1, v4, v6, v0}, Lcom/qbao/core/util/h;->a(Lcom/qbao/core/util/h$a;[BII)V

    .line 87
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    invoke-static {v2, v3}, Lcom/qbao/core/util/h;->b(J)[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v6, v2}, Lcom/qbao/core/util/h;->a(Lcom/qbao/core/util/h$a;[BII)V

    .line 88
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qbao/core/util/h$a;->a(Lcom/qbao/core/util/h$a;Z)V

    .line 91
    :cond_3b
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    invoke-static {v0}, Lcom/qbao/core/util/h$a;->d(Lcom/qbao/core/util/h$a;)[I

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/qbao/core/util/h;->a([II)[B

    move-result-object v0

    return-object v0

    .line 83
    :cond_48
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_23
.end method

.method public R()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/qbao/core/util/h;->Q()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/core/util/h;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b([BI)V
    .registers 4

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/qbao/core/util/h;->update([BII)V

    .line 373
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qbao/core/util/h;->update([B)V

    .line 423
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/qbao/core/util/h;->cc:Lcom/qbao/core/util/h$a;

    invoke-static {v0}, Lcom/qbao/core/util/h$a;->e(Lcom/qbao/core/util/h$a;)V

    .line 276
    iget-object v0, p0, Lcom/qbao/core/util/h;->cd:Lcom/qbao/core/util/h$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qbao/core/util/h$a;->a(Lcom/qbao/core/util/h$a;Z)V

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/qbao/core/util/h;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 394
    new-array v0, v2, [B

    .line 395
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 396
    invoke-virtual {p0, v0, v2}, Lcom/qbao/core/util/h;->b([BI)V

    .line 397
    return-void
.end method

.method public update([B)V
    .registers 4

    .prologue
    .line 383
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/qbao/core/util/h;->update([BII)V

    .line 384
    return-void
.end method

.method public update([BII)V
    .registers 5

    .prologue
    .line 357
    iget-object v0, p0, Lcom/qbao/core/util/h;->cc:Lcom/qbao/core/util/h$a;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/qbao/core/util/h;->a(Lcom/qbao/core/util/h$a;[BII)V

    .line 358
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qbao/core/util/h;->update([B)V

    .line 410
    return-void
.end method
