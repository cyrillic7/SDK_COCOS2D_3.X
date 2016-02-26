.class public final Lcom/atet/api/pay/ui/service/l1l111lll1;
.super Ljava/lang/Object;


# static fields
.field private static final l1l111lll1:[B

.field private static final l1lll1l1l1:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    move v1, v0

    :goto_16
    const/16 v2, 0x80

    if-lt v1, v2, :cond_50

    const/16 v1, 0x5a

    :goto_1c
    const/16 v2, 0x41

    if-ge v1, v2, :cond_58

    const/16 v1, 0x7a

    :goto_22
    const/16 v2, 0x61

    if-ge v1, v2, :cond_62

    const/16 v1, 0x39

    :goto_28
    const/16 v2, 0x30

    if-ge v1, v2, :cond_6e

    sget-object v1, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aput-byte v7, v1, v5

    sget-object v1, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_35
    const/16 v2, 0x19

    if-le v1, v2, :cond_7a

    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_3d
    const/16 v3, 0x33

    if-le v2, v3, :cond_84

    const/16 v1, 0x34

    :goto_43
    const/16 v2, 0x3d

    if-le v1, v2, :cond_90

    sget-object v0, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    aput-char v5, v0, v7

    sget-object v0, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    aput-char v6, v0, v8

    return-void

    :cond_50
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_58
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_62
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_6e
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    :cond_7a
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_84
    sget-object v3, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_90
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method

.method public static l1l111lll1([B)Ljava/lang/String;
    .registers 16

    const/16 v14, 0x3d

    const/4 v2, 0x0

    if-nez p0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_f

    const-string v0, ""

    goto :goto_6

    :cond_f
    rem-int/lit8 v7, v0, 0x18

    div-int/lit8 v1, v0, 0x18

    if-eqz v7, :cond_4d

    add-int/lit8 v0, v1, 0x1

    :goto_17
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    :goto_1d
    if-lt v4, v1, :cond_4f

    const/16 v0, 0x8

    if-ne v7, v0, :cond_c2

    aget-byte v0, p0, v2

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_bb

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_2f
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    aput-char v14, v8, v1

    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    :cond_4d
    move v0, v1

    goto :goto_17

    :cond_4f
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_a7

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    :goto_69
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_ae

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    :goto_71
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_b5

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    :goto_78
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto/16 :goto_1d

    :cond_a7
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_69

    :cond_ae
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_71

    :cond_b5
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_78

    :cond_bb
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_2f

    :cond_c2
    const/16 v0, 0x10

    if-ne v7, v0, :cond_47

    aget-byte v0, p0, v2

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_102

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    :goto_da
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_109

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    :goto_e1
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    aput-char v14, v8, v0

    goto/16 :goto_47

    :cond_102
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_da

    :cond_109
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_e1
.end method

.method private static l1l111lll1(C)Z
    .registers 2

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static l1l111lll1(Ljava/lang/String;)[B
    .registers 15

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_6

    move-object v0, v3

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    if-nez v6, :cond_13

    move v1, v2

    :cond_d
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_3a

    move-object v0, v3

    goto :goto_5

    :cond_13
    array-length v5, v6

    move v4, v2

    move v1, v2

    :goto_16
    if-ge v4, v5, :cond_d

    aget-char v0, v6, v4

    const/16 v7, 0x20

    if-eq v0, v7, :cond_38

    const/16 v7, 0xd

    if-eq v0, v7, :cond_38

    const/16 v7, 0xa

    if-eq v0, v7, :cond_38

    const/16 v7, 0x9

    if-eq v0, v7, :cond_38

    move v0, v2

    :goto_2b
    if-nez v0, :cond_169

    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    :goto_33
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_16

    :cond_38
    const/4 v0, 0x1

    goto :goto_2b

    :cond_3a
    div-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_41

    new-array v0, v2, [B

    goto :goto_5

    :cond_41
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    :goto_48
    add-int/lit8 v8, v7, -0x1

    if-lt v5, v8, :cond_62

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v8

    if-eqz v8, :cond_60

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v9

    if-nez v9, :cond_c0

    :cond_60
    move-object v0, v3

    goto :goto_5

    :cond_62
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v1

    if-eqz v1, :cond_8a

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v10

    if-eqz v10, :cond_8a

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    invoke-static {v11}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v1

    if-eqz v1, :cond_8a

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v12

    if-nez v12, :cond_8d

    :cond_8a
    move-object v0, v3

    goto/16 :goto_5

    :cond_8d
    sget-object v12, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v9, v12, v9

    sget-object v12, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v8, v12, v8

    sget-object v12, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v11, v12, v11

    sget-object v12, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v10, v12, v10

    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_c0
    sget-object v9, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v9, v9, v1

    sget-object v1, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v7, v1, v7

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    aget-char v1, v6, v1

    invoke-static {v8}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-static {v1}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1lll1l1l1(C)Z

    move-result v6

    if-nez v6, :cond_141

    :cond_da
    invoke-static {v8}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1(C)Z

    move-result v6

    if-eqz v6, :cond_103

    invoke-static {v1}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1(C)Z

    move-result v6

    if-eqz v6, :cond_103

    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_ed

    move-object v0, v3

    goto/16 :goto_5

    :cond_ed
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    goto/16 :goto_5

    :cond_103
    invoke-static {v8}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1(C)Z

    move-result v6

    if-nez v6, :cond_13e

    invoke-static {v1}, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1(C)Z

    move-result v1

    if-eqz v1, :cond_13e

    sget-object v1, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v6, v1, v8

    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_11a

    move-object v0, v3

    goto/16 :goto_5

    :cond_11a
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    goto/16 :goto_5

    :cond_13e
    move-object v0, v3

    goto/16 :goto_5

    :cond_141
    sget-object v2, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v1, v3, v1

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_5

    :cond_169
    move v0, v1

    goto/16 :goto_33
.end method

.method private static l1lll1l1l1(C)Z
    .registers 3

    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/atet/api/pay/ui/service/l1l111lll1;->l1l111lll1:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
