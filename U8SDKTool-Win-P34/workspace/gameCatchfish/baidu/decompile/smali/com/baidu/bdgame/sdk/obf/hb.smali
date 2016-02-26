.class public Lcom/baidu/bdgame/sdk/obf/hb;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ha;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x12es


# instance fields
.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hb;
    .registers 9

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hb;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->b(I)V

    .line 44
    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->a(S)V

    .line 45
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hb;->b:Ljava/lang/String;

    .line 46
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/hb;->g:Ljava/lang/String;

    .line 47
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/hb;->h:Ljava/lang/String;

    .line 48
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/hb;->i:Ljava/lang/String;

    .line 49
    iput-object p5, v0, Lcom/baidu/bdgame/sdk/obf/hb;->j:Ljava/lang/String;

    .line 50
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 135
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 137
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
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "OrderType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "OrderTime"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "PageSize"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "PageIndex"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hb;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ha;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p2, :cond_4

    .line 70
    const/4 v1, 0x1

    .line 129
    :goto_3
    return v1

    .line 72
    :cond_4
    const-string v1, "TotalPage"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v10

    .line 73
    if-nez v10, :cond_1a

    .line 74
    const-string v1, "TotalPage"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 75
    const/4 v1, 0x0

    goto :goto_3

    .line 77
    :cond_1a
    const-string v1, "OrderList"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 78
    if-nez v11, :cond_30

    .line 79
    const-string v1, "OrderList"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 80
    const/4 v1, 0x0

    goto :goto_3

    .line 82
    :cond_30
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e9

    .line 84
    const/4 v1, 0x0

    move v9, v1

    :goto_3d
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_e9

    .line 86
    :try_start_43
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    const-string v2, "OrderType"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 89
    if-nez v2, :cond_5b

    .line 90
    const-string v1, "OrderType"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 91
    const/4 v1, 0x0

    goto :goto_3

    .line 93
    :cond_5b
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 95
    const-string v3, "OrderSerial"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 97
    const-string v1, "OrderSerial"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 98
    const/4 v1, 0x0

    goto :goto_3

    .line 100
    :cond_77
    const-string v4, "Amount"

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 102
    const-string v1, "Amount"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 105
    :cond_90
    const-string v5, "StartDateTime"

    invoke-static {v1, v5}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 107
    const-string v1, "StartDateTime"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 108
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 110
    :cond_a9
    const-string v6, "Channel"

    invoke-static {v1, v6}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 112
    const-string v1, "Channel"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 113
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 115
    :cond_c2
    const-string v7, "OrderMoney"

    invoke-static {v1, v7}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    const-string v8, "ItemName"

    invoke-static {v1, v8}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-direct/range {v1 .. v8}, Lcom/baidu/bdgame/sdk/obf/gz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d6
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_d6} :catch_db

    .line 84
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_3d

    .line 121
    :catch_db
    move-exception v1

    .line 122
    const-string v1, "OrderList"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 123
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 127
    :cond_e9
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ha;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v12, v2}, Lcom/baidu/bdgame/sdk/obf/ha;-><init>(Ljava/util/List;I)V

    .line 128
    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 129
    const/4 v1, 0x1

    goto/16 :goto_3
.end method
