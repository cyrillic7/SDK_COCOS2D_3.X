.class public final Lcom/alipay/sdk/encrypt/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x80

.field private static final b:I = 0x40

.field private static final c:I = 0x18

.field private static final d:I = 0x8

.field private static final e:I = 0x10

.field private static final f:I = 0x4

.field private static final g:I = -0x80

.field private static final h:C = '='

.field private static final i:[B

.field private static final j:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    .line 20
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    move v1, v0

    .line 23
    :goto_16
    const/16 v2, 0x80

    if-ge v1, v2, :cond_22

    .line 24
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 26
    :cond_22
    const/16 v1, 0x5a

    :goto_24
    const/16 v2, 0x41

    if-lt v1, v2, :cond_32

    .line 27
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 29
    :cond_32
    const/16 v1, 0x7a

    :goto_34
    const/16 v2, 0x61

    if-lt v1, v2, :cond_44

    .line 30
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 33
    :cond_44
    const/16 v1, 0x39

    :goto_46
    const/16 v2, 0x30

    if-lt v1, v2, :cond_56

    .line 34
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 37
    :cond_56
    sget-object v1, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aput-byte v7, v1, v5

    .line 38
    sget-object v1, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 40
    :goto_5f
    const/16 v2, 0x19

    if-gt v1, v2, :cond_6d

    .line 41
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 44
    :cond_6d
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_71
    const/16 v3, 0x33

    if-gt v2, v3, :cond_81

    .line 45
    sget-object v3, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 48
    :cond_81
    const/16 v1, 0x34

    :goto_83
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_93

    .line 49
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 51
    :cond_93
    sget-object v0, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    aput-char v5, v0, v7

    .line 52
    sget-object v0, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    aput-char v6, v0, v8

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 261
    if-nez p0, :cond_5

    move v1, v2

    .line 273
    :cond_4
    return v1

    .line 267
    :cond_5
    array-length v4, p0

    move v3, v2

    move v1, v2

    .line 268
    :goto_8
    if-ge v3, v4, :cond_4

    .line 269
    aget-char v0, p0, v3

    const/16 v5, 0x20

    if-eq v0, v5, :cond_1c

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1c

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1c

    const/16 v5, 0x9

    if-ne v0, v5, :cond_2a

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    if-nez v0, :cond_2c

    .line 270
    add-int/lit8 v0, v1, 0x1

    aget-char v5, p0, v3

    aput-char v5, p0, v1

    .line 268
    :goto_25
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_8

    :cond_2a
    move v0, v2

    .line 269
    goto :goto_1d

    :cond_2c
    move v0, v1

    goto :goto_25
.end method

.method public static a([B)Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 77
    if-nez p0, :cond_7

    .line 78
    const/4 v0, 0x0

    .line 149
    :goto_6
    return-object v0

    .line 81
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 82
    if-nez v0, :cond_f

    .line 83
    const-string v0, ""

    goto :goto_6

    .line 86
    :cond_f
    rem-int/lit8 v7, v0, 0x18

    .line 87
    div-int/lit8 v1, v0, 0x18

    .line 88
    if-eqz v7, :cond_76

    add-int/lit8 v0, v1, 0x1

    .line 90
    :goto_17
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 99
    :goto_1d
    if-ge v4, v1, :cond_8c

    .line 100
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 101
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 102
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 105
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 106
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 108
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_78

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 110
    :goto_39
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_7f

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 112
    :goto_41
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_86

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 116
    :goto_48
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 117
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 118
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 119
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 99
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_1d

    :cond_76
    move v0, v1

    .line 88
    goto :goto_17

    .line 108
    :cond_78
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_39

    .line 110
    :cond_7f
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_41

    .line 112
    :cond_86
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_48

    .line 123
    :cond_8c
    const/16 v0, 0x8

    if-ne v7, v0, :cond_c1

    .line 124
    aget-byte v0, p0, v2

    .line 125
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 126
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_bb

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 128
    :goto_9c
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 129
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 130
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 131
    aput-char v14, v8, v1

    .line 149
    :cond_b4
    :goto_b4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_6

    .line 126
    :cond_bb
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_9c

    .line 132
    :cond_c1
    const/16 v0, 0x10

    if-ne v7, v0, :cond_b4

    .line 133
    aget-byte v0, p0, v2

    .line 134
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 135
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 136
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 138
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_100

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 140
    :goto_d9
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_107

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 143
    :goto_e0
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 144
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 145
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->j:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 146
    aput-char v14, v8, v0

    goto :goto_b4

    .line 138
    :cond_100
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_d9

    .line 140
    :cond_107
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_e0
.end method

.method private static a(C)Z
    .registers 2

    .prologue
    .line 57
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    if-nez p0, :cond_6

    move-object v0, v3

    .line 250
    :goto_5
    return-object v0

    .line 165
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 167
    if-nez v6, :cond_13

    move v1, v2

    .line 169
    :cond_d
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_3a

    move-object v0, v3

    .line 170
    goto :goto_5

    .line 167
    :cond_13
    array-length v5, v6

    move v4, v2

    move v1, v2

    :goto_16
    if-ge v4, v5, :cond_d

    aget-char v0, v6, v4

    const/16 v7, 0x20

    if-eq v0, v7, :cond_2a

    const/16 v7, 0xd

    if-eq v0, v7, :cond_2a

    const/16 v7, 0xa

    if-eq v0, v7, :cond_2a

    const/16 v7, 0x9

    if-ne v0, v7, :cond_38

    :cond_2a
    const/4 v0, 0x1

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
    move v0, v2

    goto :goto_2b

    .line 173
    :cond_3a
    div-int/lit8 v7, v1, 0x4

    .line 175
    if-nez v7, :cond_41

    .line 176
    new-array v0, v2, [B

    goto :goto_5

    .line 186
    :cond_41
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    .line 188
    :goto_48
    add-int/lit8 v8, v7, -0x1

    if-ge v5, v8, :cond_a9

    .line 190
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v1

    if-eqz v1, :cond_74

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v10

    if-eqz v10, :cond_74

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    invoke-static {v11}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v1

    if-eqz v1, :cond_74

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v12

    if-nez v12, :cond_76

    :cond_74
    move-object v0, v3

    .line 194
    goto :goto_5

    .line 197
    :cond_76
    sget-object v12, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v9, v12, v9

    .line 198
    sget-object v12, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v8, v12, v8

    .line 199
    sget-object v12, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v11, v12, v11

    .line 200
    sget-object v12, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v10, v12, v10

    .line 202
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 203
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    .line 204
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 207
    :cond_a9
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v8

    if-eqz v8, :cond_bd

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v9

    if-nez v9, :cond_c0

    :cond_bd
    move-object v0, v3

    .line 209
    goto/16 :goto_5

    .line 212
    :cond_c0
    sget-object v9, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v9, v9, v1

    .line 213
    sget-object v1, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v7, v1, v7

    .line 215
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 216
    aget-char v1, v6, v1

    .line 217
    invoke-static {v8}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-static {v1}, Lcom/alipay/sdk/encrypt/Base64;->c(C)Z

    move-result v6

    if-nez v6, :cond_141

    .line 218
    :cond_da
    invoke-static {v8}, Lcom/alipay/sdk/encrypt/Base64;->b(C)Z

    move-result v6

    if-eqz v6, :cond_103

    invoke-static {v1}, Lcom/alipay/sdk/encrypt/Base64;->b(C)Z

    move-result v6

    if-eqz v6, :cond_103

    .line 219
    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_ed

    move-object v0, v3

    .line 221
    goto/16 :goto_5

    .line 223
    :cond_ed
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 224
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    .line 226
    goto/16 :goto_5

    .line 227
    :cond_103
    invoke-static {v8}, Lcom/alipay/sdk/encrypt/Base64;->b(C)Z

    move-result v6

    if-nez v6, :cond_13e

    invoke-static {v1}, Lcom/alipay/sdk/encrypt/Base64;->b(C)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 228
    sget-object v1, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v6, v1, v8

    .line 229
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_11a

    move-object v0, v3

    .line 231
    goto/16 :goto_5

    .line 233
    :cond_11a
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 234
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 236
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 237
    goto/16 :goto_5

    :cond_13e
    move-object v0, v3

    .line 239
    goto/16 :goto_5

    .line 242
    :cond_141
    sget-object v2, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v2, v2, v8

    .line 243
    sget-object v3, Lcom/alipay/sdk/encrypt/Base64;->i:[B

    aget-byte v1, v3, v1

    .line 244
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 245
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 246
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_5

    :cond_169
    move v0, v1

    goto/16 :goto_33
.end method

.method private static b(C)Z
    .registers 2

    .prologue
    .line 61
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static c(C)Z
    .registers 3

    .prologue
    .line 65
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/alipay/sdk/encrypt/Base64;->i:[B

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
