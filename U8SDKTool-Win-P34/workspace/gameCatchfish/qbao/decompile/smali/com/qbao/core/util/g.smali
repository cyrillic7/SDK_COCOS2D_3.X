.class public Lcom/qbao/core/util/g;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field public static ca:[C

.field public static cb:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/qbao/core/util/g;->ca:[C

    .line 14
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/qbao/core/util/g;->cb:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Character;)I
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/qbao/core/util/g;->ca:[C

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 104
    const/4 v0, -0x1

    :cond_7
    return v0

    .line 100
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v2, Lcom/qbao/core/util/g;->ca:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_7

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(J)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v6, 0x3e

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    :goto_d
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_24

    .line 44
    :goto_13
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_45

    .line 48
    const-string v0, "@@@@@@@@@"

    .line 53
    :goto_23
    return-object v0

    .line 41
    :cond_24
    sget-object v2, Lcom/qbao/core/util/g;->ca:[C

    rem-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 42
    div-long/2addr p0, v6

    goto :goto_d

    .line 45
    :cond_3d
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 50
    :cond_45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 51
    const-string v0, "@@@@@@@@@"

    goto :goto_23

    .line 53
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public static a(JI)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x3e

    .line 116
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_49

    .line 123
    :goto_1b
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 128
    :goto_2b
    sub-int v1, p2, v2

    if-lt v0, v1, :cond_7a

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_49
    sget-object v4, Lcom/qbao/core/util/g;->cb:[C

    new-instance v5, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_11

    .line 124
    :cond_72
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 129
    :cond_7a
    const/16 v1, 0x30

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 141
    const-wide/16 v2, 0x0

    .line 142
    const/16 v6, 0x3e

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 147
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    move-wide v4, v2

    move v3, v1

    move v2, v0

    :goto_f
    if-gez v2, :cond_16

    .line 160
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_16
    aget-byte v0, v7, v2

    const/16 v8, 0x30

    if-le v0, v8, :cond_36

    aget-byte v0, v7, v2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_36

    .line 150
    aget-byte v0, v7, v2

    add-int/lit8 v0, v0, -0x30

    .line 156
    :goto_26
    int-to-double v8, v6

    int-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    .line 157
    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 147
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_f

    .line 151
    :cond_36
    aget-byte v0, v7, v2

    const/16 v8, 0x41

    if-lt v0, v8, :cond_49

    aget-byte v0, v7, v2

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_49

    .line 152
    aget-byte v0, v7, v2

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 153
    goto :goto_26

    :cond_49
    aget-byte v0, v7, v2

    const/16 v8, 0x61

    if-lt v0, v8, :cond_5e

    aget-byte v0, v7, v2

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_5e

    .line 154
    aget-byte v0, v7, v2

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1a

    goto :goto_26

    :cond_5e
    move v0, v1

    goto :goto_26
.end method

.method public static l(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 170
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 171
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    const/4 v0, 0x0

    :goto_b
    if-lt v0, p0, :cond_12

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_12
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 174
    sget-object v4, Lcom/qbao/core/util/g;->cb:[C

    aget-char v3, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static u(Ljava/lang/String;)[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    :goto_7
    return-object v0

    .line 21
    :cond_8
    :try_start_8
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_7

    .line 22
    :catch_f
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_7
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/qbao/core/util/g;->a(J)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 68
    :goto_c
    return-object v0

    .line 67
    :catch_d
    move-exception v0

    .line 68
    const-string v0, "@@@@@@@@@"

    goto :goto_c
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 80
    const-wide/16 v4, 0x1

    .line 81
    const-wide/16 v2, 0x0

    .line 83
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 88
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/qbao/core/util/g;->a(Ljava/lang/Character;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 86
    const-wide/16 v6, 0x3e

    mul-long/2addr v4, v6

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
