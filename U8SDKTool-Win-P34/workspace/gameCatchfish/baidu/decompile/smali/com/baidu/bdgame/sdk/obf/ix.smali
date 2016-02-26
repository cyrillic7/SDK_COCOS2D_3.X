.class public Lcom/baidu/bdgame/sdk/obf/ix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x64


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a(D)J
    .registers 4

    .prologue
    .line 119
    const-wide/high16 v0, 0x4059000000000000L

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(F)J
    .registers 3

    .prologue
    .line 170
    const/high16 v0, 0x42c80000

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/iw;)J
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/iw;->f()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/iw;->g()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/iw;->e()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/iw;J)J
    .registers 6

    .prologue
    .line 35
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public static a(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 5

    .prologue
    .line 214
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 14

    .prologue
    const-wide/16 v10, 0x64

    const-wide/16 v8, 0x0

    const/high16 v6, 0x42c80000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 55
    rem-long v2, v0, v10

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3c

    .line 56
    const-wide/16 v2, 0xa

    rem-long v2, v0, v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2b

    .line 57
    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    long-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_2a
    return-object v0

    .line 59
    :cond_2b
    const-string v2, "%.2f"

    new-array v3, v5, [Ljava/lang/Object;

    long-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 63
    :cond_3c
    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    div-long/2addr v0, v10

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public static a(FJ)Z
    .registers 6

    .prologue
    .line 149
    const/high16 v0, 0x42c80000

    mul-float/2addr v0, p0

    long-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 3

    .prologue
    .line 199
    if-lez p1, :cond_4

    .line 200
    const/4 v0, 0x1

    .line 203
    :goto_3
    return v0

    .line 202
    :cond_4
    const-string v0, "bdp_paycenter_tips_input_need_over_zero"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/util/List;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    if-nez p0, :cond_6

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    .line 83
    :goto_5
    return-object v0

    .line 78
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 79
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 81
    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ix;->a(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_27
    move-object v0, v2

    .line 83
    goto :goto_5
.end method

.method public static b(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 5

    .prologue
    .line 226
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/baidu/bdgame/sdk/obf/iw;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(F)Z
    .registers 5

    .prologue
    .line 189
    const-wide/32 v0, 0x989680

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static b(FJ)Z
    .registers 6

    .prologue
    .line 160
    const/high16 v0, 0x42c80000

    mul-float/2addr v0, p0

    long-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Lcom/baidu/bdgame/sdk/obf/iw;J)Z
    .registers 8

    .prologue
    .line 45
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static b(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p0, :cond_6

    .line 131
    new-array v0, v0, [I

    .line 138
    :goto_5
    return-object v0

    .line 133
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    move v1, v0

    .line 134
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 135
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    aput v0, v2, v1

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_23
    move-object v0, v2

    .line 138
    goto :goto_5
.end method

.method public static c(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 5

    .prologue
    .line 238
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 102
    long-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 111
    const-wide/16 v0, 0x64

    div-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(J)J
    .registers 6

    .prologue
    const-wide/32 v0, 0x989680

    .line 180
    cmp-long v2, v0, p0

    if-lez v2, :cond_8

    :goto_7
    return-wide p0

    :cond_8
    move-wide p0, v0

    goto :goto_7
.end method
