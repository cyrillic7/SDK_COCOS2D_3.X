.class public Lcom/alipay/sdk/protocol/ElementAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->g:Z

    .line 27
    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->h:Z

    .line 34
    iput-object p1, p0, Lcom/alipay/sdk/protocol/ElementAction;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;
    .registers 14

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->i()Z

    move-result v5

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->j()Z

    move-result v6

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->k()Z

    move-result v7

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->a()Lorg/json/JSONObject;

    move-result-object v11

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 134
    :goto_7
    return-object v0

    .line 121
    :cond_8
    new-instance v1, Lcom/alipay/sdk/protocol/ElementAction;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/protocol/ElementAction;-><init>(Ljava/lang/String;)V

    .line 122
    iput-object p0, v1, Lcom/alipay/sdk/protocol/ElementAction;->a:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :goto_15
    iput-object v0, v1, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    .line 124
    iput-object p2, v1, Lcom/alipay/sdk/protocol/ElementAction;->c:Ljava/lang/String;

    .line 125
    iput-object p3, v1, Lcom/alipay/sdk/protocol/ElementAction;->d:Ljava/lang/String;

    .line 126
    iput-object p4, v1, Lcom/alipay/sdk/protocol/ElementAction;->e:Ljava/lang/String;

    .line 127
    iput-boolean p5, v1, Lcom/alipay/sdk/protocol/ElementAction;->f:Z

    .line 128
    iput-boolean p6, v1, Lcom/alipay/sdk/protocol/ElementAction;->g:Z

    .line 129
    iput-boolean p7, v1, Lcom/alipay/sdk/protocol/ElementAction;->h:Z

    .line 130
    iput-object p8, v1, Lcom/alipay/sdk/protocol/ElementAction;->i:Ljava/lang/String;

    .line 131
    iput-object p9, v1, Lcom/alipay/sdk/protocol/ElementAction;->j:Ljava/lang/String;

    .line 132
    iput-object p10, v1, Lcom/alipay/sdk/protocol/ElementAction;->k:Ljava/lang/String;

    .line 133
    iput-object p11, v1, Lcom/alipay/sdk/protocol/ElementAction;->l:Lorg/json/JSONObject;

    move-object v0, v1

    .line 134
    goto :goto_7

    .line 123
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 55
    .line 56
    if-eqz p0, :cond_d0

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 57
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_12
    if-eqz p0, :cond_cd

    const-string v1, "host"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 61
    const-string v1, "host"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_22
    if-eqz p0, :cond_ca

    const-string v2, "params"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 65
    const-string v2, "params"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    :goto_32
    if-eqz p0, :cond_c7

    const-string v3, "enctype"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 69
    const-string v3, "enctype"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    :goto_42
    if-eqz p0, :cond_52

    const-string v5, "request_param"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 73
    const-string v4, "request_param"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_52
    if-eqz p0, :cond_c5

    const-string v5, "validate"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 77
    const-string v5, "validate"

    invoke-virtual {p0, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 81
    :goto_62
    if-eqz p0, :cond_c3

    const-string v6, "https"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 82
    const-string v6, "https"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c1

    move v6, v7

    .line 86
    :goto_75
    if-eqz p0, :cond_85

    const-string v8, "formSubmit"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 87
    const-string v7, "formSubmit"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 90
    :cond_85
    const-string v8, ""

    .line 91
    if-eqz p0, :cond_97

    const-string v9, "namespace"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 92
    const-string v8, "namespace"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    :cond_97
    const-string v9, ""

    .line 96
    if-eqz p0, :cond_a9

    const-string v10, "apiVersion"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 97
    const-string v9, "apiVersion"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    :cond_a9
    const-string v10, ""

    .line 101
    if-eqz p0, :cond_bb

    const-string v11, "apiName"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_bb

    .line 102
    const-string v10, "apiName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_bb
    move-object v11, p0

    .line 105
    invoke-static/range {v0 .. v11}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    return-object v0

    .line 82
    :cond_c1
    const/4 v6, 0x0

    goto :goto_75

    :cond_c3
    move v6, v7

    goto :goto_75

    :cond_c5
    move v5, v7

    goto :goto_62

    :cond_c7
    move-object v3, v4

    goto/16 :goto_42

    :cond_ca
    move-object v2, v4

    goto/16 :goto_32

    :cond_cd
    move-object v1, v4

    goto/16 :goto_22

    :cond_d0
    move-object v0, v4

    goto/16 :goto_12
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 111
    if-eqz v11, :cond_d3

    const-string v0, "name"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    const-string v0, "name"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    if-eqz v11, :cond_d0

    const-string v1, "host"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "host"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_26
    if-eqz v11, :cond_cd

    const-string v2, "params"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string v2, "params"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_36
    if-eqz v11, :cond_ca

    const-string v3, "enctype"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ca

    const-string v3, "enctype"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_46
    if-eqz v11, :cond_56

    const-string v5, "request_param"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    const-string v4, "request_param"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_56
    if-eqz v11, :cond_c8

    const-string v5, "validate"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    const-string v5, "validate"

    invoke-virtual {v11, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_66
    if-eqz v11, :cond_c6

    const-string v6, "https"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    const-string v6, "https"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c4

    move v6, v7

    :goto_79
    if-eqz v11, :cond_89

    const-string v8, "formSubmit"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_89

    const-string v7, "formSubmit"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_89
    const-string v8, ""

    if-eqz v11, :cond_9b

    const-string v9, "namespace"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9b

    const-string v8, "namespace"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_9b
    const-string v9, ""

    if-eqz v11, :cond_ad

    const-string v10, "apiVersion"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ad

    const-string v9, "apiVersion"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_ad
    const-string v10, ""

    if-eqz v11, :cond_bf

    const-string v12, "apiName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_bf

    const-string v10, "apiName"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_bf
    invoke-static/range {v0 .. v11}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    return-object v0

    :cond_c4
    const/4 v6, 0x0

    goto :goto_79

    :cond_c6
    move v6, v7

    goto :goto_79

    :cond_c8
    move v5, v7

    goto :goto_66

    :cond_ca
    move-object v3, v4

    goto/16 :goto_46

    :cond_cd
    move-object v2, v4

    goto/16 :goto_36

    :cond_d0
    move-object v1, v4

    goto/16 :goto_26

    :cond_d3
    move-object v0, v4

    goto/16 :goto_16
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    sget-object v0, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/sdk/protocol/ElementAction;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 166
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_8
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->f:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->g:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->h:Z

    return v0
.end method
