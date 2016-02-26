.class public Lcom/baidu/bdgame/sdk/obf/km;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 114
    array-length v2, p0

    .line 115
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_16

    .line 116
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 118
    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(F)[B
    .registers 2

    .prologue
    .line 85
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/km;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(I)[B
    .registers 4

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 20
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 21
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 22
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 23
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 24
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)[B
    .registers 4

    .prologue
    .line 99
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-ge v0, p1, :cond_1b

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 102
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(S)[B
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 52
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 53
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 54
    return-object v0
.end method

.method public static b([B)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 140
    move v1, v0

    .line 141
    :goto_3
    if-ge v1, v3, :cond_19

    .line 142
    aget-byte v2, p0, v1

    if-ltz v2, :cond_13

    .line 143
    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    .line 147
    :goto_c
    mul-int/lit16 v2, v0, 0x100

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_3

    .line 145
    :cond_13
    add-int/lit16 v0, v0, 0x100

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    goto :goto_c

    .line 149
    :cond_19
    aget-byte v1, p0, v3

    if-ltz v1, :cond_21

    .line 150
    aget-byte v1, p0, v3

    add-int/2addr v0, v1

    .line 154
    :goto_20
    return v0

    .line 152
    :cond_21
    add-int/lit16 v0, v0, 0x100

    aget-byte v1, p0, v3

    add-int/2addr v0, v1

    goto :goto_20
.end method

.method public static b(F)[B
    .registers 2

    .prologue
    .line 92
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/km;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(I)[B
    .registers 4

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 36
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 38
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    return-object v0
.end method

.method public static b(S)[B
    .registers 4

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 66
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 68
    return-object v0
.end method

.method public static c(F)F
    .registers 2

    .prologue
    .line 324
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/km;->a(F)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/km;->f([B)F

    move-result v0

    .line 325
    return v0
.end method

.method public static c(I)I
    .registers 2

    .prologue
    .line 300
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/km;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/km;->b([B)I

    move-result v0

    .line 301
    return v0
.end method

.method public static c([B)I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 165
    move v1, v2

    move v0, v2

    .line 166
    :goto_3
    const/4 v3, 0x3

    if-ge v1, v3, :cond_20

    .line 167
    rsub-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    if-ltz v3, :cond_18

    .line 168
    rsub-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    add-int/2addr v0, v3

    .line 172
    :goto_11
    mul-int/lit16 v3, v0, 0x100

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_3

    .line 170
    :cond_18
    add-int/lit16 v0, v0, 0x100

    rsub-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    add-int/2addr v0, v3

    goto :goto_11

    .line 174
    :cond_20
    aget-byte v1, p0, v2

    if-ltz v1, :cond_28

    .line 175
    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    .line 179
    :goto_27
    return v0

    .line 177
    :cond_28
    add-int/lit16 v0, v0, 0x100

    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    goto :goto_27
.end method

.method public static c(S)S
    .registers 2

    .prologue
    .line 312
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/km;->a(S)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/km;->d([B)S

    move-result v0

    .line 313
    return v0
.end method

.method public static d([B)S
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    .line 191
    aget-byte v0, p0, v1

    if-ltz v0, :cond_14

    .line 192
    aget-byte v0, p0, v1

    add-int/2addr v0, v1

    .line 196
    :goto_9
    mul-int/lit16 v0, v0, 0x100

    .line 197
    aget-byte v1, p0, v2

    if-ltz v1, :cond_19

    .line 198
    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    .line 202
    :goto_12
    int-to-short v0, v0

    .line 203
    return v0

    .line 194
    :cond_14
    aget-byte v0, p0, v1

    add-int/lit16 v0, v0, 0x100

    goto :goto_9

    .line 200
    :cond_19
    add-int/lit16 v0, v0, 0x100

    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method public static e([B)S
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    .line 215
    aget-byte v0, p0, v1

    if-ltz v0, :cond_14

    .line 216
    aget-byte v0, p0, v1

    add-int/2addr v0, v2

    .line 220
    :goto_9
    mul-int/lit16 v0, v0, 0x100

    .line 221
    aget-byte v1, p0, v2

    if-ltz v1, :cond_19

    .line 222
    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    .line 226
    :goto_12
    int-to-short v0, v0

    .line 227
    return v0

    .line 218
    :cond_14
    aget-byte v0, p0, v1

    add-int/lit16 v0, v0, 0x100

    goto :goto_9

    .line 224
    :cond_19
    add-int/lit16 v0, v0, 0x100

    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method public static f([B)F
    .registers 3

    .prologue
    .line 238
    .line 240
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 242
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static g([B)F
    .registers 3

    .prologue
    .line 253
    .line 255
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 257
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static h([B)[B
    .registers 6

    .prologue
    .line 264
    array-length v1, p0

    .line 265
    new-array v2, v1, [B

    .line 266
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_11

    .line 267
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p0, v0

    aput-byte v4, v2, v3

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 269
    :cond_11
    return-object v2
.end method
