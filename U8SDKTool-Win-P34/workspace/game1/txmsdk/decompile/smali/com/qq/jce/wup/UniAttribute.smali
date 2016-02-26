.class public Lcom/qq/jce/wup/UniAttribute;
.super Lcom/qq/jce/wup/OldUniAttribute;
.source "UniAttribute.java"


# instance fields
.field _is:Lcom/qq/taf/jce/JceInputStream;

.field protected _newData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private cachedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/jce/wup/OldUniAttribute;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    return-void
.end method

.method private decodeData([BLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "proxy"    # Ljava/lang/Object;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 259
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "o":Ljava/lang/Object;
    return-object v0
.end method

.method private saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method


# virtual methods
.method public clearCacheData()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public decode([B)V
    .registers 7
    .param p1, "buffer"    # [B

    .prologue
    const/4 v4, 0x0

    .line 417
    :try_start_1
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->decode([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 426
    :goto_4
    return-void

    .line 419
    :catch_5
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 421
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 422
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 423
    .local v0, "_tempdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, v0, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    goto :goto_4
.end method

.method public decodeVersion2([B)V
    .registers 2
    .param p1, "buffer"    # [B

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->decode([B)V

    .line 409
    return-void
.end method

.method public decodeVersion3([B)V
    .registers 6
    .param p1, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 397
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 398
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 399
    .local v0, "_tempdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v1, ""

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    .line 401
    return-void
.end method

.method public encode()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v1, :cond_1d

    .line 383
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 384
    .local v0, "_os":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 386
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 388
    .end local v0    # "_os":Lcom/qq/taf/jce/JceOutputStream;
    :goto_1c
    return-object v1

    :cond_1d
    invoke-super {p0}, Lcom/qq/jce/wup/OldUniAttribute;->encode()[B

    move-result-object v1

    goto :goto_1c
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qq/jce/wup/UniAttribute;->get(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qq/jce/wup/UniAttribute;->get(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 253
    .end local p3    # "defaultValue":Ljava/lang/Object;
    :goto_8
    return-object p3

    .restart local p3    # "defaultValue":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_8
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .param p3, "initialize"    # Z
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is encoded by new version, please use getByClass(String name, T proxy, Object defaultValue)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/qq/jce/wup/OldUniAttribute;->get(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is encoded by new version, please use getByClass(String name, T proxy)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/qq/jce/wup/OldUniAttribute;->get(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .local p2, "proxy":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 138
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v7, :cond_37

    .line 139
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 174
    :cond_e
    :goto_e
    return-object v5

    .line 141
    :cond_f
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 142
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_e

    .line 144
    :cond_1e
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 146
    .local v1, "data":[B
    :try_start_26
    invoke-direct {p0, v1, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_e

    .line 148
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_e

    .line 151
    .end local v5    # "o":Ljava/lang/Object;
    :catch_30
    move-exception v3

    .line 152
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 156
    .end local v1    # "data":[B
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_37
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 158
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 159
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_e

    .line 161
    :cond_4e
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 162
    .local v6, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 163
    .local v0, "className":Ljava/lang/String;
    new-array v1, v8, [B

    .line 164
    .restart local v1    # "data":[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "className":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 166
    .restart local v0    # "className":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":[B
    check-cast v1, [B

    .line 170
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1    # "data":[B
    :cond_79
    :try_start_79
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v7, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 171
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v8, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 172
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, p2, v8, v9}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 173
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_90} :catch_92

    goto/16 :goto_e

    .line 175
    .end local v5    # "o":Ljava/lang/Object;
    :catch_92
    move-exception v3

    .line 176
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public getByClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .local p2, "proxy":Ljava/lang/Object;, "TT;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 194
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v7, :cond_37

    .line 195
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 230
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_d
    :goto_d
    return-object p3

    .line 197
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_e
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 198
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_d

    .line 200
    :cond_1d
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 202
    .local v1, "data":[B
    :try_start_25
    invoke-direct {p0, v1, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 203
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_2e

    .line 204
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_30

    :cond_2e
    move-object p3, v5

    .line 206
    goto :goto_d

    .line 207
    .end local v5    # "o":Ljava/lang/Object;
    :catch_30
    move-exception v3

    .line 208
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 212
    .end local v1    # "data":[B
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_37
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 214
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 215
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_d

    .line 217
    :cond_4e
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 218
    .local v6, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 219
    .local v0, "className":Ljava/lang/String;
    new-array v1, v8, [B

    .line 220
    .restart local v1    # "data":[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "className":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 222
    .restart local v0    # "className":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":[B
    check-cast v1, [B

    .line 226
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1    # "data":[B
    :cond_79
    :try_start_79
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v7, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 227
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v8, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 228
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, p2, v8, v9}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 229
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_90} :catch_93

    move-object p3, v5

    .line 230
    goto/16 :goto_d

    .line 231
    .end local v5    # "o":Ljava/lang/Object;
    :catch_93
    move-exception v3

    .line 232
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public bridge synthetic getEncodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/qq/jce/wup/OldUniAttribute;->getEncodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qq/jce/wup/UniAttribute;->getJceStruct(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 110
    const/4 v2, 0x0

    .line 120
    :cond_9
    :goto_9
    return-object v2

    .line 111
    :cond_a
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 112
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9

    .line 114
    :cond_19
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 116
    .local v0, "data":[B
    :try_start_21
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_9

    .line 118
    invoke-direct {p0, p1, v2}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_9

    .line 121
    .end local v2    # "o":Ljava/lang/Object;
    :catch_2b
    move-exception v1

    .line 122
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v3, v1}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getJceStruct(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is encoded by new version, please use getJceStruct(String name,T proxy)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/qq/jce/wup/OldUniAttribute;->getJceStruct(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    .line 46
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 48
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_e
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 55
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    goto :goto_a
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
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
    .line 79
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v2, :cond_40

    .line 80
    if-nez p1, :cond_e

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "put key can not is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_e
    if-nez p2, :cond_18

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "put value can not is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_18
    instance-of v2, p2, Ljava/util/Set;

    if-eqz v2, :cond_24

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can not support Set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_24
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 90
    .local v0, "_out":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 93
    .local v1, "_sBuffer":[B
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v0    # "_out":Lcom/qq/taf/jce/JceOutputStream;
    .end local v1    # "_sBuffer":[B
    :goto_3f
    return-void

    .line 95
    :cond_40
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/OldUniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qq/jce/wup/UniAttribute;->remove(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .local p2, "proxy":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 367
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 376
    :goto_9
    return-object v1

    .line 370
    :cond_a
    if-eqz p2, :cond_19

    .line 371
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 372
    .local v0, "data":[B
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 373
    .local v1, "o":Ljava/lang/Object;
    goto :goto_9

    .line 375
    .end local v0    # "data":[B
    .end local v1    # "o":Ljava/lang/Object;
    :cond_19
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public remove(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v1, :cond_14

    .line 344
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 351
    :goto_d
    return-object v0

    .line 347
    :cond_e
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 351
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/qq/jce/wup/OldUniAttribute;->remove(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public bridge synthetic setEncodeName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->setEncodeName(Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 62
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_a
.end method

.method public useVersion3()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    .line 31
    return-void
.end method
