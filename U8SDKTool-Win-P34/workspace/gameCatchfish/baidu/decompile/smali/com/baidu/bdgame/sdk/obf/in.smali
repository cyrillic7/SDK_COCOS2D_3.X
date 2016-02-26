.class public Lcom/baidu/bdgame/sdk/obf/in;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ij;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 30
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/in;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/in;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/in;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/in;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v1, 0x165

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/in;->a(S)V

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/in;->b(I)V

    .line 37
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dm;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/in;->a:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/in;->b:Ljava/lang/String;

    .line 39
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/in;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/in;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/in;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/in;-><init>(Landroid/content/Context;)V

    .line 44
    const/16 v1, 0x17a

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/in;->a(S)V

    .line 45
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/in;->b(I)V

    .line 46
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dm;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/in;->a:Ljava/lang/String;

    .line 47
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/in;->b:Ljava/lang/String;

    .line 48
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 107
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 109
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/in;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "PayID"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/in;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_6

    move v1, v2

    .line 92
    :goto_5
    return v1

    .line 58
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    const-string v0, "CardList"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 60
    if-eqz v4, :cond_7b

    move v0, v1

    .line 61
    :goto_14
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_7b

    .line 63
    :try_start_1a
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 64
    const-string v6, "BindId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 66
    const-string v0, "BindId"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/in;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_32} :catch_33

    goto :goto_5

    .line 85
    :catch_33
    move-exception v0

    .line 86
    const-string v0, "CardList"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/in;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_5

    .line 69
    :cond_3d
    :try_start_3d
    const-string v7, "CardLast"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 71
    const-string v0, "CardLast"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/in;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_5

    .line 74
    :cond_52
    const-string v8, "CardName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 76
    const-string v0, "CardName"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/in;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_5

    .line 79
    :cond_67
    new-instance v8, Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-direct {v8}, Lcom/baidu/bdgame/sdk/obf/ij;-><init>()V

    .line 80
    invoke-virtual {v8, v6}, Lcom/baidu/bdgame/sdk/obf/ij;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v8, v7}, Lcom/baidu/bdgame/sdk/obf/ij;->b(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v8, v5}, Lcom/baidu/bdgame/sdk/obf/ij;->c(Ljava/lang/String;)V

    .line 84
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_78} :catch_33

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 91
    :cond_7b
    iput-object v3, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    move v1, v2

    .line 92
    goto :goto_5
.end method
