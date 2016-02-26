.class public Lcom/baidu/bdgame/sdk/obf/hs;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:S = 0x12ds

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;Lcom/baidu/bdgame/sdk/obf/hs$1;)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;
    .registers 5

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hs$1;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hs$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 58
    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hs;->a(S)V

    .line 59
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hs;->b(I)V

    .line 60
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hs;->a:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/bdgame/sdk/obf/hs;->b:I

    .line 62
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 66
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hs$2;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hs$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 75
    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hs;->a(S)V

    .line 76
    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/hs;->b(I)V

    .line 77
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hs;->a:Ljava/lang/String;

    .line 78
    iput v3, v0, Lcom/baidu/bdgame/sdk/obf/hs;->b:I

    .line 79
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hs$3;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hs$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 92
    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hs;->a(S)V

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hs;->b(I)V

    .line 94
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/hs;->a:Ljava/lang/String;

    .line 95
    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/bdgame/sdk/obf/hs;->b:I

    .line 96
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 271
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 273
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
    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "BalanceType"

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/hs;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 2

    .prologue
    .line 46
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p2, :cond_4

    .line 106
    const/4 v2, 0x1

    .line 256
    :goto_3
    return v2

    .line 109
    :cond_4
    const-string v2, "AccountMoney"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 111
    const-string v2, "AccountMoney"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 112
    const/4 v2, 0x0

    goto :goto_3

    .line 114
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 116
    new-instance v6, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-direct {v6}, Lcom/baidu/bdgame/sdk/obf/iw;-><init>()V

    .line 118
    const-string v2, "VouchersList"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_d5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d5

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {v6, v7}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Ljava/util/List;)V

    .line 123
    const/4 v2, 0x0

    :goto_40
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_d5

    .line 124
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 125
    if-nez v3, :cond_58

    .line 126
    const-string v2, "VouchersList"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 127
    const/4 v2, 0x0

    goto :goto_3

    .line 129
    :cond_58
    const-string v8, "VouchersMoney"

    invoke-static {v3, v8}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v8

    .line 130
    if-nez v8, :cond_6c

    .line 131
    const-string v2, "VouchersMoney"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 132
    const/4 v2, 0x0

    goto :goto_3

    .line 134
    :cond_6c
    const-string v9, "ExpireTime"

    invoke-static {v3, v9}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 136
    const-string v2, "ExpireTime"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 137
    const/4 v2, 0x0

    goto :goto_3

    .line 139
    :cond_84
    const-string v10, "ActionInfo"

    invoke-static {v3, v10}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 140
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 141
    const-string v2, "ActionInfo"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 142
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 145
    :cond_9d
    const-string v11, "VoucherType"

    invoke-static {v3, v11}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v11

    .line 146
    const/4 v3, 0x0

    .line 147
    if-eqz v11, :cond_af

    .line 148
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 149
    const/4 v12, 0x1

    if-ne v11, v12, :cond_cf

    .line 150
    sget-object v3, Lcom/baidu/bdgame/sdk/obf/ic$a;->a:Lcom/baidu/bdgame/sdk/obf/ic$a;

    .line 157
    :cond_af
    :goto_af
    new-instance v11, Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-direct {v11}, Lcom/baidu/bdgame/sdk/obf/ic;-><init>()V

    .line 158
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/baidu/bdgame/sdk/obf/ic;->a(D)V

    .line 159
    invoke-virtual {v11, v9}, Lcom/baidu/bdgame/sdk/obf/ic;->a(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v11, v3}, Lcom/baidu/bdgame/sdk/obf/ic;->a(Lcom/baidu/bdgame/sdk/obf/ic$a;)V

    .line 162
    invoke-static {v10}, Lcom/baidu/bdgame/sdk/obf/iy;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iy;

    move-result-object v3

    .line 163
    invoke-virtual {v11, v3}, Lcom/baidu/bdgame/sdk/obf/ic;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 165
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    .line 151
    :cond_cf
    const/4 v12, 0x2

    if-ne v11, v12, :cond_af

    .line 152
    sget-object v3, Lcom/baidu/bdgame/sdk/obf/ic$a;->b:Lcom/baidu/bdgame/sdk/obf/ic$a;

    goto :goto_af

    .line 171
    :cond_d5
    const-string v2, "VoucherIsSupFloat"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_140

    .line 173
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 174
    if-nez v2, :cond_13b

    .line 175
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Z)V

    .line 184
    :goto_e9
    invoke-virtual {p0, v6}, Lcom/baidu/bdgame/sdk/obf/hs;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 186
    const/16 v4, 0x64

    .line 187
    :try_start_ee
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v2

    .line 189
    :cond_f6
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_10e

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_10e

    .line 190
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    .line 191
    div-int/lit8 v4, v4, 0xa

    .line 193
    const/4 v5, 0x1

    if-ne v4, v5, :cond_f6

    .line 198
    :cond_10e
    invoke-virtual {v6, v2, v3}, Lcom/baidu/bdgame/sdk/obf/iw;->a(J)V

    .line 199
    invoke-virtual {v6, v4}, Lcom/baidu/bdgame/sdk/obf/iw;->e(I)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_114} :catch_145

    .line 205
    const-string v2, "PayPasswordSet"

    .line 206
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/hs;->b:I

    if-nez v2, :cond_17e

    .line 207
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/gx;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/gx;-><init>()V

    .line 208
    invoke-virtual {v2, v6}, Lcom/baidu/bdgame/sdk/obf/gx;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 211
    const-string v3, "PayPasswordSet"

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    :try_start_12a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 214
    if-nez v3, :cond_153

    .line 215
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/gx;->a(I)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_134} :catch_15b

    .line 228
    :goto_134
    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 256
    :goto_138
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 177
    :cond_13b
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Z)V

    goto :goto_e9

    .line 180
    :cond_140
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Z)V

    goto :goto_e9

    .line 200
    :catch_145
    move-exception v2

    .line 201
    const-string v2, "AccountMoney"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 202
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 216
    :cond_153
    const/4 v4, 0x1

    if-ne v3, v4, :cond_169

    .line 217
    const/4 v3, 0x1

    :try_start_157
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/gx;->a(I)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_134

    .line 224
    :catch_15b
    move-exception v2

    .line 225
    const-string v2, "PayPasswordSet"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 226
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 218
    :cond_169
    const/4 v4, 0x2

    if-ne v3, v4, :cond_171

    .line 219
    const/4 v3, 0x2

    :try_start_16d
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/gx;->a(I)V

    goto :goto_134

    .line 221
    :cond_171
    const-string v2, "PayPasswordSet"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_17b} :catch_15b

    .line 222
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 230
    :cond_17e
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/hs;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c5

    .line 231
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/hd;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/hd;-><init>()V

    .line 232
    invoke-virtual {v2, v6}, Lcom/baidu/bdgame/sdk/obf/hd;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 235
    const-string v3, "PayPasswordSet"

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    :try_start_193
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    if-nez v3, :cond_1a2

    .line 239
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/hd;->a(Z)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_19d} :catch_1aa

    .line 251
    :goto_19d
    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_138

    .line 240
    :cond_1a2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b8

    .line 241
    const/4 v3, 0x1

    :try_start_1a6
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/hd;->a(Z)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1a9} :catch_1aa

    goto :goto_19d

    .line 246
    :catch_1aa
    move-exception v2

    .line 247
    const-string v2, "PayPasswordSet"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 248
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 243
    :cond_1b8
    :try_start_1b8
    const-string v2, "PayPasswordSet"

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/hs;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c2} :catch_1aa

    .line 244
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 253
    :cond_1c5
    move-object/from16 v0, p3

    iput-object v6, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto/16 :goto_138
.end method
