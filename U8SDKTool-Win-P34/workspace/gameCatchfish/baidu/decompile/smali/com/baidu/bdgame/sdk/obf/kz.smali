.class public Lcom/baidu/bdgame/sdk/obf/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    if-nez p0, :cond_4

    .line 41
    :cond_3
    :goto_3
    return-object v0

    .line 28
    :cond_4
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_2e

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 35
    :cond_1e
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 38
    :goto_2a
    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_2e
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2a
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    if-nez v1, :cond_8

    .line 60
    :cond_7
    :goto_7
    return-object v0

    .line 57
    :cond_8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_8

    .line 71
    :cond_7
    :goto_7
    return-object v1

    .line 68
    :cond_8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 71
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_18

    check-cast v0, Ljava/lang/Boolean;

    :goto_16
    move-object v1, v0

    goto :goto_7

    :cond_18
    move-object v0, v1

    goto :goto_16
.end method

.method public static b([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_4

    .line 48
    :goto_3
    return-object v0

    .line 46
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_b

    move-object v0, v1

    goto :goto_3

    .line 47
    :catch_b
    move-exception v1

    goto :goto_3
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    if-nez v1, :cond_8

    .line 88
    :cond_7
    :goto_7
    return-object v0

    .line 79
    :cond_8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 83
    :try_start_10
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_1b} :catch_1d

    move-result-object v0

    goto :goto_7

    .line 84
    :catch_1d
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_7
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    if-nez v0, :cond_8

    .line 100
    :cond_7
    :goto_7
    return-object v1

    .line 96
    :cond_8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 100
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_18

    check-cast v0, Lorg/json/JSONArray;

    :goto_16
    move-object v1, v0

    goto :goto_7

    :cond_18
    move-object v0, v1

    goto :goto_16
.end method

.method public static e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    if-nez v0, :cond_8

    .line 112
    :cond_7
    :goto_7
    return-object v1

    .line 108
    :cond_8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 112
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_18

    check-cast v0, Lorg/json/JSONObject;

    :goto_16
    move-object v1, v0

    goto :goto_7

    :cond_18
    move-object v0, v1

    goto :goto_16
.end method
