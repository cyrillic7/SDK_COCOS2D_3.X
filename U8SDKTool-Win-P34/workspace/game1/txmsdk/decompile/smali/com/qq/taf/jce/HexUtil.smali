.class public Lcom/qq/taf/jce/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field private static final digits:[C

.field public static final emptybytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/qq/taf/jce/HexUtil;->digits:[C

    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qq/taf/jce/HexUtil;->emptybytes:[B

    return-void

    .line 7
    nop

    :array_10
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2HexStr(B)Ljava/lang/String;
    .registers 5
    .param p0, "b"    # B

    .prologue
    .line 21
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 22
    .local v0, "buf":[C
    const/4 v1, 0x1

    sget-object v2, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 23
    ushr-int/lit8 v1, p0, 0x4

    int-to-byte p0, v1

    .line 24
    const/4 v1, 0x0

    sget-object v2, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static bytes2HexStr(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p0, "bs"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    .local v0, "bs2":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 37
    .local v1, "temp":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-static {v1}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytes2HexStr([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 47
    if-eqz p0, :cond_5

    array-length v3, p0

    if-nez v3, :cond_7

    .line 49
    :cond_5
    const/4 v3, 0x0

    .line 60
    :goto_6
    return-object v3

    .line 52
    :cond_7
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 53
    .local v1, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 55
    aget-byte v0, p0, v2

    .line 56
    .local v0, "b":B
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 57
    ushr-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 58
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 60
    .end local v0    # "b":B
    :cond_30
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static char2Byte(C)B
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 87
    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 89
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 101
    :goto_b
    return v0

    .line 91
    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1a

    .line 93
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    .line 95
    :cond_1a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_28

    const/16 v0, 0x46

    if-gt p0, v0, :cond_28

    .line 97
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    .line 101
    :cond_28
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static hexStr2Byte(Ljava/lang/String;)B
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 70
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/qq/taf/jce/HexUtil;->char2Byte(C)B

    move-result v0

    .line 76
    :cond_12
    return v0
.end method

.method public static hexStr2Bytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p0, :cond_a

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 109
    :cond_a
    sget-object v0, Lcom/qq/taf/jce/HexUtil;->emptybytes:[B

    .line 119
    :cond_c
    return-object v0

    .line 112
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 113
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v4, v0

    if-ge v2, v4, :cond_c

    .line 115
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 116
    .local v1, "high":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 117
    .local v3, "low":C
    invoke-static {v1}, Lcom/qq/taf/jce/HexUtil;->char2Byte(C)B

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3}, Lcom/qq/taf/jce/HexUtil;->char2Byte(C)B

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method
