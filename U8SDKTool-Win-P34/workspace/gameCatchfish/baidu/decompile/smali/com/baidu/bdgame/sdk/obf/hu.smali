.class public Lcom/baidu/bdgame/sdk/obf/hu;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hu;
    .registers 5

    .prologue
    .line 39
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hu;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 40
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hu;->b(I)V

    .line 41
    const/16 v1, 0x176

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hu;->a(S)V

    .line 42
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hu;->a:Ljava/lang/String;

    .line 43
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 102
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 104
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
    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
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
            "Lcom/baidu/bdgame/sdk/obf/hv;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 51
    if-eqz p2, :cond_4

    .line 88
    :goto_3
    return v8

    .line 55
    :cond_4
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/hv;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/hv;-><init>()V

    .line 57
    const-string v0, "ActivityList"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_53

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_50

    .line 62
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_2f

    .line 65
    const-string v5, "ActivityId"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 61
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 70
    :cond_32
    const-string v6, "ActivityMsg"

    invoke-static {v4, v6}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    const-string v7, "ActivityUrl"

    invoke-static {v4, v7}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v7, Lcom/baidu/bdgame/sdk/obf/hw;

    invoke-direct {v7}, Lcom/baidu/bdgame/sdk/obf/hw;-><init>()V

    .line 75
    invoke-virtual {v7, v5}, Lcom/baidu/bdgame/sdk/obf/hw;->c(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v7, v6}, Lcom/baidu/bdgame/sdk/obf/hw;->a(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v7, v4}, Lcom/baidu/bdgame/sdk/obf/hw;->b(Ljava/lang/String;)V

    .line 79
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 82
    :cond_50
    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/hv;->a(Ljava/util/List;)V

    .line 85
    :cond_53
    const-string v0, "ActivityInfo"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/hv;->a(Lorg/json/JSONObject;)V

    .line 87
    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_3
.end method
