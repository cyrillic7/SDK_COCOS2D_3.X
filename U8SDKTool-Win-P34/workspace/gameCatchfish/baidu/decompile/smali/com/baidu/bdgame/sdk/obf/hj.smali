.class public Lcom/baidu/bdgame/sdk/obf/hj;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hi;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x12fs


# instance fields
.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/baidu/bdgame/sdk/obf/hj;
    .registers 9

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hj;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->b(I)V

    .line 44
    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->a(S)V

    .line 45
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hj;->b:Ljava/lang/String;

    .line 46
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/hj;->g:Ljava/lang/String;

    .line 47
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/hj;->h:Ljava/lang/String;

    .line 48
    iput p4, v0, Lcom/baidu/bdgame/sdk/obf/hj;->i:I

    .line 49
    iput p5, v0, Lcom/baidu/bdgame/sdk/obf/hj;->j:I

    .line 50
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 150
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 152
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

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "OrderType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "OrderTime"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "PageSize"

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/hj;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string v1, "PageIndex"

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/hj;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/hi;",
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

    .line 144
    :goto_3
    return v1

    .line 72
    :cond_4
    const-string v1, "TotalPage"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v12

    .line 73
    if-nez v12, :cond_1a

    .line 74
    const-string v1, "TotalPage"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

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

    move-result-object v13

    .line 78
    if-nez v13, :cond_30

    .line 79
    const-string v1, "OrderList"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 80
    const/4 v1, 0x0

    goto :goto_3

    .line 82
    :cond_30
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_141

    .line 84
    const/4 v1, 0x0

    move v11, v1

    :goto_3d
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_141

    .line 86
    :try_start_43
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    const-string v2, "AppName"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 89
    const-string v1, "AppName"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 90
    const/4 v1, 0x0

    goto :goto_3

    .line 92
    :cond_5f
    const-string v3, "OrderType"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 94
    const-string v1, "OrderType"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 95
    const/4 v1, 0x0

    goto :goto_3

    .line 97
    :cond_77
    const-string v4, "CashOrderSerial"

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 99
    const-string v1, "CashOrderSerial"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 100
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 102
    :cond_90
    const-string v5, "ItemName"

    invoke-static {v1, v5}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 104
    const-string v1, "ItemName"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 105
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 107
    :cond_a9
    const-string v6, "Amount"

    invoke-static {v1, v6}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 109
    const-string v1, "Amount"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 110
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 112
    :cond_c2
    const-string v7, "StartDateTime"

    invoke-static {v1, v7}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 114
    const-string v1, "StartDateTime"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 115
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 117
    :cond_db
    const-string v8, "OrderStatus"

    invoke-static {v1, v8}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 119
    const-string v1, "OrderStatus"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 120
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 122
    :cond_f4
    const-string v9, "StateMsg"

    invoke-static {v1, v9}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 124
    const-string v1, "StateMsg"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 125
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 127
    :cond_10d
    const-string v10, "PayName"

    invoke-static {v1, v10}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 129
    const-string v1, "PayName"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 130
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 132
    :cond_126
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/hh;

    invoke-direct/range {v1 .. v10}, Lcom/baidu/bdgame/sdk/obf/hh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12e
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_12e} :catch_133

    .line 84
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_3d

    .line 136
    :catch_133
    move-exception v1

    .line 137
    const-string v1, "OrderList"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/hj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 138
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 142
    :cond_141
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/hi;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v14, v2}, Lcom/baidu/bdgame/sdk/obf/hi;-><init>(Ljava/util/List;I)V

    .line 143
    move-object/from16 v0, p3

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 144
    const/4 v1, 0x1

    goto/16 :goto_3
.end method
