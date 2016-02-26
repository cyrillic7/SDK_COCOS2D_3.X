.class public Lcom/tencent/msdk/tools/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static final encodeTable:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C

.field private static final lead2byte:C

.field private static final lead4byte:C

.field private static final lead6byte:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 5
    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/tencent/msdk/tools/Base64Util;->last2byte:C

    .line 7
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/tencent/msdk/tools/Base64Util;->last4byte:C

    .line 9
    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/tencent/msdk/tools/Base64Util;->last6byte:C

    .line 11
    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/tencent/msdk/tools/Base64Util;->lead6byte:C

    .line 13
    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/tencent/msdk/tools/Base64Util;->lead4byte:C

    .line 15
    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/tencent/msdk/tools/Base64Util;->lead2byte:C

    .line 17
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_42

    sput-object v0, Lcom/tencent/msdk/tools/Base64Util;->encodeTable:[C

    return-void

    nop

    :array_42
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 9
    .param p0, "from"    # [B

    .prologue
    .line 29
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p0

    int-to-double v4, v4

    const-wide v6, 0x3ff570a3d70a3d71L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 30
    .local v3, "to":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 31
    .local v2, "num":I
    const/4 v0, 0x0

    .line 32
    .local v0, "currentByte":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v4, p0

    if-ge v1, v4, :cond_71

    .line 33
    rem-int/lit8 v2, v2, 0x8

    .line 34
    :goto_18
    const/16 v4, 0x8

    if-ge v2, v4, :cond_6e

    .line 35
    packed-switch v2, :pswitch_data_90

    .line 58
    :cond_1f
    :goto_1f
    :pswitch_1f
    sget-object v4, Lcom/tencent/msdk/tools/Base64Util;->encodeTable:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    add-int/lit8 v2, v2, 0x6

    goto :goto_18

    .line 37
    :pswitch_29
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/msdk/tools/Base64Util;->lead6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 38
    ushr-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 39
    goto :goto_1f

    .line 41
    :pswitch_33
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/msdk/tools/Base64Util;->last6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 42
    goto :goto_1f

    .line 44
    :pswitch_3a
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/msdk/tools/Base64Util;->last4byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 45
    shl-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 46
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_1f

    .line 47
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcom/tencent/msdk/tools/Base64Util;->lead2byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_1f

    .line 51
    :pswitch_54
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/msdk/tools/Base64Util;->last2byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 52
    shl-int/lit8 v4, v0, 0x4

    int-to-char v0, v4

    .line 53
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_1f

    .line 54
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcom/tencent/msdk/tools/Base64Util;->lead4byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_1f

    .line 32
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 62
    :cond_71
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_8b

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v1, v4, 0x4

    :goto_81
    if-lez v1, :cond_8b

    .line 64
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    .line 67
    :cond_8b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 35
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1f
        :pswitch_33
        :pswitch_1f
        :pswitch_3a
        :pswitch_1f
        :pswitch_54
    .end packed-switch
.end method
