.class public Lcom/tencent/msdk/tools/StrBinaryTurn;
.super Ljava/lang/Object;
.source "StrBinaryTurn.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BinstrToChar(Ljava/lang/String;)C
    .registers 5
    .param p0, "binStr"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/tencent/msdk/tools/StrBinaryTurn;->BinstrToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 50
    .local v2, "temp":[I
    const/4 v1, 0x0

    .line 51
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 52
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget v3, v2, v3

    shl-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 54
    :cond_14
    int-to-char v3, v1

    return v3
.end method

.method private static BinstrToIntArray(Ljava/lang/String;)[I
    .registers 5
    .param p0, "binStr"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 69
    .local v2, "temp":[C
    array-length v3, v2

    new-array v1, v3, [I

    .line 70
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 71
    aget-char v3, v2, v0

    add-int/lit8 v3, v3, -0x30

    aput v3, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 73
    :cond_14
    return-object v1
.end method

.method public static BinstrToStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "binStr"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/tencent/msdk/tools/StrBinaryTurn;->StrToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "tempStr":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [C

    .line 38
    .local v1, "tempChar":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, v2

    if-ge v0, v3, :cond_16

    .line 39
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/tencent/msdk/tools/StrBinaryTurn;->BinstrToChar(Ljava/lang/String;)C

    move-result v3

    aput-char v3, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 41
    :cond_16
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static StrToBinstr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 25
    .local v2, "strChar":[C
    const-string v1, ""

    .line 26
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_2a

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 29
    :cond_2a
    return-object v1
.end method

.method private static StrToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
