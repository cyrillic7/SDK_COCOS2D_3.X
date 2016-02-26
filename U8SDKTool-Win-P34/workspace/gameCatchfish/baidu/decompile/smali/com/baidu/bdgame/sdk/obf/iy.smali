.class public Lcom/baidu/bdgame/sdk/obf/iy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/iy;-><init>()V

    .line 24
    iput-object p0, v0, Lcom/baidu/bdgame/sdk/obf/iy;->a:Ljava/lang/String;

    .line 25
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/iy;-><init>()V

    .line 36
    iput-object p0, v0, Lcom/baidu/bdgame/sdk/obf/iy;->c:Lorg/json/JSONObject;

    .line 37
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/iy;-><init>()V

    .line 30
    iput-object p0, v0, Lcom/baidu/bdgame/sdk/obf/iy;->b:Ljava/lang/String;

    .line 31
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/iy;)Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 3

    .prologue
    .line 47
    if-nez p1, :cond_3

    .line 64
    :cond_2
    :goto_2
    return-object p0

    .line 52
    :cond_3
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/iy;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 53
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/iy;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->a:Ljava/lang/String;

    .line 56
    :cond_f
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/iy;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 57
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/iy;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->b:Ljava/lang/String;

    .line 60
    :cond_1b
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/iy;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/iy;->c:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->c:Lorg/json/JSONObject;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 69
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 73
    :try_start_12
    const-string v0, "ActionType"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v0, "ActionInfo"

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iy;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_20} :catch_55

    .line 79
    :goto_20
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 83
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    :try_start_30
    const-string v0, "ActionType"

    const-string v3, "2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v0, "ActionInfo"

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iy;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3e} :catch_5a

    .line 91
    :goto_3e
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    :cond_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_4a

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iy;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 97
    :cond_4a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5f

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_54
    return-object v0

    .line 75
    :catch_55
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_20

    .line 87
    :catch_5a
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3e

    .line 101
    :cond_5f
    const-string v0, ""

    goto :goto_54
.end method
