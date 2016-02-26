.class public final Lcom/qq/taf/jce/JceUtil;
.super Ljava/lang/Object;
.source "JceUtil.java"


# static fields
.field private static final highDigits:[B

.field private static final iConstant:I = 0x25

.field private static final iTotal:I = 0x11

.field private static final lowDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x100

    .line 375
    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_24

    .line 378
    .local v0, "digits":[B
    new-array v1, v5, [B

    .line 379
    .local v1, "high":[B
    new-array v3, v5, [B

    .line 381
    .local v3, "low":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v5, :cond_1f

    .line 382
    ushr-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    aput-byte v4, v1, v2

    .line 383
    and-int/lit8 v4, v2, 0xf

    aget-byte v4, v0, v4

    aput-byte v4, v3, v2

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 386
    :cond_1f
    sput-object v1, Lcom/qq/taf/jce/JceUtil;->highDigits:[B

    .line 387
    sput-object v3, Lcom/qq/taf/jce/JceUtil;->lowDigits:[B

    .line 388
    return-void

    .line 375
    :array_24
    .array-data 1
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(BB)I
    .registers 3
    .param p0, "l"    # B
    .param p1, "r"    # B

    .prologue
    .line 65
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static compareTo(CC)I
    .registers 3
    .param p0, "l"    # C
    .param p1, "r"    # C

    .prologue
    .line 69
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static compareTo(DD)I
    .registers 6
    .param p0, "l"    # D
    .param p2, "r"    # D

    .prologue
    .line 89
    cmpg-double v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmpl-double v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static compareTo(FF)I
    .registers 3
    .param p0, "l"    # F
    .param p1, "r"    # F

    .prologue
    .line 85
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmpl-float v0, p0, p1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static compareTo(II)I
    .registers 3
    .param p0, "l"    # I
    .param p1, "r"    # I

    .prologue
    .line 77
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static compareTo(JJ)I
    .registers 6
    .param p0, "l"    # J
    .param p2, "r"    # J

    .prologue
    .line 81
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "l":Ljava/lang/Comparable;, "TT;"
    .local p1, "r":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static compareTo(Ljava/util/List;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "r":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 98
    .local v2, "ri":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 100
    .local v1, "n":I
    if-eqz v1, :cond_8

    .line 103
    .end local v1    # "n":I
    :goto_24
    return v1

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(ZZ)I

    move-result v1

    goto :goto_24
.end method

.method public static compareTo(SS)I
    .registers 3
    .param p0, "l"    # S
    .param p1, "r"    # S

    .prologue
    .line 73
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static compareTo(ZZ)I
    .registers 5
    .param p0, "l"    # Z
    .param p1, "r"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-eqz p0, :cond_a

    move v2, v0

    :goto_5
    if-eqz p1, :cond_c

    :goto_7
    sub-int v0, v2, v0

    return v0

    :cond_a
    move v2, v1

    goto :goto_5

    :cond_c
    move v0, v1

    goto :goto_7
.end method

.method public static compareTo([B[B)I
    .registers 7
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 126
    aget-byte v3, p0, v0

    aget-byte v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(BB)I

    move-result v1

    .line 127
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 130
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 125
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([C[C)I
    .registers 7
    .param p0, "l"    # [C
    .param p1, "r"    # [C

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 135
    aget-char v3, p0, v0

    aget-char v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(CC)I

    move-result v1

    .line 136
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 139
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 134
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 139
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([D[D)I
    .registers 10
    .param p0, "l"    # [D
    .param p1, "r"    # [D

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 180
    aget-wide v4, p0, v0

    aget-wide v6, p1, v2

    invoke-static {v4, v5, v6, v7}, Lcom/qq/taf/jce/JceUtil;->compareTo(DD)I

    move-result v1

    .line 181
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 184
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 179
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 184
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([F[F)I
    .registers 7
    .param p0, "l"    # [F
    .param p1, "r"    # [F

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 171
    aget v3, p0, v0

    aget v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(FF)I

    move-result v1

    .line 172
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 175
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 170
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 175
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([I[I)I
    .registers 7
    .param p0, "l"    # [I
    .param p1, "r"    # [I

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 153
    aget v3, p0, v0

    aget v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    .line 154
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 157
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 152
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([J[J)I
    .registers 10
    .param p0, "l"    # [J
    .param p1, "r"    # [J

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 162
    aget-wide v4, p0, v0

    aget-wide v6, p1, v2

    invoke-static {v4, v5, v6, v7}, Lcom/qq/taf/jce/JceUtil;->compareTo(JJ)I

    move-result v1

    .line 163
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 166
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 161
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>([TT;[TT;)I"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "l":[Ljava/lang/Comparable;, "[TT;"
    .local p1, "r":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 108
    aget-object v3, p0, v0

    aget-object v4, p1, v2

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 109
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 112
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 107
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([S[S)I
    .registers 7
    .param p0, "l"    # [S
    .param p1, "r"    # [S

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 144
    aget-short v3, p0, v0

    aget-short v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(SS)I

    move-result v1

    .line 145
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 148
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 143
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static compareTo([Z[Z)I
    .registers 7
    .param p0, "l"    # [Z
    .param p1, "r"    # [Z

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, "li":I
    const/4 v2, 0x0

    .local v2, "ri":I
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_18

    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 117
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(ZZ)I

    move-result v1

    .line 118
    .local v1, "n":I
    if-eqz v1, :cond_13

    .line 121
    .end local v1    # "n":I
    :goto_12
    return v1

    .line 116
    .restart local v1    # "n":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "n":I
    :cond_18
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_12
.end method

.method public static equals(BB)Z
    .registers 3
    .param p0, "l"    # B
    .param p1, "r"    # B

    .prologue
    .line 24
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static equals(CC)Z
    .registers 3
    .param p0, "l"    # C
    .param p1, "r"    # C

    .prologue
    .line 28
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static equals(DD)Z
    .registers 6
    .param p0, "l"    # D
    .param p2, "r"    # D

    .prologue
    .line 48
    cmpl-double v0, p0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static equals(FF)Z
    .registers 3
    .param p0, "l"    # F
    .param p1, "r"    # F

    .prologue
    .line 44
    cmpl-float v0, p0, p1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static equals(II)Z
    .registers 3
    .param p0, "l"    # I
    .param p1, "r"    # I

    .prologue
    .line 36
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static equals(JJ)Z
    .registers 6
    .param p0, "l"    # J
    .param p2, "r"    # J

    .prologue
    .line 40
    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "l"    # Ljava/lang/Object;
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 52
    if-nez p0, :cond_8

    .line 53
    if-ne p0, p1, :cond_6

    const/4 v0, 0x1

    .line 56
    :goto_5
    return v0

    .line 53
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 56
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static equals(SS)Z
    .registers 3
    .param p0, "l"    # S
    .param p1, "r"    # S

    .prologue
    .line 32
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static equals(ZZ)Z
    .registers 3
    .param p0, "l"    # Z
    .param p1, "r"    # Z

    .prologue
    .line 20
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getHexdump(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 396
    .local v3, "size":I
    if-nez v3, :cond_9

    .line 397
    const-string v4, "empty"

    .line 414
    :goto_8
    return-object v4

    .line 399
    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 400
    .local v2, "out":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 402
    .local v1, "mark":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 403
    .local v0, "byteValue":I
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->highDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->lowDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v3, v3, -0x1

    .line 407
    :goto_32
    if-lez v3, :cond_52

    .line 408
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 410
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->highDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->lowDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 407
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 413
    :cond_52
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8
.end method

.method public static getHexdump([B)Ljava/lang/String;
    .registers 2
    .param p0, "array"    # [B

    .prologue
    .line 391
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getHexdump(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJceBufArray(Ljava/nio/ByteBuffer;)[B
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v0, v1, [B

    .line 365
    .local v0, "bytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    return-object v0
.end method

.method public static hashCode(B)I
    .registers 2
    .param p0, "o"    # B

    .prologue
    .line 204
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(C)I
    .registers 2
    .param p0, "o"    # C

    .prologue
    .line 220
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(D)I
    .registers 4
    .param p0, "o"    # D

    .prologue
    .line 236
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public static hashCode(F)I
    .registers 2
    .param p0, "o"    # F

    .prologue
    .line 252
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public static hashCode(I)I
    .registers 2
    .param p0, "o"    # I

    .prologue
    .line 285
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(J)I
    .registers 4
    .param p0, "o"    # J

    .prologue
    .line 301
    const/16 v0, 0x20

    shr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 330
    if-nez p0, :cond_5

    .line 331
    const/16 v0, 0x275

    .line 358
    :goto_4
    return v0

    .line 333
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 334
    instance-of v0, p0, [J

    if-eqz v0, :cond_1c

    .line 335
    check-cast p0, [J

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([J)I

    move-result v0

    goto :goto_4

    .line 336
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1c
    instance-of v0, p0, [I

    if-eqz v0, :cond_29

    .line 337
    check-cast p0, [I

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([I)I

    move-result v0

    goto :goto_4

    .line 338
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_29
    instance-of v0, p0, [S

    if-eqz v0, :cond_36

    .line 339
    check-cast p0, [S

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [S

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([S)I

    move-result v0

    goto :goto_4

    .line 340
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_36
    instance-of v0, p0, [C

    if-eqz v0, :cond_43

    .line 341
    check-cast p0, [C

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [C

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([C)I

    move-result v0

    goto :goto_4

    .line 342
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_43
    instance-of v0, p0, [B

    if-eqz v0, :cond_50

    .line 343
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([B)I

    move-result v0

    goto :goto_4

    .line 344
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_50
    instance-of v0, p0, [D

    if-eqz v0, :cond_5d

    .line 345
    check-cast p0, [D

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([D)I

    move-result v0

    goto :goto_4

    .line 346
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5d
    instance-of v0, p0, [F

    if-eqz v0, :cond_6a

    .line 347
    check-cast p0, [F

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [F

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([F)I

    move-result v0

    goto :goto_4

    .line 348
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_77

    .line 349
    check-cast p0, [Z

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Z

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([Z)I

    move-result v0

    goto :goto_4

    .line 350
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_77
    instance-of v0, p0, [Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_84

    .line 351
    check-cast p0, [Lcom/qq/taf/jce/JceStruct;

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Lcom/qq/taf/jce/JceStruct;

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([Lcom/qq/taf/jce/JceStruct;)I

    move-result v0

    goto :goto_4

    .line 353
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_84
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_4

    .line 355
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8e
    instance-of v0, p0, Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_98

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 358
    :cond_98
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    goto/16 :goto_4
.end method

.method public static hashCode(S)I
    .registers 2
    .param p0, "o"    # S

    .prologue
    .line 268
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(Z)I
    .registers 2
    .param p0, "o"    # Z

    .prologue
    .line 188
    if-eqz p0, :cond_6

    const/4 v0, 0x0

    :goto_3
    add-int/lit16 v0, v0, 0x275

    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static hashCode([B)I
    .registers 5
    .param p0, "array"    # [B

    .prologue
    .line 208
    if-nez p0, :cond_5

    .line 209
    const/16 v1, 0x275

    .line 215
    :cond_4
    return v1

    .line 211
    :cond_5
    const/16 v1, 0x11

    .line 212
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 213
    mul-int/lit8 v2, v1, 0x25

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([C)I
    .registers 5
    .param p0, "array"    # [C

    .prologue
    .line 224
    if-nez p0, :cond_5

    .line 225
    const/16 v1, 0x275

    .line 231
    :cond_4
    return v1

    .line 227
    :cond_5
    const/16 v1, 0x11

    .line 228
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 229
    mul-int/lit8 v2, v1, 0x25

    aget-char v3, p0, v0

    add-int v1, v2, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([D)I
    .registers 9
    .param p0, "array"    # [D

    .prologue
    .line 240
    if-nez p0, :cond_5

    .line 241
    const/16 v1, 0x275

    .line 247
    :cond_4
    return v1

    .line 243
    :cond_5
    const/16 v1, 0x11

    .line 244
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 245
    mul-int/lit8 v2, v1, 0x25

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v3, 0x20

    shr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([F)I
    .registers 5
    .param p0, "array"    # [F

    .prologue
    .line 256
    if-nez p0, :cond_5

    .line 257
    const/16 v1, 0x275

    .line 263
    :cond_4
    return v1

    .line 259
    :cond_5
    const/16 v1, 0x11

    .line 260
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 261
    mul-int/lit8 v2, v1, 0x25

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([I)I
    .registers 5
    .param p0, "array"    # [I

    .prologue
    .line 289
    if-nez p0, :cond_5

    .line 290
    const/16 v1, 0x275

    .line 296
    :cond_4
    return v1

    .line 292
    :cond_5
    const/16 v1, 0x11

    .line 293
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 294
    mul-int/lit8 v2, v1, 0x25

    aget v3, p0, v0

    add-int v1, v2, v3

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([J)I
    .registers 9
    .param p0, "array"    # [J

    .prologue
    .line 305
    if-nez p0, :cond_5

    .line 306
    const/16 v1, 0x275

    .line 312
    :cond_4
    return v1

    .line 308
    :cond_5
    const/16 v1, 0x11

    .line 309
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 310
    mul-int/lit8 v2, v1, 0x25

    aget-wide v4, p0, v0

    aget-wide v6, p0, v0

    const/16 v3, 0x20

    shr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([Lcom/qq/taf/jce/JceStruct;)I
    .registers 5
    .param p0, "array"    # [Lcom/qq/taf/jce/JceStruct;

    .prologue
    .line 317
    if-nez p0, :cond_5

    .line 318
    const/16 v1, 0x275

    .line 324
    :cond_4
    return v1

    .line 320
    :cond_5
    const/16 v1, 0x11

    .line 321
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 322
    mul-int/lit8 v2, v1, 0x25

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([S)I
    .registers 5
    .param p0, "array"    # [S

    .prologue
    .line 272
    if-nez p0, :cond_5

    .line 273
    const/16 v1, 0x275

    .line 279
    :cond_4
    return v1

    .line 275
    :cond_5
    const/16 v1, 0x11

    .line 276
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 277
    mul-int/lit8 v2, v1, 0x25

    aget-short v3, p0, v0

    add-int v1, v2, v3

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static hashCode([Z)I
    .registers 5
    .param p0, "array"    # [Z

    .prologue
    .line 192
    if-nez p0, :cond_5

    .line 193
    const/16 v1, 0x275

    .line 199
    :cond_4
    return v1

    .line 195
    :cond_5
    const/16 v1, 0x11

    .line 196
    .local v1, "tempTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 197
    mul-int/lit8 v3, v1, 0x25

    aget-boolean v2, p0, v0

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    :goto_12
    add-int v1, v3, v2

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 197
    :cond_17
    const/4 v2, 0x1

    goto :goto_12
.end method
