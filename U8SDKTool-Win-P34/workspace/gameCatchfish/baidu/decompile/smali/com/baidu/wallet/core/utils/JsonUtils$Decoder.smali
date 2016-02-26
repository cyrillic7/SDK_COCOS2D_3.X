.class Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/utils/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_19
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeCollection(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public static deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeMap(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/Map;

    goto :goto_9

    :cond_1d
    invoke-static {p0, p1, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private static deserializeArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_23
    const/4 v1, 0x1

    :goto_24
    if-ge v2, v3, :cond_a

    :try_start_26
    invoke-static {p0, v2, p1, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2c} :catch_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2f
    move v1, v2

    goto :goto_24

    :catch_31
    move-exception v1

    goto :goto_a
.end method

.method private static deserializeCollection(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-object v0, v1

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_53

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_53

    array-length v3, v0

    if-lez v3, :cond_53

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    :goto_28
    if-nez v3, :cond_2c

    move-object v0, v1

    goto :goto_f

    :cond_2c
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v3}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {v3}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_3e
    const/4 v1, 0x1

    :goto_3f
    :try_start_3f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_f

    invoke-static {p0, v2, v3, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_4c} :catch_51

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_4f
    move v1, v2

    goto :goto_3f

    :catch_51
    move-exception v1

    goto :goto_f

    :cond_53
    move-object v3, v1

    goto :goto_28
.end method

.method private static deserializeField(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_61

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_ad

    move-result v3

    if-eqz v3, :cond_23

    :try_start_17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1e} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_ad

    move-result-object v0

    :goto_1f
    :try_start_1f
    invoke-static {p1, p2, v0}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->setFiedlValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :goto_22
    return-void

    :cond_23
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_ad

    move-result v3

    if-eqz v3, :cond_34

    :try_start_2b
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_32} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_ad

    move-result-object v0

    goto :goto_1f

    :cond_34
    :try_start_34
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_44

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_ad

    move-result v3

    if-eqz v3, :cond_4d

    :cond_44
    :try_start_44
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_4b} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_ad

    move-result-object v0

    goto :goto_1f

    :cond_4d
    :try_start_4d
    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isBoolean(Ljava/lang/Class;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_ad

    move-result v1

    if-eqz v1, :cond_5c

    :try_start_53
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_5a} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_ad

    move-result-object v0

    goto :goto_1f

    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_61
    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_6d
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_76
    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isJSONObject(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_81
    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isObject(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_90
    invoke-static {v1}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeMap(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_1f

    :cond_a5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unknow type!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ad} :catch_ad

    :catch_ad
    move-exception v0

    goto/16 :goto_22

    :catch_b0
    move-exception v1

    goto/16 :goto_1f

    :catch_b3
    move-exception v1

    goto/16 :goto_1f

    :catch_b6
    move-exception v1

    goto/16 :goto_1f

    :catch_b9
    move-exception v1

    goto/16 :goto_1f
.end method

.method private static deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_b

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_1c
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private static deserializeMap(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_4

    :catch_18
    move-exception v0

    const/4 p0, 0x0

    :cond_1a
    return-object p0
.end method

.method private static deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-static {p0, p2, v3}, Lcom/baidu/wallet/core/utils/JsonUtils$Decoder;->deserializeField(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    :cond_18
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_26
    const-class v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_3

    :cond_34
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_52

    move-result-object v0

    goto :goto_3

    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static setFiedlValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 6

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :catch_34
    move-exception v0

    goto :goto_e

    :cond_36
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_34

    goto :goto_e
.end method
