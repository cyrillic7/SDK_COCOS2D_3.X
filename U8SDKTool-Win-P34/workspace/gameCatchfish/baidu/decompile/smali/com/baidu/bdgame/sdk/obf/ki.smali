.class public Lcom/baidu/bdgame/sdk/obf/ki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x80

    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_60

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    .line 23
    new-array v0, v3, [B

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    .line 25
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_1a

    .line 26
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 29
    :cond_1a
    const/16 v0, 0x41

    :goto_1c
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2a

    .line 30
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 33
    :cond_2a
    const/16 v0, 0x61

    :goto_2c
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3c

    .line 34
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 37
    :cond_3c
    const/16 v0, 0x30

    :goto_3e
    const/16 v1, 0x39

    if-gt v0, v1, :cond_4e

    .line 38
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 41
    :cond_4e
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 42
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 43
    return-void

    .line 6
    nop

    :array_60
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
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_7

    .line 261
    :cond_6
    :goto_6
    return v0

    .line 255
    :cond_7
    if-ltz p0, :cond_d

    const/16 v2, 0x80

    if-lt p0, v2, :cond_f

    :cond_d
    move v0, v1

    .line 256
    goto :goto_6

    .line 257
    :cond_f
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    aget-byte v2, v2, p0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move v0, v1

    .line 258
    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x3d

    .line 174
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ki;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_6f

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_21
    move v2, v1

    .line 184
    :goto_22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-ge v2, v4, :cond_95

    .line 185
    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    .line 186
    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    .line 187
    sget-object v6, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v6, v6, v7

    .line 188
    sget-object v7, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    .line 190
    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 191
    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 192
    add-int/lit8 v4, v1, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 184
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_22

    .line 178
    :cond_6f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_8a

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_21

    .line 181
    :cond_8a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto :goto_21

    .line 195
    :cond_95
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_c9

    .line 196
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    .line 197
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    .line 199
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 218
    :goto_c8
    return-object v0

    .line 200
    :cond_c9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_116

    .line 201
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    .line 202
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    .line 203
    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    .line 205
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 206
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_c8

    .line 208
    :cond_116
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    .line 209
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    .line 210
    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    .line 211
    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v5, v3

    .line 213
    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 214
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 215
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_c8
.end method

.method public static a([B)[B
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x3d

    .line 48
    array-length v0, p0

    rem-int/lit8 v3, v0, 0x3

    .line 50
    if-nez v3, :cond_5c

    .line 51
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 56
    :goto_f
    array-length v2, p0

    sub-int v4, v2, v3

    move v2, v1

    .line 61
    :goto_13
    if-ge v2, v4, :cond_66

    .line 62
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    .line 63
    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 64
    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    .line 66
    sget-object v8, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    ushr-int/lit8 v9, v5, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v0, v1

    .line 67
    add-int/lit8 v8, v1, 0x1

    sget-object v9, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v10, v6, 0x4

    or-int/2addr v5, v10

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v9, v5

    aput-byte v5, v0, v8

    .line 68
    add-int/lit8 v5, v1, 0x2

    sget-object v8, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v9, v7, 0x6

    or-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v0, v5

    .line 69
    add-int/lit8 v5, v1, 0x3

    sget-object v6, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    .line 61
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    .line 53
    :cond_5c
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    goto :goto_f

    .line 78
    :cond_66
    packed-switch v3, :pswitch_data_d4

    .line 110
    :goto_69
    :pswitch_69
    return-object v0

    .line 83
    :pswitch_6a
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 84
    ushr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x3f

    .line 85
    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    .line 87
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    .line 88
    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    sget-object v3, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    .line 89
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aput-byte v11, v0, v1

    .line 90
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v11, v0, v1

    goto :goto_69

    .line 95
    :pswitch_96
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 96
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 98
    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 99
    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v4, v2, 0x4

    or-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    .line 100
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    .line 102
    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    aget-byte v3, v5, v3

    aput-byte v3, v0, v4

    .line 103
    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    .line 104
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    sget-object v3, Lcom/baidu/bdgame/sdk/obf/ki;->a:[B

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    .line 105
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v11, v0, v1

    goto :goto_69

    .line 78
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_69
        :pswitch_6a
        :pswitch_96
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 239
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 243
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_21

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ki;->a(B)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 249
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x3d

    .line 120
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ki;->d([B)[B

    move-result-object v3

    .line 122
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v3, v0

    if-ne v0, v9, :cond_5c

    .line 123
    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_19
    move v2, v1

    .line 130
    :goto_1a
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    if-ge v2, v4, :cond_77

    .line 131
    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    aget-byte v5, v3, v2

    aget-byte v4, v4, v5

    .line 132
    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    aget-byte v5, v5, v6

    .line 133
    sget-object v6, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v3, v7

    aget-byte v6, v6, v7

    .line 134
    sget-object v7, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, v3, v8

    aget-byte v7, v7, v8

    .line 136
    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 137
    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 138
    add-int/lit8 v4, v1, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 130
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_1a

    .line 124
    :cond_5c
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    if-ne v0, v9, :cond_6f

    .line 125
    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_19

    .line 127
    :cond_6f
    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto :goto_19

    .line 141
    :cond_77
    array-length v1, v3

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, v3, v1

    if-ne v1, v9, :cond_9c

    .line 142
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v2, v3

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, v3, v2

    aget-byte v1, v1, v2

    .line 143
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-byte v3, v3, v4

    aget-byte v2, v2, v3

    .line 145
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 164
    :goto_9b
    return-object v0

    .line 146
    :cond_9c
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v3, v1

    if-ne v1, v9, :cond_d5

    .line 147
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v2, v3

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, v3, v2

    aget-byte v1, v1, v2

    .line 148
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-byte v4, v3, v4

    aget-byte v2, v2, v4

    .line 149
    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget-byte v3, v3, v5

    aget-byte v3, v4, v3

    .line 151
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 152
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_9b

    .line 154
    :cond_d5
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v2, v3

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, v3, v2

    aget-byte v1, v1, v2

    .line 155
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-byte v4, v3, v4

    aget-byte v2, v2, v4

    .line 156
    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, v3, v5

    aget-byte v4, v4, v5

    .line 157
    sget-object v5, Lcom/baidu/bdgame/sdk/obf/ki;->b:[B

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v3, v3, v6

    aget-byte v3, v5, v3

    .line 159
    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 160
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_9b
.end method

.method public static c([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 275
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ki;->a([B)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 276
    :catch_c
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static d([B)[B
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 222
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 225
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    .line 226
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ki;->a(B)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 227
    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v0

    aput-byte v5, v4, v2

    move v2, v3

    .line 225
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 231
    :cond_1b
    new-array v0, v2, [B

    .line 233
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    return-object v0
.end method
