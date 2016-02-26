.class Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/utils/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    .registers 4

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeNull(Lorg/json/JSONStringer;)V

    :goto_9
    return-object p0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeRaw(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    invoke-static {v0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeArray(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_9

    :cond_22
    invoke-static {v0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2e

    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeCollection(Lorg/json/JSONStringer;Ljava/util/Collection;)V

    goto :goto_9

    :cond_2e
    invoke-static {v0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3a

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeMap(Lorg/json/JSONStringer;Ljava/util/Map;)V

    goto :goto_9

    :cond_3a
    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private static serializeArray(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    const/4 v0, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-object p0

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method private static serializeCollection(Lorg/json/JSONStringer;Ljava/util/Collection;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_7

    :catch_15
    move-exception v0

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_15

    goto :goto_16
.end method

.method private static serializeMap(Lorg/json/JSONStringer;Ljava/util/Map;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_b

    :catch_28
    move-exception v0

    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_28

    goto :goto_29
.end method

.method private static serializeNull(Lorg/json/JSONStringer;)V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 11

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    const-class v0, Ljava/lang/ClassLoader;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_39

    const-class v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_39

    const-class v0, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_39
    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_3d
    const/4 v0, 0x1

    :try_start_3e
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_60

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :cond_60
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6a} :catch_6b

    goto :goto_39

    :catch_6b
    move-exception v0

    goto :goto_2
.end method

.method private static serializeObject(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private static serializeRaw(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method
