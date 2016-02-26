.class abstract Lcom/baidu/bdgame/sdk/obf/ds$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/dm;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/dm;-><init>()V

    .line 249
    invoke-virtual {p0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/ds$g;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/dm;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 257
    :cond_c
    :goto_c
    return-object v0

    .line 252
    :cond_d
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/baidu/bdgame/sdk/obf/ds$g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/dm;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v1

    .line 257
    goto :goto_c
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/dp;-><init>()V

    .line 103
    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/dp;->b(Ljava/lang/String;)V

    .line 106
    const-string v3, "Name"

    invoke-static {p3, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 108
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 164
    :goto_37
    return-object v0

    .line 111
    :cond_38
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/dp;->a(Ljava/lang/String;)V

    .line 115
    const-string v3, "ActionType"

    invoke-static {p3, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 118
    :try_start_47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 119
    packed-switch v3, :pswitch_data_132

    .line 127
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/dp;->a(I)V

    .line 128
    const-class v3, Lcom/baidu/bdgame/sdk/obf/ds$g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionType format mismatch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_72} :catch_a0

    .line 138
    :cond_72
    :goto_72
    const-string v3, "Channel"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 139
    if-nez v4, :cond_c2

    .line 140
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 141
    goto :goto_37

    .line 124
    :pswitch_9c
    :try_start_9c
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/dp;->a(I)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_72

    .line 131
    :catch_a0
    move-exception v3

    .line 132
    const-class v3, Lcom/baidu/bdgame/sdk/obf/ds$g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionType format mismatch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 143
    :cond_c2
    new-instance v5, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    :goto_c8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_103

    .line 146
    :try_start_ce
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/baidu/bdgame/sdk/obf/ds$g;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_db

    .line 148
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_ce .. :try_end_db} :catch_de

    .line 144
    :cond_db
    :goto_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 150
    :catch_de
    move-exception v3

    .line 151
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    const-class v3, Lcom/baidu/bdgame/sdk/obf/ds$g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel mismatch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 156
    :cond_103
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12c

    .line 157
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 158
    goto/16 :goto_37

    .line 161
    :cond_12c
    invoke-virtual {v2, v5}, Lcom/baidu/bdgame/sdk/obf/dp;->a(Ljava/util/List;)V

    move-object v0, v2

    .line 164
    goto/16 :goto_37

    .line 119
    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
    .end packed-switch
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/dm;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/dm;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->a(Ljava/lang/String;)V

    .line 169
    const-string v0, "Name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->b(Ljava/lang/String;)V

    .line 172
    const-string v0, "PayID"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 174
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayID absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 242
    :goto_40
    return v0

    .line 177
    :cond_41
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->d(Ljava/lang/String;)V

    .line 181
    const-string v0, "PayType"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 183
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayType absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 184
    goto :goto_40

    .line 187
    :cond_72
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->c(Ljava/lang/String;)V

    .line 191
    const-string v0, "AmountLimit"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ds;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v2

    .line 193
    iget-object v3, v2, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_a3

    .line 194
    const-class v2, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmountLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 195
    goto :goto_40

    .line 197
    :cond_a3
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/baidu/bdgame/sdk/obf/dm;->a(J)V

    .line 198
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ka;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/baidu/bdgame/sdk/obf/dm;->b(J)V

    .line 202
    const-string v0, "QueryTime"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d8

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 206
    :try_start_d1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->a(I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d8} :catch_122

    .line 217
    :cond_d8
    const-string v0, "HintText"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 219
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e(Ljava/lang/String;)V

    .line 227
    :goto_e7
    const-string v0, "AmountList"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_f3

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_f3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_152

    .line 232
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ds;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v2

    .line 233
    iget-object v3, v2, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_14b

    .line 234
    const-class v2, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmountList format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 235
    goto/16 :goto_40

    .line 208
    :catch_122
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryTime format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 211
    goto/16 :goto_40

    .line 221
    :cond_145
    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e(Ljava/lang/String;)V

    goto :goto_e7

    .line 238
    :cond_14b
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->a(Ljava/util/List;)V

    .line 242
    :cond_152
    const/4 v0, 0x1

    goto/16 :goto_40
.end method
