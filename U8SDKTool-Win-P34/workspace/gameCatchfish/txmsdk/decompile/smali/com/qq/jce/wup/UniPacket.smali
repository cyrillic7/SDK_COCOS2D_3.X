.class public Lcom/qq/jce/wup/UniPacket;
.super Lcom/qq/jce/wup/UniAttribute;
.source "UniPacket.java"


# static fields
.field public static final UniPacketHeadSize:I = 0x4

.field static cache__tempdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field static newCache__tempdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field protected _package:Lcom/qq/taf/RequestPacket;

.field private oldRespIret:I

.field private packetSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 103
    sput-object v0, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 17
    new-instance v0, Lcom/qq/taf/RequestPacket;

    invoke-direct {v0}, Lcom/qq/taf/RequestPacket;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    .line 20
    iput v1, p0, Lcom/qq/jce/wup/UniPacket;->packetSize:I

    .line 299
    iput v1, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 23
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "useVersion3"    # Z

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 17
    new-instance v0, Lcom/qq/taf/RequestPacket;

    invoke-direct {v0}, Lcom/qq/taf/RequestPacket;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    .line 20
    iput v1, p0, Lcom/qq/jce/wup/UniPacket;->packetSize:I

    .line 299
    iput v1, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 27
    if-eqz p1, :cond_15

    .line 28
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->useVersion3()V

    .line 33
    :goto_14
    return-void

    .line 30
    :cond_15
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    goto :goto_14
.end method

.method private parseBufferV2()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 173
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 174
    .local v0, "_is":Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    if-nez v2, :cond_2d

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v1, "h":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v1    # "h":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_2d
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qq/jce/wup/UniPacket;->cachedClassName:Ljava/util/HashMap;

    .line 183
    return-void
.end method

.method private parseBufferV3()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v1, v1, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 136
    .local v0, "_is":Lcom/qq/taf/jce/JceInputStream;
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    if-nez v1, :cond_23

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 139
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_23
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    .line 142
    return-void
.end method


# virtual methods
.method public createOldRespEncode()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 307
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 308
    .local v0, "_os":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 310
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 311
    .local v1, "oldSBuffer":[B
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    .end local v0    # "_os":Lcom/qq/taf/jce/JceOutputStream;
    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 312
    .restart local v0    # "_os":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v2, v2, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 314
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-byte v2, v2, Lcom/qq/taf/RequestPacket;->cPacketType:B

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 315
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v2, v2, Lcom/qq/taf/RequestPacket;->iRequestId:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 316
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v2, v2, Lcom/qq/taf/RequestPacket;->iMessageType:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 317
    iget v2, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 318
    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 319
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 320
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    return-object v2
.end method

.method public createResponse()Lcom/qq/jce/wup/UniPacket;
    .registers 4

    .prologue
    .line 290
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 291
    .local v0, "packet":Lcom/qq/jce/wup/UniPacket;
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    .line 292
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getServantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    .line 295
    iget-object v1, v0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v2, v2, Lcom/qq/taf/RequestPacket;->iVersion:S

    iput-short v2, v1, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 296
    return-object v0
.end method

.method public decode([B)V
    .registers 9
    .param p1, "buffer"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 189
    array-length v4, p1

    if-ge v4, v5, :cond_d

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "decode package must include size head"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_d
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 194
    .local v3, "temp":Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 195
    .local v2, "headerBytes":[B
    array-length v4, v2

    invoke-static {p1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 197
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qq/jce/wup/UniPacket;->packetSize:I

    .line 201
    :try_start_24
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v4, 0x4

    invoke-direct {v0, p1, v4}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 202
    .local v0, "_is":Lcom/qq/taf/jce/JceInputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 204
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v4, v0}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 205
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3f

    .line 206
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV3()V

    .line 216
    :goto_3e
    return-void

    .line 208
    :cond_3f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    .line 209
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV2()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_45} :catch_46

    goto :goto_3e

    .line 211
    .end local v0    # "_is":Lcom/qq/taf/jce/JceInputStream;
    :catch_46
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public decodeVersion2([B)V
    .registers 9
    .param p1, "buffer"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 150
    array-length v4, p1

    if-ge v4, v5, :cond_d

    .line 151
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "decode package must include size head"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_d
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 155
    .local v3, "temp":Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 156
    .local v2, "headerBytes":[B
    array-length v4, v2

    invoke-static {p1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 158
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qq/jce/wup/UniPacket;->packetSize:I

    .line 161
    :try_start_24
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v4, 0x4

    invoke-direct {v0, p1, v4}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 162
    .local v0, "_is":Lcom/qq/taf/jce/JceInputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v4, v0}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 165
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV2()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_37} :catch_38

    .line 170
    return-void

    .line 167
    .end local v0    # "_is":Lcom/qq/taf/jce/JceInputStream;
    :catch_38
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public decodeVersion3([B)V
    .registers 6
    .param p1, "buffer"    # [B

    .prologue
    const/4 v3, 0x4

    .line 110
    array-length v2, p1

    if-ge v2, v3, :cond_c

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decode package must include size head"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_c
    :try_start_c
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 116
    .local v0, "_is":Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v2, v0}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 118
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;->parseBufferV3()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    .line 123
    return-void

    .line 120
    .end local v0    # "_is":Lcom/qq/taf/jce/JceInputStream;
    :catch_20
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p1, "_os"    # Ljava/lang/StringBuilder;
    .param p2, "_level"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1, p2}, Lcom/qq/taf/RequestPacket;->display(Ljava/lang/StringBuilder;I)V

    .line 282
    return-void
.end method

.method public encode()[B
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 68
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    if-ne v4, v7, :cond_3c

    .line 69
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 70
    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "servantName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_22
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 73
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "funcName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_3c
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    if-nez v4, :cond_48

    .line 77
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const-string v5, ""

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    .line 79
    :cond_48
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    if-nez v4, :cond_54

    .line 80
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const-string v5, ""

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 83
    :cond_54
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 84
    .local v0, "_os":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 85
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    if-eq v4, v7, :cond_6b

    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ac

    .line 86
    :cond_6b
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 90
    :goto_70
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    .line 91
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    .end local v0    # "_os":Lcom/qq/taf/jce/JceOutputStream;
    invoke-direct {v0, v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 92
    .restart local v0    # "_os":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v4, v0}, Lcom/qq/taf/RequestPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 95
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 96
    .local v1, "bodys":[B
    array-length v3, v1

    .line 97
    .local v3, "size":I
    add-int/lit8 v4, v3, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 98
    .local v2, "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 88
    .end local v1    # "bodys":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "size":I
    :cond_ac
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    goto :goto_70
.end method

.method public getFuncName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    return-object v0
.end method

.method public getOldRespIret()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    return v0
.end method

.method public getPackageVersion()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v0, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    return v0
.end method

.method public getPacketSize()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/qq/jce/wup/UniPacket;->packetSize:I

    return v0
.end method

.method public getRequestId()I
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->iRequestId:I

    return v0
.end method

.method public getServantName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put name can not startwith . , now is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_21
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 278
    return-void
.end method

.method public setFuncName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sFuncName"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setOldRespIret(I)V
    .registers 2
    .param p1, "oldRespIret"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 337
    return-void
.end method

.method public setRequestId(I)V
    .registers 3
    .param p1, "iRequestId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->iRequestId:I

    .line 270
    return-void
.end method

.method public setServantName(Ljava/lang/String;)V
    .registers 3
    .param p1, "servantName"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public useVersion3()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    .line 55
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 56
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1}, Lcom/qq/taf/RequestPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 274
    return-void
.end method
