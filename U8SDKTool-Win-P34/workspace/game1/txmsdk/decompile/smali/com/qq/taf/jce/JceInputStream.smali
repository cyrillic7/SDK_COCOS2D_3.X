.class public final Lcom/qq/taf/jce/JceInputStream;
.super Ljava/lang/Object;
.source "JceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/taf/jce/JceInputStream$HeadData;
    }
.end annotation


# instance fields
.field private bs:Ljava/nio/ByteBuffer;

.field protected sServerEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "bs"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bs"    # [B

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4
    .param p1, "bs"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method private peakHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)I
    .registers 3
    .param p1, "hd"    # Lcom/qq/taf/jce/JceInputStream$HeadData;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 12
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .local p1, "mt":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 825
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 826
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 827
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 828
    iget-byte v5, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v5, :pswitch_data_62

    .line 841
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 830
    :pswitch_1d
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 831
    .local v3, "size":I
    if-gez v3, :cond_3c

    .line 832
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 833
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    .line 834
    .local v2, "lr":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    if-ge v1, v3, :cond_60

    .line 835
    invoke-virtual {p0, p1, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 836
    .local v4, "t":Ljava/lang/Object;, "TT;"
    aput-object v4, v2, v1

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 843
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v2    # "lr":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "size":I
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_55
    if-eqz p3, :cond_5f

    .line 844
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 846
    :cond_5f
    const/4 v2, 0x0

    :cond_60
    return-object v2

    .line 828
    nop

    :pswitch_data_62
    .packed-switch 0x9
        :pswitch_1d
    .end packed-switch
.end method

.method public static readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "hd"    # Lcom/qq/taf/jce/JceInputStream$HeadData;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 78
    .local v0, "b":B
    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    .line 79
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    .line 80
    iget v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1f

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    .line 82
    const/4 v1, 0x2

    .line 84
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method private readMap(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .registers 17
    .param p3, "tag"    # I
    .param p4, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "mr":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 502
    :cond_8
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "mr":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 533
    :cond_d
    return-object p1

    .line 507
    .restart local p1    # "mr":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_e
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 508
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 509
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 510
    .local v5, "mk":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 512
    .local v6, "mv":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 513
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 514
    .local v1, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 515
    iget-byte v9, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v9, :pswitch_data_80

    .line 528
    new-instance v9, Lcom/qq/taf/jce/JceDecodeException;

    const-string v10, "type mismatch."

    invoke-direct {v9, v10}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 517
    :pswitch_3f
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v7

    .line 518
    .local v7, "size":I
    if-gez v7, :cond_61

    .line 519
    new-instance v9, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size invalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 520
    :cond_61
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_62
    if-ge v2, v7, :cond_d

    .line 521
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v5, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 522
    .local v4, "k":Ljava/lang/Object;, "TK;"
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, v6, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v8

    .line 523
    .local v8, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 530
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "i":I
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v7    # "size":I
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    :cond_76
    if-eqz p4, :cond_d

    .line 531
    new-instance v9, Lcom/qq/taf/jce/JceDecodeException;

    const-string v10, "require field not exist."

    invoke-direct {v9, v10}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 515
    :pswitch_data_80
    .packed-switch 0x8
        :pswitch_3f
    .end packed-switch
.end method

.method private skip(I)V
    .registers 4
    .param p1, "len"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    return-void
.end method

.method private skipField()V
    .registers 3

    .prologue
    .line 132
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 133
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 134
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V

    .line 135
    return-void
.end method

.method private skipField(B)V
    .registers 10
    .param p1, "type"    # B

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    packed-switch p1, :pswitch_data_9c

    .line 197
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "invalid type."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :pswitch_10
    invoke-direct {p0, v6}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 199
    :cond_13
    :goto_13
    :pswitch_13
    return-void

    .line 143
    :pswitch_14
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 146
    :pswitch_19
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 149
    :pswitch_1d
    invoke-direct {p0, v7}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 152
    :pswitch_21
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 155
    :pswitch_25
    invoke-direct {p0, v7}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 158
    :pswitch_29
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 159
    .local v2, "len":I
    if-gez v2, :cond_33

    .line 160
    add-int/lit16 v2, v2, 0x100

    .line 161
    :cond_33
    invoke-direct {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 165
    .end local v2    # "len":I
    :pswitch_37
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_13

    .line 169
    :pswitch_41
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 170
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    mul-int/lit8 v4, v3, 0x2

    if-ge v1, v4, :cond_13

    .line 171
    invoke-direct {p0}, Lcom/qq/taf/jce/JceInputStream;->skipField()V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 175
    .end local v1    # "i":I
    .end local v3    # "size":I
    :pswitch_50
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 176
    .restart local v3    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_55
    if-ge v1, v3, :cond_13

    .line 177
    invoke-direct {p0}, Lcom/qq/taf/jce/JceInputStream;->skipField()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 181
    .end local v1    # "i":I
    .end local v3    # "size":I
    :pswitch_5d
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 182
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 183
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v4, :cond_8e

    .line 184
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipField with invalid type, type value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_8e
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 187
    .restart local v3    # "size":I
    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto/16 :goto_13

    .line 191
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v3    # "size":I
    :pswitch_97
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    goto/16 :goto_13

    .line 138
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_14
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_37
        :pswitch_41
        :pswitch_50
        :pswitch_97
        :pswitch_13
        :pswitch_13
        :pswitch_5d
    .end packed-switch
.end method


# virtual methods
.method public directRead(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;
    .registers 9
    .param p1, "o"    # Lcom/qq/taf/jce/JceStruct;
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 904
    const/4 v2, 0x0

    .line 905
    .local v2, "ref":Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 907
    :try_start_7
    invoke-virtual {p1}, Lcom/qq/taf/jce/JceStruct;->newInit()Lcom/qq/taf/jce/JceStruct;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_21

    move-result-object v2

    .line 912
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 913
    .local v1, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 914
    iget-byte v3, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2c

    .line 915
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 908
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :catch_21
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 916
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_2c
    invoke-virtual {v2, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 917
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 921
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_32
    return-object v2

    .line 918
    :cond_33
    if-eqz p3, :cond_32

    .line 919
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBs()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public read(BIZ)B
    .registers 7
    .param p1, "c"    # B
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 207
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 208
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 209
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 210
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_2e

    .line 218
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :sswitch_1b
    const/4 p1, 0x0

    .line 223
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1c
    :goto_1c
    return p1

    .line 215
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1d
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 216
    goto :goto_1c

    .line 220
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_24
    if-eqz p3, :cond_1c

    .line 221
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xc -> :sswitch_1b
    .end sparse-switch
.end method

.method public read(DIZ)D
    .registers 8
    .param p1, "n"    # D
    .param p3, "tag"    # I
    .param p4, "isRequire"    # Z

    .prologue
    .line 325
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 326
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 327
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 328
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_38

    .line 339
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :sswitch_1b
    const-wide/16 p1, 0x0

    .line 344
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1d
    :goto_1d
    return-wide p1

    .line 333
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1e
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    float-to-double p1, v1

    .line 334
    goto :goto_1d

    .line 336
    :sswitch_26
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    .line 337
    goto :goto_1d

    .line 341
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_2d
    if-eqz p4, :cond_1d

    .line 342
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    nop

    :sswitch_data_38
    .sparse-switch
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_26
        0xc -> :sswitch_1b
    .end sparse-switch
.end method

.method public read(FIZ)F
    .registers 7
    .param p1, "n"    # F
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 305
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 306
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 307
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 308
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_2e

    .line 316
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :sswitch_1b
    const/4 p1, 0x0

    .line 321
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1c
    :goto_1c
    return p1

    .line 313
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1d
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 314
    goto :goto_1c

    .line 318
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_24
    if-eqz p3, :cond_1c

    .line 319
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :sswitch_data_2e
    .sparse-switch
        0x4 -> :sswitch_1d
        0xc -> :sswitch_1b
    .end sparse-switch
.end method

.method public read(IIZ)I
    .registers 7
    .param p1, "n"    # I
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 250
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 251
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 252
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 253
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_3c

    .line 267
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :sswitch_1b
    const/4 p1, 0x0

    .line 272
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1c
    :goto_1c
    return p1

    .line 258
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1d
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 259
    goto :goto_1c

    .line 261
    :sswitch_24
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 262
    goto :goto_1c

    .line 264
    :sswitch_2b
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 265
    goto :goto_1c

    .line 269
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_32
    if-eqz p3, :cond_1c

    .line 270
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_24
        0x2 -> :sswitch_2b
        0xc -> :sswitch_1b
    .end sparse-switch
.end method

.method public read(JIZ)J
    .registers 8
    .param p1, "n"    # J
    .param p3, "tag"    # I
    .param p4, "isRequire"    # Z

    .prologue
    .line 276
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 277
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 278
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 279
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_48

    .line 296
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :sswitch_1b
    const-wide/16 p1, 0x0

    .line 301
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1d
    :goto_1d
    return-wide p1

    .line 284
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1e
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-long p1, v1

    .line 285
    goto :goto_1d

    .line 287
    :sswitch_26
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-long p1, v1

    .line 288
    goto :goto_1d

    .line 290
    :sswitch_2e
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long p1, v1

    .line 291
    goto :goto_1d

    .line 293
    :sswitch_36
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 294
    goto :goto_1d

    .line 298
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_3d
    if-eqz p4, :cond_1d

    .line 299
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    nop

    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_1e
        0x1 -> :sswitch_26
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_36
        0xc -> :sswitch_1b
    .end sparse-switch
.end method

.method public read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;
    .registers 9
    .param p1, "o"    # Lcom/qq/taf/jce/JceStruct;
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 926
    const/4 v2, 0x0

    .line 927
    .local v2, "ref":Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 929
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ref":Lcom/qq/taf/jce/JceStruct;
    check-cast v2, Lcom/qq/taf/jce/JceStruct;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_27

    .line 934
    .restart local v2    # "ref":Lcom/qq/taf/jce/JceStruct;
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 935
    .local v1, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 936
    iget-byte v3, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xa

    if-eq v3, v4, :cond_32

    .line 937
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 930
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "ref":Lcom/qq/taf/jce/JceStruct;
    :catch_27
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 938
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v2    # "ref":Lcom/qq/taf/jce/JceStruct;
    :cond_32
    invoke-virtual {v2, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 939
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 943
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_38
    return-object v2

    .line 940
    :cond_39
    if-eqz p3, :cond_38

    .line 941
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .registers 8
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "o":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 952
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_f

    .line 953
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 991
    .end local p1    # "o":Ljava/lang/Object;, "TT;"
    :goto_e
    return-object v1

    .line 954
    .restart local p1    # "o":Ljava/lang/Object;, "TT;"
    :cond_f
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1c

    .line 955
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_e

    .line 956
    :cond_1c
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_29

    .line 957
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_e

    .line 958
    :cond_29
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_36

    .line 959
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    .line 960
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_e

    .line 961
    .end local v0    # "i":I
    :cond_36
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_45

    .line 962
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_e

    .line 963
    :cond_45
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_53

    .line 964
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_e

    .line 965
    :cond_53
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_62

    .line 966
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_e

    .line 967
    :cond_62
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 968
    invoke-virtual {p0, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 969
    :cond_6b
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_76

    .line 970
    check-cast p1, Ljava/util/Map;

    .end local p1    # "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_e

    .line 971
    .restart local p1    # "o":Ljava/lang/Object;, "TT;"
    :cond_76
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_81

    .line 972
    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v1

    goto :goto_e

    .line 973
    .restart local p1    # "o":Ljava/lang/Object;, "TT;"
    :cond_81
    instance-of v2, p1, Lcom/qq/taf/jce/JceStruct;

    if-eqz v2, :cond_8c

    .line 974
    check-cast p1, Lcom/qq/taf/jce/JceStruct;

    .end local p1    # "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v1

    goto :goto_e

    .line 975
    .restart local p1    # "o":Ljava/lang/Object;, "TT;"
    :cond_8c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 976
    instance-of v2, p1, [B

    if-nez v2, :cond_9e

    instance-of v2, p1, [Ljava/lang/Byte;

    if-eqz v2, :cond_a6

    .line 977
    :cond_9e
    check-cast v1, [B

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v1

    goto/16 :goto_e

    .line 978
    :cond_a6
    instance-of v2, p1, [Z

    if-eqz v2, :cond_b2

    .line 979
    check-cast v1, [Z

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([ZIZ)[Z

    move-result-object v1

    goto/16 :goto_e

    .line 980
    :cond_b2
    instance-of v2, p1, [S

    if-eqz v2, :cond_be

    .line 981
    check-cast v1, [S

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([SIZ)[S

    move-result-object v1

    goto/16 :goto_e

    .line 982
    :cond_be
    instance-of v2, p1, [I

    if-eqz v2, :cond_ca

    .line 983
    check-cast v1, [I

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([IIZ)[I

    move-result-object v1

    goto/16 :goto_e

    .line 984
    :cond_ca
    instance-of v2, p1, [J

    if-eqz v2, :cond_d6

    .line 985
    check-cast v1, [J

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([JIZ)[J

    move-result-object v1

    goto/16 :goto_e

    .line 986
    :cond_d6
    instance-of v2, p1, [F

    if-eqz v2, :cond_e2

    .line 987
    check-cast v1, [F

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([FIZ)[F

    move-result-object v1

    goto/16 :goto_e

    .line 988
    :cond_e2
    instance-of v2, p1, [D

    if-eqz v2, :cond_ee

    .line 989
    check-cast v1, [D

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([DIZ)[D

    move-result-object v1

    goto/16 :goto_e

    .line 991
    :cond_ee
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "o":Ljava/lang/Object;, "TT;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_e

    .line 994
    .restart local p1    # "o":Ljava/lang/Object;, "TT;"
    :cond_f8
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "read object error: unsupport type."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 380
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 381
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 382
    .local v1, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 383
    iget-byte v4, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_88

    .line 413
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 385
    :pswitch_1b
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 386
    .local v2, "len":I
    if-gez v2, :cond_25

    .line 387
    add-int/lit16 v2, v2, 0x100

    .line 388
    :cond_25
    new-array v3, v2, [B

    .line 389
    .local v3, "ss":[B
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 391
    :try_start_2c
    new-instance p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_33} :catch_34

    .line 418
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "len":I
    .end local v3    # "ss":[B
    .restart local p1    # "s":Ljava/lang/String;
    :cond_33
    :goto_33
    return-object p1

    .line 393
    .end local p1    # "s":Ljava/lang/String;
    .restart local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v2    # "len":I
    .restart local v3    # "ss":[B
    :catch_34
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .restart local p1    # "s":Ljava/lang/String;
    goto :goto_33

    .line 399
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "len":I
    .end local v3    # "ss":[B
    :pswitch_3b
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 400
    .restart local v2    # "len":I
    const/high16 v4, 0x6400000

    if-gt v2, v4, :cond_4f

    if-ltz v2, :cond_4f

    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v2, v4, :cond_68

    .line 401
    :cond_4f
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 402
    :cond_68
    new-array v3, v2, [B

    .line 403
    .restart local v3    # "ss":[B
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 405
    :try_start_6f
    new-instance p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_76
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6f .. :try_end_76} :catch_77

    .restart local p1    # "s":Ljava/lang/String;
    goto :goto_33

    .line 407
    .end local p1    # "s":Ljava/lang/String;
    :catch_77
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .restart local p1    # "s":Ljava/lang/String;
    goto :goto_33

    .line 415
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "len":I
    .end local v3    # "ss":[B
    :cond_7e
    if-eqz p3, :cond_33

    .line 416
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    :pswitch_data_88
    .packed-switch 0x6
        :pswitch_1b
        :pswitch_3b
    .end packed-switch
.end method

.method public read(SIZ)S
    .registers 7
    .param p1, "n"    # S
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 227
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 228
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 229
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 230
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_36

    .line 241
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :sswitch_1b
    const/4 p1, 0x0

    .line 246
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1c
    :goto_1c
    return p1

    .line 235
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1d
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-short p1, v1

    .line 236
    goto :goto_1c

    .line 238
    :sswitch_25
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 239
    goto :goto_1c

    .line 243
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_2c
    if-eqz p3, :cond_1c

    .line 244
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_25
        0xc -> :sswitch_1b
    .end sparse-switch
.end method

.method public read(ZIZ)Z
    .registers 6
    .param p1, "b"    # Z
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    .line 203
    .local v0, "c":B
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public read([BIZ)[B
    .registers 12
    .param p1, "l"    # [B
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 646
    const/4 v3, 0x0

    .line 647
    .local v3, "lr":[B
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 648
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 649
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 650
    iget-byte v5, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v5, :sswitch_data_ee

    .line 674
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 652
    :sswitch_1e
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 653
    .local v1, "hh":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 654
    iget-byte v5, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v5, :cond_5b

    .line 655
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type mismatch, tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 657
    :cond_5b
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    .line 658
    .local v4, "size":I
    if-ltz v4, :cond_69

    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-le v4, v5, :cond_a4

    .line 659
    :cond_69
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid size, tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 660
    :cond_a4
    new-array v3, v4, [B

    .line 661
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 679
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "hh":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v4    # "size":I
    :cond_ab
    return-object v3

    .line 665
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_ac
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    .line 666
    .restart local v4    # "size":I
    if-ltz v4, :cond_ba

    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-le v4, v5, :cond_d3

    .line 667
    :cond_ba
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 668
    :cond_d3
    new-array v3, v4, [B

    .line 669
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d6
    if-ge v2, v4, :cond_ab

    .line 670
    aget-byte v5, v3, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v5

    aput-byte v5, v3, v2

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    .line 676
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_e3
    if-eqz p3, :cond_ab

    .line 677
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 650
    nop

    :sswitch_data_ee
    .sparse-switch
        0x9 -> :sswitch_ac
        0xd -> :sswitch_1e
    .end sparse-switch
.end method

.method public read([DIZ)[D
    .registers 12
    .param p1, "l"    # [D
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 779
    const/4 v2, 0x0

    .line 780
    .local v2, "lr":[D
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 781
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 782
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 783
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_58

    .line 794
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 785
    :pswitch_1e
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 786
    .local v3, "size":I
    if-gez v3, :cond_3d

    .line 787
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 788
    :cond_3d
    new-array v2, v3, [D

    .line 789
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_57

    .line 790
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 796
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_4d
    if-eqz p3, :cond_57

    .line 797
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 799
    :cond_57
    return-object v2

    .line 783
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method public read([FIZ)[F
    .registers 11
    .param p1, "l"    # [F
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    const/4 v2, 0x0

    .line 756
    .local v2, "lr":[F
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 757
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 758
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 759
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_58

    .line 770
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :pswitch_1e
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 762
    .local v3, "size":I
    if-gez v3, :cond_3d

    .line 763
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 764
    :cond_3d
    new-array v2, v3, [F

    .line 765
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_57

    .line 766
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v4

    aput v4, v2, v1

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 772
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_4d
    if-eqz p3, :cond_57

    .line 773
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 775
    :cond_57
    return-object v2

    .line 759
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method public read([IIZ)[I
    .registers 11
    .param p1, "l"    # [I
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 707
    const/4 v2, 0x0

    .line 708
    .local v2, "lr":[I
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 709
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 710
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 711
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_58

    .line 722
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 713
    :pswitch_1e
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 714
    .local v3, "size":I
    if-gez v3, :cond_3d

    .line 715
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_3d
    new-array v2, v3, [I

    .line 717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_57

    .line 718
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    aput v4, v2, v1

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 724
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_4d
    if-eqz p3, :cond_57

    .line 725
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 727
    :cond_57
    return-object v2

    .line 711
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method public read([JIZ)[J
    .registers 12
    .param p1, "l"    # [J
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 731
    const/4 v2, 0x0

    .line 732
    .local v2, "lr":[J
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 733
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 734
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 735
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_58

    .line 746
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 737
    :pswitch_1e
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 738
    .local v3, "size":I
    if-gez v3, :cond_3d

    .line 739
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 740
    :cond_3d
    new-array v2, v3, [J

    .line 741
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_57

    .line 742
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 748
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_4d
    if-eqz p3, :cond_57

    .line 749
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 751
    :cond_57
    return-object v2

    .line 735
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method public read([Lcom/qq/taf/jce/JceStruct;IZ)[Lcom/qq/taf/jce/JceStruct;
    .registers 5
    .param p1, "o"    # [Lcom/qq/taf/jce/JceStruct;
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 947
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/taf/jce/JceStruct;

    return-object v0
.end method

.method public read([Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 5
    .param p1, "s"    # [Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 465
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public read([SIZ)[S
    .registers 11
    .param p1, "l"    # [S
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, "lr":[S
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 685
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 686
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 687
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_58

    .line 698
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 689
    :pswitch_1e
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 690
    .local v3, "size":I
    if-gez v3, :cond_3d

    .line 691
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 692
    :cond_3d
    new-array v2, v3, [S

    .line 693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_57

    .line 694
    aget-short v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v4

    aput-short v4, v2, v1

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 700
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_4d
    if-eqz p3, :cond_57

    .line 701
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_57
    return-object v2

    .line 687
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method public read([ZIZ)[Z
    .registers 11
    .param p1, "l"    # [Z
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 622
    const/4 v2, 0x0

    .line 623
    .local v2, "lr":[Z
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 624
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 625
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 626
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_58

    .line 637
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    :pswitch_1e
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 629
    .local v3, "size":I
    if-gez v3, :cond_3d

    .line 630
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 631
    :cond_3d
    new-array v2, v3, [Z

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_57

    .line 633
    aget-boolean v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v4

    aput-boolean v4, v2, v1

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 639
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_4d
    if-eqz p3, :cond_57

    .line 640
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 642
    :cond_57
    return-object v2

    .line 626
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method public readArray(Ljava/util/List;IZ)Ljava/util/List;
    .registers 8
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;IZ)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 812
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    :cond_d
    :goto_d
    return-object v1

    .line 815
    :cond_e
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v2

    .line 816
    .local v2, "tt":[Ljava/lang/Object;, "[TT;"
    if-nez v2, :cond_1b

    const/4 v1, 0x0

    goto :goto_d

    .line 817
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v1, "ll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 819
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 6
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "l":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_d

    .line 805
    :cond_5
    new-instance v0, Lcom/qq/taf/jce/JceDecodeException;

    const-string v1, "unable to get type of key and value."

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_d
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z

    .prologue
    .line 348
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 349
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 350
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 351
    iget-byte v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v3, :pswitch_data_74

    .line 371
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :pswitch_1b
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 354
    .local v1, "len":I
    if-gez v1, :cond_25

    .line 355
    add-int/lit16 v1, v1, 0x100

    .line 356
    :cond_25
    new-array v2, v1, [B

    .line 357
    .local v2, "ss":[B
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 358
    invoke-static {v2}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    .line 376
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "len":I
    .end local v2    # "ss":[B
    :cond_30
    :goto_30
    return-object p1

    .line 362
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :pswitch_31
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 363
    .restart local v1    # "len":I
    const/high16 v3, 0x6400000

    if-gt v1, v3, :cond_45

    if-ltz v1, :cond_45

    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v1, v3, :cond_5e

    .line 364
    :cond_45
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_5e
    new-array v2, v1, [B

    .line 366
    .restart local v2    # "ss":[B
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 367
    invoke-static {v2}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    .line 369
    goto :goto_30

    .line 373
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "len":I
    .end local v2    # "ss":[B
    :cond_6a
    if-eqz p3, :cond_30

    .line 374
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    :pswitch_data_74
    .packed-switch 0x6
        :pswitch_1b
        :pswitch_31
    .end packed-switch
.end method

.method public readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V
    .registers 3
    .param p1, "hd"    # Lcom/qq/taf/jce/JceInputStream$HeadData;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    .line 89
    return-void
.end method

.method public readList(IZ)Ljava/util/List;
    .registers 16
    .param p1, "tag"    # I
    .param p2, "isRequire"    # Z

    .prologue
    .line 538
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v5, "lr":Ljava/util/List;
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 540
    new-instance v2, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v2}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 541
    .local v2, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 542
    iget-byte v10, v2, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v10, :pswitch_data_ea

    .line 613
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    const-string v11, "type mismatch."

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 544
    :pswitch_20
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v10, v11, v12}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v7

    .line 545
    .local v7, "size":I
    if-gez v7, :cond_42

    .line 546
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "size invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 547
    :cond_42
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    if-ge v3, v7, :cond_e9

    .line 548
    new-instance v9, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v9}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 549
    .local v9, "subH":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v9}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 550
    iget-byte v10, v9, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v10, :pswitch_data_f0

    .line 605
    :pswitch_52
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    const-string v11, "type mismatch."

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 552
    :pswitch_5a
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 547
    :goto_5e
    :pswitch_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 555
    :pswitch_61
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 558
    :pswitch_66
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 561
    :pswitch_6b
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 564
    :pswitch_71
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 567
    :pswitch_76
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 570
    :pswitch_7c
    iget-object v10, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 571
    .local v4, "len":I
    if-gez v4, :cond_86

    .line 572
    add-int/lit16 v4, v4, 0x100

    .line 573
    :cond_86
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 577
    .end local v4    # "len":I
    :pswitch_8a
    iget-object v10, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_5e

    .line 590
    :pswitch_94
    :try_start_94
    const-class v10, Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 591
    .local v6, "newoneClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 592
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qq/taf/jce/JceStruct;

    .line 593
    .local v8, "struct":Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {v8, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 594
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 595
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b7} :catch_b8

    goto :goto_5e

    .line 596
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "newoneClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "struct":Lcom/qq/taf/jce/JceStruct;
    :catch_b8
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 598
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type mismatch."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 602
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_d5
    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 615
    .end local v2    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v3    # "i":I
    .end local v7    # "size":I
    .end local v9    # "subH":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_df
    if-eqz p2, :cond_e9

    .line 616
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    const-string v11, "require field not exist."

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 618
    :cond_e9
    return-object v5

    .line 542
    :pswitch_data_ea
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch

    .line 550
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_61
        :pswitch_66
        :pswitch_6b
        :pswitch_71
        :pswitch_76
        :pswitch_7c
        :pswitch_8a
        :pswitch_5e
        :pswitch_5e
        :pswitch_94
        :pswitch_52
        :pswitch_d5
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .registers 5
    .param p2, "tag"    # I
    .param p3, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public readString(IZ)Ljava/lang/String;
    .registers 11
    .param p1, "tag"    # I
    .param p2, "isRequire"    # Z

    .prologue
    .line 422
    const/4 v3, 0x0

    .line 423
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 424
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 425
    .local v1, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 426
    iget-byte v5, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v5, :pswitch_data_8a

    .line 456
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :pswitch_1c
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 429
    .local v2, "len":I
    if-gez v2, :cond_26

    .line 430
    add-int/lit16 v2, v2, 0x100

    .line 431
    :cond_26
    new-array v4, v2, [B

    .line 432
    .local v4, "ss":[B
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 434
    :try_start_2d
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_34} :catch_35

    .line 461
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "len":I
    .end local v4    # "ss":[B
    .restart local v3    # "s":Ljava/lang/String;
    :cond_34
    :goto_34
    return-object v3

    .line 436
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v2    # "len":I
    .restart local v4    # "ss":[B
    :catch_35
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_34

    .line 442
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "len":I
    .end local v4    # "ss":[B
    :pswitch_3c
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 443
    .restart local v2    # "len":I
    const/high16 v5, 0x6400000

    if-gt v2, v5, :cond_50

    if-ltz v2, :cond_50

    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-le v2, v5, :cond_69

    .line 444
    :cond_50
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 445
    :cond_69
    new-array v4, v2, [B

    .line 446
    .restart local v4    # "ss":[B
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 448
    :try_start_70
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_77
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_70 .. :try_end_77} :catch_78

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_34

    .line 450
    .end local v3    # "s":Ljava/lang/String;
    :catch_78
    move-exception v0

    .line 451
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_34

    .line 458
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2    # "len":I
    .end local v4    # "ss":[B
    :cond_7f
    if-eqz p2, :cond_34

    .line 459
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    nop

    :pswitch_data_8a
    .packed-switch 0x6
        :pswitch_1c
        :pswitch_3c
    .end packed-switch
.end method

.method public readStringMap(IZ)Ljava/util/Map;
    .registers 12
    .param p1, "tag"    # I
    .param p2, "isRequire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 469
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v3, "mr":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 471
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 472
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 473
    iget-byte v6, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v6, :pswitch_data_5e

    .line 486
    new-instance v6, Lcom/qq/taf/jce/JceDecodeException;

    const-string v7, "type mismatch."

    invoke-direct {v6, v7}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 475
    :pswitch_22
    invoke-virtual {p0, v8, v8, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    .line 476
    .local v4, "size":I
    if-gez v4, :cond_41

    .line 477
    new-instance v6, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 478
    :cond_41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    if-ge v1, v4, :cond_5c

    .line 479
    invoke-virtual {p0, v8, v7}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {p0, v7, v7}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 488
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/lang/String;
    .end local v4    # "size":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_52
    if-eqz p2, :cond_5c

    .line 489
    new-instance v6, Lcom/qq/taf/jce/JceDecodeException;

    const-string v7, "require field not exist."

    invoke-direct {v6, v7}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 491
    :cond_5c
    return-object v3

    .line 473
    nop

    :pswitch_data_5e
    .packed-switch 0x8
        :pswitch_22
    .end packed-switch
.end method

.method public setServerEncoding(Ljava/lang/String;)I
    .registers 3
    .param p1, "se"    # Ljava/lang/String;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public skipToStructEnd()V
    .registers 4

    .prologue
    .line 123
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 125
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_5
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 126
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V

    .line 127
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 128
    return-void
.end method

.method public skipToTag(I)Z
    .registers 7
    .param p1, "tag"    # I

    .prologue
    const/4 v2, 0x0

    .line 104
    :try_start_1
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 106
    .local v0, "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    :goto_6
    invoke-direct {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->peakHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)I

    move-result v1

    .line 107
    .local v1, "len":I
    iget-byte v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_11

    .line 118
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "len":I
    :cond_10
    :goto_10
    return v2

    .line 110
    .restart local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v1    # "len":I
    :cond_11
    iget v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    if-gt p1, v3, :cond_1b

    .line 111
    iget v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    if-ne p1, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_10

    .line 112
    :cond_1b
    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 113
    iget-byte v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V
    :try_end_23
    .catch Lcom/qq/taf/jce/JceDecodeException; {:try_start_1 .. :try_end_23} :catch_24
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_23} :catch_26

    goto :goto_6

    .line 115
    .end local v0    # "hd":Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1    # "len":I
    :catch_24
    move-exception v3

    goto :goto_10

    .line 116
    :catch_26
    move-exception v3

    goto :goto_10
.end method

.method public warp([B)V
    .registers 2
    .param p1, "bs"    # [B

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 64
    return-void
.end method

.method public wrap([B)V
    .registers 3
    .param p1, "bs"    # [B

    .prologue
    .line 67
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 68
    return-void
.end method
