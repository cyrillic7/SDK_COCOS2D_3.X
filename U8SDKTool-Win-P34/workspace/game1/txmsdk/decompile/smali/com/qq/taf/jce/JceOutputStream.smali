.class public Lcom/qq/taf/jce/JceOutputStream;
.super Ljava/lang/Object;
.source "JceOutputStream.java"


# instance fields
.field private bs:Ljava/nio/ByteBuffer;

.field private exceptionHandler:Lcom/qq/taf/jce/OnIllegalArgumentException;

.field protected sServerEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->sServerEncoding:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "bs"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->sServerEncoding:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    .line 19
    return-void
.end method

.method private writeArray([Ljava/lang/Object;I)V
    .registers 9
    .param p1, "l"    # [Ljava/lang/Object;
    .param p2, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 281
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 282
    const/16 v4, 0x9

    invoke-virtual {p0, v4, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 283
    array-length v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 284
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1c

    aget-object v1, v0, v2

    .line 285
    .local v1, "e":Ljava/lang/Object;
    invoke-virtual {p0, v1, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 286
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1c
    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getExceptionHandler()Lcom/qq/taf/jce/OnIllegalArgumentException;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->exceptionHandler:Lcom/qq/taf/jce/OnIllegalArgumentException;

    return-object v0
.end method

.method public reserve(I)V
    .registers 8
    .param p1, "len"    # I

    .prologue
    .line 44
    iget-object v3, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, p1, :cond_28

    .line 45
    iget-object v3, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v3, p1

    mul-int/lit8 v2, v3, 0x2

    .line 46
    .local v2, "n":I
    const/4 v0, 0x0

    .line 49
    .local v0, "bs2":Ljava/nio/ByteBuffer;
    :try_start_12
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    iget-object v3, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_26} :catch_29

    .line 59
    iput-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    .line 62
    .end local v0    # "bs2":Ljava/nio/ByteBuffer;
    .end local v2    # "n":I
    :cond_28
    return-void

    .line 52
    .restart local v0    # "bs2":Ljava/nio/ByteBuffer;
    .restart local v2    # "n":I
    :catch_29
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/qq/taf/jce/JceOutputStream;->exceptionHandler:Lcom/qq/taf/jce/OnIllegalArgumentException;

    if-eqz v3, :cond_35

    .line 55
    iget-object v3, p0, Lcom/qq/taf/jce/JceOutputStream;->exceptionHandler:Lcom/qq/taf/jce/OnIllegalArgumentException;

    iget-object v4, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v1, v4, p1, v2}, Lcom/qq/taf/jce/OnIllegalArgumentException;->onException(Ljava/lang/IllegalArgumentException;Ljava/nio/ByteBuffer;II)V

    .line 57
    :cond_35
    throw v1
.end method

.method public setExceptionHandler(Lcom/qq/taf/jce/OnIllegalArgumentException;)V
    .registers 2
    .param p1, "exceptionHandler"    # Lcom/qq/taf/jce/OnIllegalArgumentException;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/qq/taf/jce/JceOutputStream;->exceptionHandler:Lcom/qq/taf/jce/OnIllegalArgumentException;

    .line 405
    return-void
.end method

.method public setServerEncoding(Ljava/lang/String;)I
    .registers 3
    .param p1, "se"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/qq/taf/jce/JceOutputStream;->sServerEncoding:Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v0, v1, [B

    .line 38
    .local v0, "newBytes":[B
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    return-object v0
.end method

.method public write(BI)V
    .registers 4
    .param p1, "b"    # B
    .param p2, "tag"    # I

    .prologue
    .line 87
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 88
    if-nez p1, :cond_c

    .line 89
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 94
    :goto_b
    return-void

    .line 91
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 92
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_b
.end method

.method public write(DI)V
    .registers 5
    .param p1, "n"    # D
    .param p3, "tag"    # I

    .prologue
    .line 138
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 139
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 140
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 141
    return-void
.end method

.method public write(FI)V
    .registers 4
    .param p1, "n"    # F
    .param p2, "tag"    # I

    .prologue
    .line 131
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 132
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 133
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 134
    return-void
.end method

.method public write(II)V
    .registers 4
    .param p1, "n"    # I
    .param p2, "tag"    # I

    .prologue
    .line 109
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 110
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_11

    .line 111
    int-to-short v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 116
    :goto_10
    return-void

    .line 113
    :cond_11
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 114
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method public write(JI)V
    .registers 7
    .param p1, "n"    # J
    .param p3, "tag"    # I

    .prologue
    .line 120
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 121
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_18

    .line 122
    long-to-int v0, p1

    invoke-virtual {p0, v0, p3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 127
    :goto_17
    return-void

    .line 124
    :cond_18
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 125
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_17
.end method

.method public write(Lcom/qq/taf/jce/JceStruct;I)V
    .registers 5
    .param p1, "o"    # Lcom/qq/taf/jce/JceStruct;
    .param p2, "tag"    # I

    .prologue
    const/4 v1, 0x2

    .line 301
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 302
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 303
    invoke-virtual {p1, p0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 304
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 305
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 306
    return-void
.end method

.method public write(Ljava/lang/Boolean;I)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Boolean;
    .param p2, "tag"    # I

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 316
    return-void
.end method

.method public write(Ljava/lang/Byte;I)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Byte;
    .param p2, "tag"    # I

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 311
    return-void
.end method

.method public write(Ljava/lang/Double;I)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Double;
    .param p2, "tag"    # I

    .prologue
    .line 340
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    .line 341
    return-void
.end method

.method public write(Ljava/lang/Float;I)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Float;
    .param p2, "tag"    # I

    .prologue
    .line 335
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 336
    return-void
.end method

.method public write(Ljava/lang/Integer;I)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Integer;
    .param p2, "tag"    # I

    .prologue
    .line 325
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 326
    return-void
.end method

.method public write(Ljava/lang/Long;I)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Long;
    .param p2, "tag"    # I

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 331
    return-void
.end method

.method public write(Ljava/lang/Object;I)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "tag"    # I

    .prologue
    .line 345
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_e

    .line 346
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 389
    :goto_d
    return-void

    .line 347
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_e
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    .line 348
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    goto :goto_d

    .line 349
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1c
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2a

    .line 350
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    goto :goto_d

    .line 351
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2a
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_38

    .line 352
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    goto :goto_d

    .line 353
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_46

    .line 354
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    goto :goto_d

    .line 355
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_46
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_54

    .line 356
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    goto :goto_d

    .line 357
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_54
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_62

    .line 358
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    goto :goto_d

    .line 359
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_62
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 360
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    goto :goto_d

    .line 361
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6c
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_76

    .line 362
    check-cast p1, Ljava/util/Map;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    goto :goto_d

    .line 363
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_76
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_80

    .line 364
    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    goto :goto_d

    .line 365
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_80
    instance-of v0, p1, Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_8a

    .line 366
    check-cast p1, Lcom/qq/taf/jce/JceStruct;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    goto :goto_d

    .line 367
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_8a
    instance-of v0, p1, [B

    if-eqz v0, :cond_97

    .line 368
    check-cast p1, [B

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    goto/16 :goto_d

    .line 369
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_97
    instance-of v0, p1, [Z

    if-eqz v0, :cond_a4

    .line 370
    check-cast p1, [Z

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([ZI)V

    goto/16 :goto_d

    .line 371
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_a4
    instance-of v0, p1, [S

    if-eqz v0, :cond_b1

    .line 372
    check-cast p1, [S

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([SI)V

    goto/16 :goto_d

    .line 373
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_b1
    instance-of v0, p1, [I

    if-eqz v0, :cond_be

    .line 374
    check-cast p1, [I

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([II)V

    goto/16 :goto_d

    .line 375
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_be
    instance-of v0, p1, [J

    if-eqz v0, :cond_cb

    .line 376
    check-cast p1, [J

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([JI)V

    goto/16 :goto_d

    .line 377
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_cb
    instance-of v0, p1, [F

    if-eqz v0, :cond_d8

    .line 378
    check-cast p1, [F

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([FI)V

    goto/16 :goto_d

    .line 379
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_d8
    instance-of v0, p1, [D

    if-eqz v0, :cond_e5

    .line 380
    check-cast p1, [D

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write([DI)V

    goto/16 :goto_d

    .line 381
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_e5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 382
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeArray([Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 383
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f8
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_103

    .line 384
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    goto/16 :goto_d

    .line 386
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_103
    new-instance v0, Lcom/qq/taf/jce/JceEncodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write object error: unsupport type. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceEncodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/lang/Short;I)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Short;
    .param p2, "tag"    # I

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 321
    return-void
.end method

.method public write(Ljava/lang/String;I)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tag"    # I

    .prologue
    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/qq/taf/jce/JceOutputStream;->sServerEncoding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_21

    move-result-object v0

    .line 186
    .local v0, "by":[B
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {p0, v2}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 187
    array-length v2, v0

    const/16 v3, 0xff

    if-le v2, v3, :cond_27

    .line 188
    const/4 v2, 0x7

    invoke-virtual {p0, v2, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 189
    iget-object v2, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v2, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 196
    :goto_20
    return-void

    .line 182
    .end local v0    # "by":[B
    :catch_21
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "by":[B
    goto :goto_6

    .line 192
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_27
    const/4 v2, 0x6

    invoke-virtual {p0, v2, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 193
    iget-object v2, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    array-length v3, v0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    iget-object v2, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_20
.end method

.method public write(Ljava/util/Collection;I)V
    .registers 7
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "l":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v3, 0x0

    .line 290
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 291
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 292
    if-nez p1, :cond_25

    move v2, v3

    :goto_e
    invoke-virtual {p0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 293
    if-eqz p1, :cond_2a

    .line 294
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    goto :goto_17

    .line 292
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_e

    .line 297
    :cond_2a
    return-void
.end method

.method public write(Ljava/util/Map;I)V
    .registers 8
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p0, v2}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 201
    invoke-virtual {p0, v2, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 202
    if-nez p1, :cond_35

    move v2, v3

    :goto_c
    invoke-virtual {p0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 203
    if-eqz p1, :cond_3a

    .line 204
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    goto :goto_19

    .line 202
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_35
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_c

    .line 209
    :cond_3a
    return-void
.end method

.method public write(SI)V
    .registers 4
    .param p1, "n"    # S
    .param p2, "tag"    # I

    .prologue
    .line 98
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 99
    const/16 v0, -0x80

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_11

    .line 100
    int-to-byte v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 105
    :goto_10
    return-void

    .line 102
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 103
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method public write(ZI)V
    .registers 5
    .param p1, "b"    # Z
    .param p2, "tag"    # I

    .prologue
    .line 81
    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :goto_3
    int-to-byte v0, v1

    .line 82
    .local v0, "by":B
    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 83
    return-void

    .line 81
    .end local v0    # "by":B
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public write([BI)V
    .registers 5
    .param p1, "l"    # [B
    .param p2, "tag"    # I

    .prologue
    const/4 v1, 0x0

    .line 222
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 223
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 224
    invoke-virtual {p0, v1, v1}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 225
    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 226
    iget-object v0, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 227
    return-void
.end method

.method public write([DI)V
    .registers 10
    .param p1, "l"    # [D
    .param p2, "tag"    # I

    .prologue
    const/4 v6, 0x0

    .line 267
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 268
    const/16 v5, 0x9

    invoke-virtual {p0, v5, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 269
    array-length v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 270
    move-object v0, p1

    .local v0, "arr$":[D
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_12
    if-ge v1, v4, :cond_1c

    aget-wide v2, v0, v1

    .line 271
    .local v2, "e":D
    invoke-virtual {p0, v2, v3, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 272
    .end local v2    # "e":D
    :cond_1c
    return-void
.end method

.method public write([FI)V
    .registers 9
    .param p1, "l"    # [F
    .param p2, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 258
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 259
    const/16 v4, 0x9

    invoke-virtual {p0, v4, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 260
    array-length v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 261
    move-object v0, p1

    .local v0, "arr$":[F
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1c

    aget v1, v0, v2

    .line 262
    .local v1, "e":F
    invoke-virtual {p0, v1, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 263
    .end local v1    # "e":F
    :cond_1c
    return-void
.end method

.method public write([II)V
    .registers 9
    .param p1, "l"    # [I
    .param p2, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 240
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 241
    const/16 v4, 0x9

    invoke-virtual {p0, v4, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 242
    array-length v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 243
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1c

    aget v1, v0, v2

    .line 244
    .local v1, "e":I
    invoke-virtual {p0, v1, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 245
    .end local v1    # "e":I
    :cond_1c
    return-void
.end method

.method public write([JI)V
    .registers 10
    .param p1, "l"    # [J
    .param p2, "tag"    # I

    .prologue
    const/4 v6, 0x0

    .line 249
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 250
    const/16 v5, 0x9

    invoke-virtual {p0, v5, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 251
    array-length v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 252
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_12
    if-ge v1, v4, :cond_1c

    aget-wide v2, v0, v1

    .line 253
    .local v2, "e":J
    invoke-virtual {p0, v2, v3, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 254
    .end local v2    # "e":J
    :cond_1c
    return-void
.end method

.method public write([Ljava/lang/Object;I)V
    .registers 3
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "l":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeArray([Ljava/lang/Object;I)V

    .line 277
    return-void
.end method

.method public write([SI)V
    .registers 9
    .param p1, "l"    # [S
    .param p2, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 231
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 232
    const/16 v4, 0x9

    invoke-virtual {p0, v4, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 233
    array-length v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 234
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1c

    aget-short v1, v0, v2

    .line 235
    .local v1, "e":S
    invoke-virtual {p0, v1, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 236
    .end local v1    # "e":S
    :cond_1c
    return-void
.end method

.method public write([ZI)V
    .registers 9
    .param p1, "l"    # [Z
    .param p2, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 213
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 214
    const/16 v4, 0x9

    invoke-virtual {p0, v4, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 215
    array-length v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 216
    move-object v0, p1

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1c

    aget-boolean v1, v0, v2

    .line 217
    .local v1, "e":Z
    invoke-virtual {p0, v1, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 218
    .end local v1    # "e":Z
    :cond_1c
    return-void
.end method

.method public writeByteString(Ljava/lang/String;I)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tag"    # I

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 163
    invoke-static {p1}, Lcom/qq/taf/jce/HexUtil;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, "by":[B
    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_22

    .line 165
    const/4 v1, 0x7

    invoke-virtual {p0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 166
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 173
    :goto_21
    return-void

    .line 169
    :cond_22
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 170
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 171
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_21
.end method

.method public writeHead(BI)V
    .registers 7
    .param p1, "type"    # B
    .param p2, "tag"    # I

    .prologue
    .line 67
    const/16 v1, 0xf

    if-ge p2, v1, :cond_e

    .line 68
    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v1, p1

    int-to-byte v0, v1

    .line 69
    .local v0, "b":B
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    :goto_d
    return-void

    .line 70
    .end local v0    # "b":B
    :cond_e
    const/16 v1, 0x100

    if-ge p2, v1, :cond_21

    .line 71
    or-int/lit16 v1, p1, 0xf0

    int-to-byte v0, v1

    .line 72
    .restart local v0    # "b":B
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_d

    .line 75
    .end local v0    # "b":B
    :cond_21
    new-instance v1, Lcom/qq/taf/jce/JceEncodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceEncodeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeStringByte(Ljava/lang/String;I)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tag"    # I

    .prologue
    .line 145
    invoke-static {p1}, Lcom/qq/taf/jce/HexUtil;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    .local v0, "by":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceOutputStream;->reserve(I)V

    .line 147
    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_1f

    .line 149
    const/4 v1, 0x7

    invoke-virtual {p0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 150
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    :goto_1e
    return-void

    .line 154
    :cond_1f
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2}, Lcom/qq/taf/jce/JceOutputStream;->writeHead(BI)V

    .line 155
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v1, p0, Lcom/qq/taf/jce/JceOutputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1e
.end method
