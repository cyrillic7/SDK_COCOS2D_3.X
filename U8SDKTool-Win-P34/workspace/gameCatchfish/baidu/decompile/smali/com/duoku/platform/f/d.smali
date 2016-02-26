.class public final Lcom/duoku/platform/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;

    invoke-direct {v0}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;-><init>()V

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setErrorCode(I)V

    .line 78
    if-eqz v2, :cond_16

    .line 96
    :goto_15
    return-object v0

    .line 82
    :cond_16
    const-string v2, "updatetype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    const-string v3, "apkurl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    const-string v4, "apkversion"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    const-string v5, "apksize"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v2}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setType(I)V

    .line 89
    invoke-virtual {v0, v3}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setApk_url(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v4}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setApk_version(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v5}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setApk_size(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public b(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/duoku/platform/f/d$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/f/d$1;-><init>(Lcom/duoku/platform/f/d;)V

    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 109
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/a;->setErrorCode(I)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/a;->setErrorString(Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/duoku/platform/h/h;

    invoke-direct {v0}, Lcom/duoku/platform/h/h;-><init>()V

    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 134
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->setErrorCode(I)V

    .line 137
    invoke-virtual {v0, v3}, Lcom/duoku/platform/h/h;->setErrorString(Ljava/lang/String;)V

    .line 139
    if-eqz v2, :cond_1f

    .line 179
    :cond_1e
    :goto_1e
    return-object v0

    .line 144
    :cond_1f
    const-string v2, "currentkubinum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->g(Ljava/lang/String;)V

    .line 154
    const-string v2, "isprizeable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->h(Ljava/lang/String;)V

    .line 155
    const-string v2, "integralnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->i(Ljava/lang/String;)V

    .line 156
    const-string v2, "downloadurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->j(Ljava/lang/String;)V

    .line 157
    const-string v2, "prizeid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->m(Ljava/lang/String;)V

    .line 158
    const-string v2, "viplevel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->n(Ljava/lang/String;)V

    .line 160
    const-string v2, "isshownotification"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->d(Ljava/lang/String;)V

    .line 161
    const-string v2, "notificationmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->e(Ljava/lang/String;)V

    .line 162
    const-string v2, "notificationurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->f(Ljava/lang/String;)V

    .line 163
    const-string v2, "integral"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->c(Ljava/lang/String;)V

    .line 164
    const-string v2, "gameid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->b(Ljava/lang/String;)V

    .line 165
    const-string v2, "assistantversion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->a(Ljava/lang/String;)V

    .line 170
    const-string v2, "userrank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->k(Ljava/lang/String;)V

    .line 171
    const-string v2, "isprizeable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 173
    const-string v2, "isprizeabled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/h;->l(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public d(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v6, Lcom/duoku/platform/h/f;

    invoke-direct {v6}, Lcom/duoku/platform/h/f;-><init>()V

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    const-string v1, "errorcode"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 231
    const-string v2, "errormsg"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v6, v1}, Lcom/duoku/platform/h/f;->setErrorCode(I)V

    .line 234
    invoke-virtual {v6, v2}, Lcom/duoku/platform/h/f;->setErrorString(Ljava/lang/String;)V

    .line 236
    if-eqz v1, :cond_30

    .line 317
    :goto_2f
    return-object v6

    .line 241
    :cond_30
    const-string v1, "accept_time"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v6, v1}, Lcom/duoku/platform/h/f;->setAccepTime(Ljava/lang/String;)V

    .line 244
    const-string v1, "gamephone"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v6, v1}, Lcom/duoku/platform/h/f;->a(Ljava/lang/String;)V

    .line 247
    const-string v1, "question"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 248
    const/4 v2, 0x0

    move v4, v2

    :goto_4c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v4, v2, :cond_7c

    .line 277
    const-string v1, "submit_question"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 278
    const/4 v2, 0x0

    move v3, v2

    :goto_5c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_d5

    .line 292
    const-string v1, "my_question"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 293
    const/4 v2, 0x0

    move v3, v2

    :goto_6c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_fa

    .line 311
    invoke-virtual {v6, v7}, Lcom/duoku/platform/h/f;->a(Ljava/util/List;)V

    .line 312
    invoke-virtual {v6, v8}, Lcom/duoku/platform/h/f;->b(Ljava/util/List;)V

    .line 313
    invoke-virtual {v6, v9}, Lcom/duoku/platform/h/f;->c(Ljava/util/List;)V

    goto :goto_2f

    .line 250
    :cond_7c
    new-instance v11, Lcom/duoku/platform/ui/a/d;

    invoke-direct {v11}, Lcom/duoku/platform/ui/a/d;-><init>()V

    .line 251
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 254
    const-string v3, "typename"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 256
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 257
    const/4 v3, 0x0

    move v5, v3

    :goto_9c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v5, v3, :cond_af

    .line 271
    invoke-virtual {v11, v13}, Lcom/duoku/platform/ui/a/d;->a(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v11, v12}, Lcom/duoku/platform/ui/a/d;->a(Ljava/util/List;)V

    .line 274
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4c

    .line 259
    :cond_af
    new-instance v14, Lcom/duoku/platform/ui/a/j;

    invoke-direct {v14}, Lcom/duoku/platform/ui/a/j;-><init>()V

    .line 261
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 262
    const-string v15, "key"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 263
    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v14, v15}, Lcom/duoku/platform/ui/a/j;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v14, v3}, Lcom/duoku/platform/ui/a/j;->b(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_9c

    .line 280
    :cond_d5
    new-instance v4, Lcom/duoku/platform/ui/a/k;

    invoke-direct {v4}, Lcom/duoku/platform/ui/a/k;-><init>()V

    .line 282
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 283
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    const-string v11, "typename"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v4, v5}, Lcom/duoku/platform/ui/a/k;->a(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v4, v2}, Lcom/duoku/platform/ui/a/k;->b(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_5c

    .line 295
    :cond_fa
    new-instance v4, Lcom/duoku/platform/ui/a/i;

    invoke-direct {v4}, Lcom/duoku/platform/ui/a/i;-><init>()V

    .line 297
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 298
    const-string v5, "content"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    const-string v10, "submit_time"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 300
    const-string v11, "state"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 301
    const-string v12, "reply"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v4, v5}, Lcom/duoku/platform/ui/a/i;->a(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4, v10}, Lcom/duoku/platform/ui/a/i;->b(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4, v11}, Lcom/duoku/platform/ui/a/i;->c(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v4, v2}, Lcom/duoku/platform/ui/a/i;->d(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_6c
.end method

.method public e(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/duoku/platform/h/g;

    invoke-direct {v0}, Lcom/duoku/platform/h/g;-><init>()V

    .line 334
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 336
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/g;->setErrorCode(I)V

    .line 339
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/g;->setErrorString(Ljava/lang/String;)V

    .line 341
    if-eqz v2, :cond_1e

    .line 348
    :cond_1e
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/duoku/platform/h/i;

    invoke-direct {v0}, Lcom/duoku/platform/h/i;-><init>()V

    .line 363
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 365
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/i;->setErrorCode(I)V

    .line 368
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/i;->setErrorString(Ljava/lang/String;)V

    .line 370
    if-eqz v2, :cond_1e

    .line 377
    :cond_1e
    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lcom/duoku/platform/h/j;

    invoke-direct {v0}, Lcom/duoku/platform/h/j;-><init>()V

    .line 395
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 397
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/j;->setErrorCode(I)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/j;->setErrorString(Ljava/lang/String;)V

    .line 402
    if-eqz v2, :cond_1e

    .line 409
    :cond_1e
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/duoku/platform/ui/a/h;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 421
    new-instance v3, Lcom/duoku/platform/ui/a/h;

    invoke-direct {v3}, Lcom/duoku/platform/ui/a/h;-><init>()V

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 427
    const-string v4, "errorcode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 428
    const-string v5, "errormsg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/h;->setErrorCode(I)V

    .line 431
    invoke-virtual {v3, v5}, Lcom/duoku/platform/ui/a/h;->setErrorString(Ljava/lang/String;)V

    .line 433
    if-eqz v4, :cond_25

    .line 493
    :goto_24
    return-object v3

    .line 438
    :cond_25
    const-string v4, "pageid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/h;->b(Ljava/lang/String;)V

    .line 440
    const-string v4, "assistanturl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/h;->c(Ljava/lang/String;)V

    .line 443
    const-string v4, "assistantversion"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/h;->a(Ljava/lang/String;)V

    .line 446
    const-string v4, "havehine"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 449
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/h;->a(Z)V

    .line 455
    :cond_52
    :goto_52
    const-string v4, "messages"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 456
    if-nez v4, :cond_6b

    .line 458
    const/4 v0, 0x0

    .line 489
    :goto_5b
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/a/h;->a(Ljava/util/ArrayList;)V

    goto :goto_24

    .line 451
    :cond_5f
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 453
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/a/h;->a(Z)V

    goto :goto_52

    :cond_6b
    move v1, v0

    .line 462
    :goto_6c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_74

    move-object v0, v2

    goto :goto_5b

    .line 464
    :cond_74
    new-instance v5, Lcom/duoku/platform/ui/a/g;

    invoke-direct {v5}, Lcom/duoku/platform/ui/a/g;-><init>()V

    .line 465
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 466
    const-string v6, "messageid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->c(Ljava/lang/String;)V

    .line 468
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->d(Ljava/lang/String;)V

    .line 470
    const-string v6, "read"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->e(Ljava/lang/String;)V

    .line 472
    const-string v6, "messagetitle"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->f(Ljava/lang/String;)V

    .line 474
    const-string v6, "time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 475
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->h(Ljava/lang/String;)V

    .line 476
    const-string v6, "overview"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->i(Ljava/lang/String;)V

    .line 478
    const-string v6, "messagetype"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 479
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->a(I)V

    .line 480
    const-string v6, "messageinfo"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->b(Ljava/lang/String;)V

    .line 482
    const-string v6, "messagesource"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 483
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/g;->g(Ljava/lang/String;)V

    .line 484
    const-string v6, "imageurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {v5, v0}, Lcom/duoku/platform/ui/a/g;->a(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6c
.end method

.method public i(Ljava/lang/String;)Lcom/duoku/platform/ui/a/f;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v3, Lcom/duoku/platform/ui/a/f;

    invoke-direct {v3}, Lcom/duoku/platform/ui/a/f;-><init>()V

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 510
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 511
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 512
    const-string v4, "errormsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/f;->setErrorCode(I)V

    .line 515
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/f;->setErrorString(Ljava/lang/String;)V

    .line 517
    if-eqz v1, :cond_24

    .line 564
    :goto_23
    return-object v3

    .line 522
    :cond_24
    const-string v1, "buttonhint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/f;->c(Ljava/lang/String;)V

    .line 524
    const-string v1, "tiphint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/f;->d(Ljava/lang/String;)V

    .line 526
    const-string v1, "assistanturl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/f;->e(Ljava/lang/String;)V

    .line 528
    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/f;->b(Ljava/lang/String;)V

    .line 531
    const-string v1, "assistantversion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/f;->a(Ljava/lang/String;)V

    .line 534
    const-string v1, "giftexist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 535
    if-nez v4, :cond_5e

    .line 537
    const/4 v0, 0x0

    .line 560
    :goto_5a
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/a/f;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 541
    :cond_5e
    const/4 v0, 0x0

    move v1, v0

    :goto_60
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_68

    move-object v0, v2

    goto :goto_5a

    .line 543
    :cond_68
    new-instance v5, Lcom/duoku/platform/ui/a/e;

    invoke-direct {v5}, Lcom/duoku/platform/ui/a/e;-><init>()V

    .line 544
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 545
    const-string v6, "giftid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/e;->b(Ljava/lang/String;)V

    .line 547
    const-string v6, "giftname"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 548
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/e;->c(Ljava/lang/String;)V

    .line 549
    const-string v6, "giftcontent"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/e;->d(Ljava/lang/String;)V

    .line 551
    const-string v6, "giftleft"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 552
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/e;->e(Ljava/lang/String;)V

    .line 553
    const-string v6, "abortdate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 554
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/e;->f(Ljava/lang/String;)V

    .line 555
    const-string v6, "giftnew"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {v5, v0}, Lcom/duoku/platform/ui/a/e;->a(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60
.end method

.method public j(Ljava/lang/String;)Lcom/duoku/platform/ui/a/b;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v3, Lcom/duoku/platform/ui/a/b;

    invoke-direct {v3}, Lcom/duoku/platform/ui/a/b;-><init>()V

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 582
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 583
    const-string v4, "errormsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/b;->setErrorCode(I)V

    .line 586
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/b;->setErrorString(Ljava/lang/String;)V

    .line 588
    if-eqz v1, :cond_24

    .line 633
    :goto_23
    return-object v3

    .line 593
    :cond_24
    const-string v1, "buttonhint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/b;->d(Ljava/lang/String;)V

    .line 595
    const-string v1, "tiphint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/b;->e(Ljava/lang/String;)V

    .line 597
    const-string v1, "assistanturl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/b;->a(Ljava/lang/String;)V

    .line 599
    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/b;->c(Ljava/lang/String;)V

    .line 602
    const-string v1, "assistantversion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/b;->b(Ljava/lang/String;)V

    .line 605
    const-string v1, "gameActivitys"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 606
    if-nez v4, :cond_5e

    .line 608
    const/4 v0, 0x0

    .line 629
    :goto_5a
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/a/b;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 612
    :cond_5e
    const/4 v0, 0x0

    move v1, v0

    :goto_60
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_68

    move-object v0, v2

    goto :goto_5a

    .line 614
    :cond_68
    new-instance v5, Lcom/duoku/platform/ui/a/a;

    invoke-direct {v5}, Lcom/duoku/platform/ui/a/a;-><init>()V

    .line 615
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 616
    const-string v6, "activityid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 617
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/a;->a(Ljava/lang/String;)V

    .line 618
    const-string v6, "activityname"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/a;->b(Ljava/lang/String;)V

    .line 620
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 621
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/a;->c(Ljava/lang/String;)V

    .line 622
    const-string v6, "imageurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 623
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/a/a;->e(Ljava/lang/String;)V

    .line 624
    const-string v6, "state"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {v5, v0}, Lcom/duoku/platform/ui/a/a;->d(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60
.end method

.method public k(Ljava/lang/String;)Lcom/duoku/platform/h/n;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 639
    new-instance v3, Lcom/duoku/platform/h/n;

    invoke-direct {v3}, Lcom/duoku/platform/h/n;-><init>()V

    .line 640
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 643
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 645
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 646
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/n;->setErrorCode(I)V

    .line 649
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/n;->setErrorString(Ljava/lang/String;)V

    .line 651
    if-eqz v1, :cond_24

    .line 687
    :goto_23
    return-object v3

    .line 656
    :cond_24
    const-string v1, "integralnum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/n;->a(Ljava/lang/String;)V

    .line 658
    const-string v1, "integralhistory"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_4b

    const-string v1, "null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 662
    check-cast v0, Lorg/json/JSONArray;

    .line 664
    const/4 v1, 0x0

    move v2, v1

    :goto_45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_4f

    .line 683
    :cond_4b
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/n;->a(Ljava/util/List;)V

    goto :goto_23

    .line 666
    :cond_4f
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 667
    new-instance v5, Lcom/duoku/platform/h/m;

    invoke-direct {v5}, Lcom/duoku/platform/h/m;-><init>()V

    .line 668
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 669
    const-string v7, "time"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 670
    const-string v8, "description"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 671
    const-string v9, "amount"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 672
    const-string v10, "state"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/m;->a(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v5, v7}, Lcom/duoku/platform/h/m;->b(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v5, v9}, Lcom/duoku/platform/h/m;->d(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/m;->e(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v5, v8}, Lcom/duoku/platform/h/m;->c(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_45
.end method

.method public l(Ljava/lang/String;)Lcom/duoku/platform/h/p;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v3, Lcom/duoku/platform/h/p;

    invoke-direct {v3}, Lcom/duoku/platform/h/p;-><init>()V

    .line 702
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 704
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 705
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/p;->setErrorCode(I)V

    .line 708
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/p;->setErrorString(Ljava/lang/String;)V

    .line 710
    if-eqz v1, :cond_1f

    .line 730
    :goto_1e
    return-object v3

    .line 715
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 716
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 717
    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_38

    .line 725
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/p;->a(Ljava/util/List;)V

    goto :goto_1e

    .line 719
    :cond_38
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 720
    new-instance v5, Lcom/duoku/platform/h/o;

    invoke-direct {v5}, Lcom/duoku/platform/h/o;-><init>()V

    .line 721
    const-string v6, "question"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/o;->a(Ljava/lang/String;)V

    .line 722
    const-string v6, "answer"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/o;->b(Ljava/lang/String;)V

    .line 723
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e
.end method

.method public m(Ljava/lang/String;)Lcom/duoku/platform/h/l;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v3, Lcom/duoku/platform/h/l;

    invoke-direct {v3}, Lcom/duoku/platform/h/l;-><init>()V

    .line 745
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 747
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 748
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/l;->setErrorCode(I)V

    .line 751
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/l;->setErrorString(Ljava/lang/String;)V

    .line 753
    if-eqz v1, :cond_1f

    .line 782
    :goto_1e
    return-object v3

    .line 758
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 759
    const-string v1, "giftlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 760
    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_38

    .line 777
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/l;->a(Ljava/util/List;)V

    goto :goto_1e

    .line 762
    :cond_38
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 763
    new-instance v5, Lcom/duoku/platform/h/k;

    invoke-direct {v5}, Lcom/duoku/platform/h/k;-><init>()V

    .line 765
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->a(Ljava/lang/String;)V

    .line 766
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->b(Ljava/lang/String;)V

    .line 767
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->c(Ljava/lang/String;)V

    .line 768
    const-string v6, "number"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->d(Ljava/lang/String;)V

    .line 769
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->e(Ljava/lang/String;)V

    .line 770
    const-string v6, "endtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->f(Ljava/lang/String;)V

    .line 771
    const-string v6, "imageurl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->g(Ljava/lang/String;)V

    .line 772
    const-string v6, "giftcontent"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/k;->h(Ljava/lang/String;)V

    .line 775
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e
.end method

.method public n(Ljava/lang/String;)Lcom/duoku/platform/h/u;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 794
    new-instance v0, Lcom/duoku/platform/h/u;

    invoke-direct {v0}, Lcom/duoku/platform/h/u;-><init>()V

    .line 797
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 799
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 800
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/u;->setErrorCode(I)V

    .line 801
    invoke-virtual {v0, v3}, Lcom/duoku/platform/h/u;->setErrorString(Ljava/lang/String;)V

    .line 802
    if-eqz v2, :cond_1f

    .line 812
    :goto_1e
    return-object v0

    .line 806
    :cond_1f
    const-string v2, "cashcardnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/u;->a(Ljava/lang/String;)V

    .line 807
    const-string v2, "chargecardnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/u;->b(Ljava/lang/String;)V

    .line 808
    const-string v2, "prizecardnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/u;->c(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public o(Ljava/lang/String;)Lcom/duoku/platform/h/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v3, Lcom/duoku/platform/h/c;

    invoke-direct {v3}, Lcom/duoku/platform/h/c;-><init>()V

    .line 825
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 828
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 829
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 830
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 831
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/c;->setErrorCode(I)V

    .line 832
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/c;->setErrorString(Ljava/lang/String;)V

    .line 833
    if-eqz v1, :cond_24

    .line 861
    :goto_23
    return-object v3

    .line 837
    :cond_24
    const-string v1, "pageid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/c;->a(Ljava/lang/String;)V

    .line 838
    const-string v1, "cashcardlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 839
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_41

    .line 856
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/c;->a(Ljava/util/List;)V

    goto :goto_23

    .line 841
    :cond_41
    new-instance v5, Lcom/duoku/platform/h/b;

    invoke-direct {v5}, Lcom/duoku/platform/h/b;-><init>()V

    .line 842
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 843
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->a(Ljava/lang/String;)V

    .line 844
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->b(Ljava/lang/String;)V

    .line 845
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->c(Ljava/lang/String;)V

    .line 846
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->d(Ljava/lang/String;)V

    .line 847
    const-string v6, "starttime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->e(Ljava/lang/String;)V

    .line 848
    const-string v6, "endtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->f(Ljava/lang/String;)V

    .line 850
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->g(Ljava/lang/String;)V

    .line 851
    const-string v6, "state"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/b;->h(Ljava/lang/String;)V

    .line 854
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37
.end method

.method public p(Ljava/lang/String;)Lcom/duoku/platform/h/e;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 873
    new-instance v3, Lcom/duoku/platform/h/e;

    invoke-direct {v3}, Lcom/duoku/platform/h/e;-><init>()V

    .line 874
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 877
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 878
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 879
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/e;->setErrorCode(I)V

    .line 881
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/e;->setErrorString(Ljava/lang/String;)V

    .line 882
    if-eqz v1, :cond_24

    .line 905
    :goto_23
    return-object v3

    .line 886
    :cond_24
    const-string v1, "pageid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/e;->a(Ljava/lang/String;)V

    .line 887
    const-string v1, "chargecardlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 888
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_41

    .line 900
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/e;->a(Ljava/util/List;)V

    goto :goto_23

    .line 890
    :cond_41
    new-instance v5, Lcom/duoku/platform/h/d;

    invoke-direct {v5}, Lcom/duoku/platform/h/d;-><init>()V

    .line 891
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 892
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->b(Ljava/lang/String;)V

    .line 893
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->c(Ljava/lang/String;)V

    .line 894
    const-string v6, "cardnum"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->e(Ljava/lang/String;)V

    .line 895
    const-string v6, "cardpassword"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->f(Ljava/lang/String;)V

    .line 896
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->d(Ljava/lang/String;)V

    .line 897
    const-string v6, "cardtype"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/d;->a(Ljava/lang/String;)V

    .line 898
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37
.end method

.method public q(Ljava/lang/String;)Lcom/duoku/platform/h/r;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v3, Lcom/duoku/platform/h/r;

    invoke-direct {v3}, Lcom/duoku/platform/h/r;-><init>()V

    .line 918
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 921
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 922
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 923
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/r;->setErrorCode(I)V

    .line 925
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/r;->setErrorString(Ljava/lang/String;)V

    .line 926
    if-eqz v1, :cond_24

    .line 951
    :goto_23
    return-object v3

    .line 930
    :cond_24
    const-string v1, "pageid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/r;->a(Ljava/lang/String;)V

    .line 931
    const-string v1, "prizecardlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 932
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_41

    .line 946
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/r;->a(Ljava/util/List;)V

    goto :goto_23

    .line 934
    :cond_41
    new-instance v5, Lcom/duoku/platform/h/q;

    invoke-direct {v5}, Lcom/duoku/platform/h/q;-><init>()V

    .line 935
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 936
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->a(Ljava/lang/String;)V

    .line 937
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->b(Ljava/lang/String;)V

    .line 938
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->c(Ljava/lang/String;)V

    .line 939
    const-string v6, "starttime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->d(Ljava/lang/String;)V

    .line 940
    const-string v6, "endtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->e(Ljava/lang/String;)V

    .line 941
    const-string v6, "state"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->f(Ljava/lang/String;)V

    .line 942
    const-string v6, "prizeid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->g(Ljava/lang/String;)V

    .line 943
    const-string v6, "cardid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/q;->h(Ljava/lang/String;)V

    .line 944
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37
.end method

.method public r(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 963
    new-instance v2, Lcom/duoku/platform/bean/e;

    invoke-direct {v2}, Lcom/duoku/platform/bean/e;-><init>()V

    .line 965
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 968
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 969
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 970
    const-string v4, "errormsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 971
    invoke-virtual {v2, v1}, Lcom/duoku/platform/bean/e;->setErrorCode(I)V

    .line 972
    invoke-virtual {v2, v4}, Lcom/duoku/platform/bean/e;->setErrorString(Ljava/lang/String;)V

    .line 973
    if-eqz v1, :cond_24

    .line 993
    :goto_23
    return-object v2

    .line 977
    :cond_24
    const-string v1, "logolist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 978
    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_36

    .line 989
    invoke-virtual {v2, v3}, Lcom/duoku/platform/bean/e;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 980
    :cond_36
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 981
    new-instance v5, Lcom/duoku/platform/bean/d;

    invoke-direct {v5}, Lcom/duoku/platform/bean/d;-><init>()V

    .line 982
    const-string v6, "sdate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->b(Ljava/lang/String;)V

    .line 983
    const-string v6, "edate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->c(Ljava/lang/String;)V

    .line 984
    const-string v6, "imgurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->d(Ljava/lang/String;)V

    .line 985
    const-string v6, "des"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->a(Ljava/lang/String;)V

    .line 986
    const-string v6, "level"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/d;->a(I)V

    .line 987
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c
.end method

.method public s(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1005
    new-instance v0, Lcom/duoku/platform/bean/b;

    invoke-direct {v0}, Lcom/duoku/platform/bean/b;-><init>()V

    .line 1009
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1010
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1011
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->setErrorCode(I)V

    .line 1013
    invoke-virtual {v0, v3}, Lcom/duoku/platform/bean/b;->setErrorString(Ljava/lang/String;)V

    .line 1014
    if-eqz v2, :cond_1f

    .line 1031
    :cond_1e
    :goto_1e
    return-object v0

    .line 1018
    :cond_1f
    const-string v2, "adid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->a(Ljava/lang/String;)V

    .line 1019
    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->b(Ljava/lang/String;)V

    .line 1020
    const-string v2, "imgurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->d(Ljava/lang/String;)V

    .line 1021
    const-string v2, "actionurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->e(Ljava/lang/String;)V

    .line 1022
    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->c(Ljava/lang/String;)V

    .line 1023
    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1025
    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1026
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "ad_visibility"

    invoke-virtual {v2, v3, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;I)Z

    goto :goto_1e
.end method

.method public t(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1043
    new-instance v3, Lcom/duoku/platform/ui/a/c;

    invoke-direct {v3}, Lcom/duoku/platform/ui/a/c;-><init>()V

    .line 1047
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1048
    const-string v0, "errorcode"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1049
    const-string v1, "errormsg"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/a/c;->setErrorCode(I)V

    .line 1051
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/a/c;->setErrorString(Ljava/lang/String;)V

    .line 1052
    if-eqz v0, :cond_20

    .line 1154
    :goto_1f
    return-object v3

    .line 1057
    :cond_20
    const-string v0, "errornotice"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1058
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_38

    move v1, v2

    .line 1066
    :goto_32
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_56

    .line 1098
    :cond_38
    invoke-virtual {v3, v6}, Lcom/duoku/platform/ui/a/c;->b(Ljava/util/List;)V

    .line 1100
    const-string v0, "actionnotice"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_52

    .line 1110
    :goto_4c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_ae

    .line 1149
    :cond_52
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/a/c;->a(Ljava/util/List;)V

    goto :goto_1f

    .line 1071
    :cond_56
    new-instance v7, Lcom/duoku/platform/bean/c;

    invoke-direct {v7}, Lcom/duoku/platform/bean/c;-><init>()V

    .line 1072
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1074
    const-string v8, "title"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1075
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-nez v8, :cond_75

    .line 1066
    :cond_71
    :goto_71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    .line 1079
    :cond_75
    invoke-virtual {v7, v8}, Lcom/duoku/platform/bean/c;->a(Ljava/lang/String;)V

    .line 1081
    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1082
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-eqz v8, :cond_71

    .line 1086
    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/bean/c;->b(Ljava/lang/String;)V

    .line 1088
    const-string v8, "time"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1089
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-eqz v8, :cond_71

    .line 1093
    const-string v8, "time"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/duoku/platform/bean/c;->c(Ljava/lang/String;)V

    .line 1094
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1116
    :cond_ae
    new-instance v5, Lcom/duoku/platform/bean/a;

    invoke-direct {v5}, Lcom/duoku/platform/bean/a;-><init>()V

    .line 1117
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1119
    const-string v6, "title"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1120
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-nez v6, :cond_cc

    .line 1110
    :cond_c9
    :goto_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1124
    :cond_cc
    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->b(Ljava/lang/String;)V

    .line 1126
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1127
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-eqz v6, :cond_c9

    .line 1131
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->c(Ljava/lang/String;)V

    .line 1133
    const-string v6, "time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1134
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-eqz v6, :cond_c9

    .line 1138
    const-string v6, "time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->a(Ljava/lang/String;)V

    .line 1144
    const-string v6, "link"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/a;->d(Ljava/lang/String;)V

    .line 1145
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c9
.end method

.method public u(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v0, Lcom/duoku/platform/h/v;

    invoke-direct {v0}, Lcom/duoku/platform/h/v;-><init>()V

    .line 1169
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1170
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1171
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/v;->setErrorCode(I)V

    .line 1173
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/v;->setErrorString(Ljava/lang/String;)V

    .line 1174
    if-eqz v2, :cond_1e

    .line 1182
    :cond_1e
    return-object v0
.end method

.method public v(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1194
    new-instance v0, Lcom/duoku/platform/h/t;

    invoke-direct {v0}, Lcom/duoku/platform/h/t;-><init>()V

    .line 1197
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1199
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1200
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1202
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->setErrorCode(I)V

    .line 1203
    invoke-virtual {v0, v3}, Lcom/duoku/platform/h/t;->setErrorString(Ljava/lang/String;)V

    .line 1205
    if-eqz v2, :cond_1f

    .line 1240
    :cond_1e
    :goto_1e
    return-object v0

    .line 1210
    :cond_1f
    const-string v2, "sessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1212
    const-string v2, "sessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1213
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->c(Ljava/lang/String;)V

    .line 1216
    :cond_30
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1218
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->b(Ljava/lang/String;)V

    .line 1222
    :cond_41
    const-string v2, "operateUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 1224
    const-string v2, "operateUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1225
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->a(Ljava/lang/String;)V

    .line 1228
    :cond_52
    const-string v2, "reddot_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 1230
    const-string v2, "reddot_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1231
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->a(I)V

    .line 1234
    :cond_63
    const-string v2, "screen_landscape_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1236
    const-string v2, "screen_landscape_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/duoku/platform/util/Constants;->screen_landscape_flag:I

    goto :goto_1e
.end method
