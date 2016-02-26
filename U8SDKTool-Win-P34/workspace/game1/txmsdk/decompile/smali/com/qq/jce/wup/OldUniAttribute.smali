.class Lcom/qq/jce/wup/OldUniAttribute;
.super Ljava/lang/Object;
.source "OldUniAttribute.java"


# instance fields
.field protected _data:Ljava/util/HashMap;
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

.field _is:Lcom/qq/taf/jce/JceInputStream;

.field protected cachedClassName:Ljava/util/HashMap;
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

.field protected encodeName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    .line 32
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    return-void
.end method

.method private checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 11
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "listTpye":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 285
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only byte[] is supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 287
    :cond_27
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3a

    .line 288
    const-string v5, "java.util.List"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 323
    :goto_39
    return-void

    .line 291
    :cond_3a
    const-string v5, "Array"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 295
    :cond_45
    instance-of v5, p2, Ljava/lang/reflect/Array;

    if-eqz v5, :cond_51

    .line 296
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can not support Array, please use List"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    :cond_51
    instance-of v5, p2, Ljava/util/List;

    if-eqz v5, :cond_71

    .line 298
    const-string v5, "java.util.List"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, p2

    .line 299
    check-cast v2, Ljava/util/List;

    .line 300
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6b

    .line 301
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_39

    .line 303
    :cond_6b
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 306
    .end local v2    # "list":Ljava/util/List;
    :cond_71
    instance-of v5, p2, Ljava/util/Map;

    if-eqz v5, :cond_ad

    .line 307
    const-string v5, "java.util.Map"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p2

    .line 308
    check-cast v3, Ljava/util/Map;

    .line 309
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_a2

    .line 310
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    .local v0, "it":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-direct {p0, p1, v4}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_39

    .line 316
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a2
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 321
    .end local v3    # "map":Ljava/util/Map;
    :cond_ad
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method

.method private getCacheProxy(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "proxy":Ljava/lang/Object;
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 190
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    :goto_f
    return-object v0

    .line 192
    :cond_10
    invoke-static {p1, p2, p3}, Lcom/qq/jce/wup/BasicClassTypeUtil;->createClassByUni(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method private saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method


# virtual methods
.method public clearCacheData()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decode([B)V
    .registers 8
    .param p1, "buffer"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    iget-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 334
    iget-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v3, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 336
    .local v0, "_tempdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;[B>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 337
    .local v1, "h":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, v0, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    .line 340
    return-void
.end method

.method public encode()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 326
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 327
    .local v0, "_os":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 329
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 16
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
    const/4 v9, 0x0

    .line 212
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 236
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_9
    return-object p2

    .line 214
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_a
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 215
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_9

    .line 217
    :cond_19
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 218
    .local v6, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v0, ""

    .line 219
    .local v0, "className":Ljava/lang/String;
    new-array v1, v9, [B

    .line 220
    .local v1, "data":[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

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
    :cond_45
    :try_start_45
    invoke-direct {p0, v0, p3, p4}, Lcom/qq/jce/wup/OldUniAttribute;->getCacheProxy(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    .line 227
    .local v7, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v8, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 228
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v9, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 230
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 231
    .local v5, "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_60} :catch_62

    move-object p2, v5

    .line 232
    goto :goto_9

    .line 233
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "proxy":Ljava/lang/Object;, "TT;"
    :catch_62
    move-exception v3

    .line 234
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public get(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 15
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
    const/4 v9, 0x0

    .line 158
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 159
    const/4 v5, 0x0

    .line 178
    :goto_a
    return-object v5

    .line 160
    :cond_b
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 161
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    .line 163
    :cond_1a
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 164
    .local v6, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "className":Ljava/lang/String;
    new-array v1, v9, [B

    .line 166
    .local v1, "data":[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 167
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "className":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 168
    .restart local v0    # "className":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":[B
    check-cast v1, [B

    .line 172
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1    # "data":[B
    :cond_45
    :try_start_45
    invoke-direct {p0, v0, p2, p3}, Lcom/qq/jce/wup/OldUniAttribute;->getCacheProxy(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    .line 173
    .local v7, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v8, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 174
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v9, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 176
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 177
    .local v5, "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_60} :catch_61

    goto :goto_a

    .line 179
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "proxy":Ljava/lang/Object;, "TT;"
    :catch_61
    move-exception v3

    .line 180
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    new-instance v8, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v8, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method public getEncodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 15
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
    const/4 v9, 0x0

    .line 119
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 120
    const/4 v5, 0x0

    .line 139
    :goto_a
    return-object v5

    .line 121
    :cond_b
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 122
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    .line 124
    :cond_1a
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 125
    .local v6, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "className":Ljava/lang/String;
    new-array v1, v9, [B

    .line 127
    .local v1, "data":[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "className":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 129
    .restart local v0    # "className":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":[B
    check-cast v1, [B

    .line 133
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1    # "data":[B
    :cond_45
    :try_start_45
    invoke-direct {p0, v0, p2, p3}, Lcom/qq/jce/wup/OldUniAttribute;->getCacheProxy(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    .line 134
    .local v7, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v8, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 135
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v9, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 137
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    check-cast v7, Lcom/qq/taf/jce/JceStruct;

    .end local v7    # "proxy":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->directRead(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v5

    .line 138
    .local v5, "o":Lcom/qq/taf/jce/JceStruct;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_62} :catch_63

    goto :goto_a

    .line 140
    .end local v5    # "o":Lcom/qq/taf/jce/JceStruct;
    :catch_63
    move-exception v3

    .line 141
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    new-instance v8, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v8, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v8
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
    .line 64
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
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
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    .line 86
    if-nez p1, :cond_b

    .line 87
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "put key can not is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_b
    if-nez p2, :cond_15

    .line 90
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "put value can not is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_15
    instance-of v5, p2, Ljava/util/Set;

    if-eqz v5, :cond_21

    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can not support Set"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_21
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 96
    .local v0, "_out":Lcom/qq/taf/jce/JceOutputStream;
    iget-object v5, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 97
    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 98
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 99
    .local v1, "_sBuffer":[B
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v4, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v3, "listType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v3, p2}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 102
    invoke-static {v3}, Lcom/qq/jce/wup/BasicClassTypeUtil;->transTypeList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v5, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v5, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public remove(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 14
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
    const/4 v8, 0x0

    .line 252
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 253
    const/4 v7, 0x0

    .line 267
    :goto_a
    return-object v7

    .line 255
    :cond_b
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 256
    .local v5, "pair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v0, ""

    .line 257
    .local v0, "className":Ljava/lang/String;
    new-array v1, v8, [B

    .line 258
    .local v1, "data":[B
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 259
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "className":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 260
    .restart local v0    # "className":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":[B
    check-cast v1, [B

    .line 264
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1    # "data":[B
    :cond_37
    :try_start_37
    invoke-static {v0, p2, p3}, Lcom/qq/jce/wup/BasicClassTypeUtil;->createClassByUni(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    .line 265
    .local v6, "proxy":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v7, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 266
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 267
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4e} :catch_50

    move-result-object v7

    goto :goto_a

    .line 268
    .end local v6    # "proxy":Ljava/lang/Object;, "TT;"
    :catch_50
    move-exception v3

    .line 269
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public setEncodeName(Ljava/lang/String;)V
    .registers 2
    .param p1, "encodeName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
