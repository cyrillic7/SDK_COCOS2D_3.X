.class Lcom/tencent/msdk/remote/api/QQInfoFormatter;
.super Ljava/lang/Object;
.source "QQInfoFormatter.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFriends(Lorg/json/JSONArray;)Ljava/util/Vector;
    .registers 14
    .param p0, "jsonFriends"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/remote/api/PersonInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 14
    .local v11, "friends":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/remote/api/PersonInfo;>;"
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_e

    .line 35
    :cond_d
    :goto_d
    return-object v11

    .line 19
    :cond_e
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v12, v7, :cond_d

    .line 20
    invoke-virtual {p0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 21
    .local v10, "friend":Lorg/json/JSONObject;
    const-string v7, "nickName"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "nickName":Ljava/lang/String;
    const-string v7, "openid"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "openId":Ljava/lang/String;
    const-string v7, "gender"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "gender":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "figureurl_qq"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "40"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "pictureSmall":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "figureurl_qq"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "40"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "pictureMiddle":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "figureurl_qq"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "100"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "pictureLarge":Ljava/lang/String;
    new-instance v0, Lcom/tencent/msdk/remote/api/PersonInfo;

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v0 .. v8}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_85} :catch_88

    .line 19
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 32
    .end local v0    # "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    .end local v1    # "nickName":Ljava/lang/String;
    .end local v2    # "openId":Ljava/lang/String;
    .end local v3    # "gender":Ljava/lang/String;
    .end local v4    # "pictureSmall":Ljava/lang/String;
    .end local v5    # "pictureMiddle":Ljava/lang/String;
    .end local v6    # "pictureLarge":Ljava/lang/String;
    .end local v10    # "friend":Lorg/json/JSONObject;
    :catch_88
    move-exception v9

    .line 33
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d
.end method

.method public static formatMyInfo(Ljava/lang/String;Lcom/tencent/msdk/remote/api/SafeJSONObject;)Lcom/tencent/msdk/remote/api/PersonInfo;
    .registers 15
    .param p0, "openId"    # Ljava/lang/String;
    .param p1, "jsonObject"    # Lcom/tencent/msdk/remote/api/SafeJSONObject;

    .prologue
    .line 40
    :try_start_0
    const-string v2, "nickName"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "nickName":Ljava/lang/String;
    const-string v2, "gender"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "gender":Ljava/lang/String;
    const-string v2, "picture40"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "pictureSmall":Ljava/lang/String;
    const-string v2, "picture40"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "pictureMiddle":Ljava/lang/String;
    const-string v2, "picture100"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "pictureLarge":Ljava/lang/String;
    const-string v2, "language"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, "lang":Ljava/lang/String;
    const-string v2, "country"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, "country":Ljava/lang/String;
    const-string v2, "gpsCity"

    invoke-virtual {p1, v2}, Lcom/tencent/msdk/remote/api/SafeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "gpsCity":Ljava/lang/String;
    new-instance v0, Lcom/tencent/msdk/remote/api/PersonInfo;

    const-string v2, ""

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v0 .. v11}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 53
    .end local v1    # "nickName":Ljava/lang/String;
    .end local v3    # "gender":Ljava/lang/String;
    .end local v4    # "pictureSmall":Ljava/lang/String;
    .end local v5    # "pictureMiddle":Ljava/lang/String;
    .end local v6    # "pictureLarge":Ljava/lang/String;
    .end local v9    # "gpsCity":Ljava/lang/String;
    .end local v10    # "lang":Ljava/lang/String;
    .end local v11    # "country":Ljava/lang/String;
    :goto_3b
    return-object v0

    .line 51
    :catch_3c
    move-exception v12

    .line 52
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    new-instance v0, Lcom/tencent/msdk/remote/api/PersonInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>()V

    goto :goto_3b
.end method

.method public static formatNearby(Lorg/json/JSONArray;)Ljava/util/Vector;
    .registers 20
    .param p0, "jsonFriends"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/remote/api/PersonInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 59
    .local v17, "friends":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/remote/api/PersonInfo;>;"
    if-eqz p0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-nez v10, :cond_e

    .line 94
    :cond_d
    :goto_d
    return-object v17

    .line 64
    :cond_e
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_10
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    move/from16 v0, v18

    if-ge v0, v10, :cond_d

    .line 65
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 66
    .local v16, "friend":Lorg/json/JSONObject;
    const-string v10, "nickName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "nickName":Ljava/lang/String;
    const-string v10, "openid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "openId":Ljava/lang/String;
    const-string v10, "1"

    const-string v11, "gender"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ca

    const-string v6, "\u7537"

    .line 70
    .local v6, "gender":Ljava/lang/String;
    :goto_42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "figureurl_qq"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/40"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "pictureSmall":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "figureurl_qq"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/40"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "pictureMiddle":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "figureurl_qq"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/100"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "pictureLarge":Ljava/lang/String;
    const-string v10, "distance"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_9a} :catch_d3

    move-result-wide v10

    double-to-float v12, v10

    .line 75
    .local v12, "distance":F
    const/4 v13, 0x0

    .line 77
    .local v13, "isFriend":Z
    :try_start_9d
    const-string v10, "is_friend"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a8} :catch_d0
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_a8} :catch_d3

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ce

    .line 78
    const/4 v13, 0x1

    .line 84
    :goto_ad
    :try_start_ad
    const-string v10, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 86
    .local v14, "timestamp":J
    new-instance v3, Lcom/tencent/msdk/remote/api/PersonInfo;

    const-string v10, ""

    const-string v11, ""

    invoke-direct/range {v3 .. v15}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZJ)V

    .line 88
    .local v3, "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 89
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_10

    .line 69
    .end local v3    # "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    .end local v6    # "gender":Ljava/lang/String;
    .end local v7    # "pictureSmall":Ljava/lang/String;
    .end local v8    # "pictureMiddle":Ljava/lang/String;
    .end local v9    # "pictureLarge":Ljava/lang/String;
    .end local v12    # "distance":F
    .end local v13    # "isFriend":Z
    .end local v14    # "timestamp":J
    :cond_ca
    const-string v6, "\u5973"
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_cc} :catch_d3

    goto/16 :goto_42

    .line 80
    .restart local v6    # "gender":Ljava/lang/String;
    .restart local v7    # "pictureSmall":Ljava/lang/String;
    .restart local v8    # "pictureMiddle":Ljava/lang/String;
    .restart local v9    # "pictureLarge":Ljava/lang/String;
    .restart local v12    # "distance":F
    .restart local v13    # "isFriend":Z
    :cond_ce
    const/4 v13, 0x0

    goto :goto_ad

    .line 81
    :catch_d0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_ad

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "nickName":Ljava/lang/String;
    .end local v5    # "openId":Ljava/lang/String;
    .end local v6    # "gender":Ljava/lang/String;
    .end local v7    # "pictureSmall":Ljava/lang/String;
    .end local v8    # "pictureMiddle":Ljava/lang/String;
    .end local v9    # "pictureLarge":Ljava/lang/String;
    .end local v12    # "distance":F
    .end local v13    # "isFriend":Z
    .end local v16    # "friend":Lorg/json/JSONObject;
    :catch_d3
    move-exception v2

    .line 92
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d
.end method
