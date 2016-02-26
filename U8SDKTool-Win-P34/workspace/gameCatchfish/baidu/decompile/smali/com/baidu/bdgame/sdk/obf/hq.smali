.class public Lcom/baidu/bdgame/sdk/obf/hq;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hr;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hq;
    .registers 5

    .prologue
    .line 37
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hq;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hq;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 38
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hq;->b(I)V

    .line 39
    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hq;->a(S)V

    .line 40
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hq;->a:Ljava/lang/String;

    .line 41
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 131
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 133
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
    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
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
            "Lcom/baidu/bdgame/sdk/obf/hr;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    if-eqz p2, :cond_6

    move v1, v2

    .line 117
    :goto_5
    return v1

    .line 53
    :cond_6
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/hr;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/hr;-><init>()V

    .line 56
    const-string v0, "ActionType"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 58
    const-string v0, "ActionType"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_5

    .line 63
    :cond_20
    :try_start_20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    packed-switch v0, :pswitch_data_9c

    .line 73
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/hr;->a(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_72

    .line 83
    :goto_2b
    const-string v0, "ActionInfo"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 86
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/iy;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iy;

    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/hr;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 91
    :cond_3e
    const-string v0, "ActivityList"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    if-eqz v4, :cond_93

    move v0, v1

    .line 95
    :goto_4d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_93

    .line 96
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 97
    if-eqz v6, :cond_90

    .line 98
    const-string v7, "ActivityName"

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 100
    const-string v0, "ActivityName"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_5

    .line 69
    :pswitch_6e
    :try_start_6e
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/hr;->a(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_2b

    .line 76
    :catch_72
    move-exception v0

    .line 77
    const-string v0, "ActionType"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_5

    .line 103
    :cond_7c
    const-string v8, "ActivityUrl"

    invoke-static {v6, v8}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    new-instance v8, Lcom/baidu/bdgame/sdk/obf/hg;

    invoke-direct {v8}, Lcom/baidu/bdgame/sdk/obf/hg;-><init>()V

    .line 106
    invoke-virtual {v8, v7}, Lcom/baidu/bdgame/sdk/obf/hg;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v8, v6}, Lcom/baidu/bdgame/sdk/obf/hg;->b(Ljava/lang/String;)V

    .line 109
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 113
    :cond_93
    invoke-virtual {v3, v5}, Lcom/baidu/bdgame/sdk/obf/hr;->a(Ljava/util/List;)V

    .line 116
    iput-object v3, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    move v1, v2

    .line 117
    goto/16 :goto_5

    .line 64
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method
