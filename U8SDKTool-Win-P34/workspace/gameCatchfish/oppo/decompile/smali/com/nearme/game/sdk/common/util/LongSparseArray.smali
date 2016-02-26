.class public Lcom/nearme/game/sdk/common/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[J

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    .line 27
    if-nez p1, :cond_13

    .line 28
    sget-object v0, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    .line 29
    sget-object v0, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    .line 35
    :goto_10
    iput v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    .line 36
    return-void

    .line 31
    :cond_13
    invoke-static {p1}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->idealLongArraySize(I)I

    move-result v0

    .line 32
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private a()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 109
    iget v3, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    .line 111
    iget-object v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    .line 112
    iget-object v5, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 114
    :goto_9
    if-ge v1, v3, :cond_21

    .line 115
    aget-object v6, v5, v1

    .line 117
    sget-object v7, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    .line 118
    if-eq v1, v0, :cond_1c

    .line 119
    aget-wide v8, v4, v1

    aput-wide v8, v4, v0

    .line 120
    aput-object v6, v5, v0

    .line 121
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 124
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 128
    :cond_21
    iput-boolean v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    .line 129
    iput v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    .line 132
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 287
    iget v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_15

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 314
    :goto_14
    return-void

    .line 292
    :cond_15
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    array-length v1, v1

    if-lt v0, v1, :cond_23

    .line 293
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 296
    :cond_23
    iget v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    .line 297
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    array-length v1, v1

    if-lt v0, v1, :cond_48

    .line 298
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 300
    new-array v2, v1, [J

    .line 301
    new-array v1, v1, [Ljava/lang/Object;

    .line 304
    iget-object v3, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget-object v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v3, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iput-object v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    .line 308
    iput-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    .line 311
    :cond_48
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    aput-wide p1, v1, v0

    .line 312
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    goto :goto_14
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 271
    iget v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    .line 272
    iget-object v3, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    move v0, v1

    .line 274
    :goto_6
    if-ge v0, v2, :cond_e

    .line 275
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 278
    :cond_e
    iput v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    .line 279
    iput-boolean v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    .line 280
    return-void
.end method

.method public clone()Lcom/nearme/game/sdk/common/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nearme/game/sdk/common/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/game/sdk/common/util/LongSparseArray;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    .line 44
    :try_start_7
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    .line 45
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1f

    .line 49
    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_1f
    move-exception v1

    goto :goto_1b
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->clone()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    invoke-static {v0, v1, p1, p2}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 81
    if-ltz v0, :cond_1b

    .line 82
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    .line 83
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    sget-object v2, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    .line 87
    :cond_1b
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    invoke-static {v0, v1, p1, p2}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 68
    if-ltz v0, :cond_12

    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    .line 71
    :cond_12
    :goto_12
    return-object p3

    :cond_13
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_12
.end method

.method public indexOfKey(J)I
    .registers 6

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_7

    .line 243
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    invoke-static {v0, v1, p1, p2}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_7

    .line 257
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 260
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    if-ge v0, v1, :cond_16

    .line 261
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 264
    :goto_12
    return v0

    .line 260
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 264
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public keyAt(I)J
    .registers 4

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_7

    .line 204
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 139
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    invoke-static {v0, v1, p1, p2}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 141
    if-ltz v0, :cond_10

    .line 142
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 183
    :goto_f
    return-void

    .line 144
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 146
    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    .line 147
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    aput-wide p1, v1, v0

    .line 148
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_f

    .line 152
    :cond_27
    iget-boolean v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    iget-object v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3f

    .line 153
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 156
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    invoke-static {v0, v1, p1, p2}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 159
    :cond_3f
    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    iget-object v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_66

    .line 160
    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/nearme/game/sdk/common/util/LongSparseArray$ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 162
    new-array v2, v1, [J

    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    iget-object v3, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget-object v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v3, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    .line 170
    iput-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    .line 173
    :cond_66
    iget v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_83

    .line 175
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    iget-object v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    :cond_83
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->c:[J

    aput-wide p1, v1, v0

    .line 180
    iget-object v1, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 181
    iget v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    goto/16 :goto_f
.end method

.method public remove(J)V
    .registers 4

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->delete(J)V

    .line 94
    return-void
.end method

.method public removeAt(I)V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 101
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    sget-object v1, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    .line 104
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_7

    .line 231
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 235
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_7

    .line 191
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 194
    :cond_7
    iget v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 327
    const-string v0, "{}"

    .line 347
    :goto_8
    return-object v0

    .line 330
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->e:I

    if-ge v0, v2, :cond_41

    .line 333
    if-lez v0, :cond_23

    .line 334
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_23
    invoke-virtual {p0, v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 337
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0, v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 340
    if-eq v2, p0, :cond_3b

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 343
    :cond_3b
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 346
    :cond_41
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->b:Z

    if-eqz v0, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->a()V

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/nearme/game/sdk/common/util/LongSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
