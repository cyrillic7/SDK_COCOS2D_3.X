.class Lcom/tencent/msdk/remote/api/WxInfoFormatter;
.super Ljava/lang/Object;
.source "WxInfoFormatter.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFriends(Lorg/json/JSONArray;)Ljava/util/Vector;
    .registers 21
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
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 14
    .local v16, "friends":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/remote/api/PersonInfo;>;"
    if-eqz p0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-nez v18, :cond_e

    .line 50
    :cond_d
    :goto_d
    return-object v16

    .line 19
    :cond_e
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_10
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 20
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 21
    .local v15, "friend":Lorg/json/JSONObject;
    const-string v18, "nickName"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "nickName":Ljava/lang/String;
    const-string v18, "openid"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "openId":Ljava/lang/String;
    const-string v18, "2"

    const-string v19, "sex"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e6

    const-string v5, "\u5973"

    .line 24
    .local v5, "gender":Ljava/lang/String;
    :goto_44
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "picture"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/46"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, "pictureSmall":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "picture"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/96"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, "pictureMiddle":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "picture"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/132"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 28
    .local v8, "pictureLarge":Ljava/lang/String;
    const-string v18, "provice"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 29
    .local v9, "provice":Ljava/lang/String;
    const-string v18, "city"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, "city":Ljava/lang/String;
    const-string v18, "gpsCity"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 32
    .local v11, "gpsCity":Ljava/lang/String;
    const-string v12, ""

    .line 33
    .local v12, "language":Ljava/lang/String;
    const-string v18, "language"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c1

    .line 34
    const-string v18, "language"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 36
    :cond_c1
    const-string v13, ""

    .line 37
    .local v13, "country":Ljava/lang/String;
    const-string v18, "country"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d5

    .line 38
    const-string v18, "country"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 41
    :cond_d5
    new-instance v2, Lcom/tencent/msdk/remote/api/PersonInfo;

    invoke-direct/range {v2 .. v13}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v2, "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 45
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_10

    .line 23
    .end local v2    # "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    .end local v5    # "gender":Ljava/lang/String;
    .end local v6    # "pictureSmall":Ljava/lang/String;
    .end local v7    # "pictureMiddle":Ljava/lang/String;
    .end local v8    # "pictureLarge":Ljava/lang/String;
    .end local v9    # "provice":Ljava/lang/String;
    .end local v10    # "city":Ljava/lang/String;
    .end local v11    # "gpsCity":Ljava/lang/String;
    .end local v12    # "language":Ljava/lang/String;
    .end local v13    # "country":Ljava/lang/String;
    :cond_e6
    const-string v5, "\u7537"
    :try_end_e8
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_e8} :catch_ea

    goto/16 :goto_44

    .line 47
    .end local v3    # "nickName":Ljava/lang/String;
    .end local v4    # "openId":Ljava/lang/String;
    .end local v15    # "friend":Lorg/json/JSONObject;
    :catch_ea
    move-exception v14

    .line 48
    .local v14, "e":Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d
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
    .line 92
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 93
    .local v17, "friends":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/remote/api/PersonInfo;>;"
    if-eqz p0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-nez v10, :cond_e

    .line 128
    :cond_d
    :goto_d
    return-object v17

    .line 98
    :cond_e
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_10
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    move/from16 v0, v18

    if-ge v0, v10, :cond_d

    .line 99
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 100
    .local v16, "friend":Lorg/json/JSONObject;
    const-string v10, "nickName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "nickName":Ljava/lang/String;
    const-string v10, "openid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "openId":Ljava/lang/String;
    const-string v10, "2"

    const-string v11, "gender"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ca

    const-string v6, "\u5973"

    .line 103
    .local v6, "gender":Ljava/lang/String;
    :goto_42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "picture"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/46"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "pictureSmall":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "picture"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/96"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "pictureMiddle":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "picture"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/132"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "pictureLarge":Ljava/lang/String;
    const-string v10, "distance"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_9a} :catch_d3

    move-result-wide v10

    double-to-float v12, v10

    .line 108
    .local v12, "distance":F
    const/4 v13, 0x0

    .line 110
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

    .line 111
    const/4 v13, 0x1

    .line 117
    :goto_ad
    :try_start_ad
    const-string v10, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 119
    .local v14, "timestamp":J
    new-instance v3, Lcom/tencent/msdk/remote/api/PersonInfo;

    const-string v10, ""

    const-string v11, ""

    invoke-direct/range {v3 .. v15}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZJ)V

    .line 122
    .local v3, "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 123
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_10

    .line 102
    .end local v3    # "u":Lcom/tencent/msdk/remote/api/PersonInfo;
    .end local v6    # "gender":Ljava/lang/String;
    .end local v7    # "pictureSmall":Ljava/lang/String;
    .end local v8    # "pictureMiddle":Ljava/lang/String;
    .end local v9    # "pictureLarge":Ljava/lang/String;
    .end local v12    # "distance":F
    .end local v13    # "isFriend":Z
    .end local v14    # "timestamp":J
    :cond_ca
    const-string v6, "\u7537"
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_cc} :catch_d3

    goto/16 :goto_42

    .line 113
    .restart local v6    # "gender":Ljava/lang/String;
    .restart local v7    # "pictureSmall":Ljava/lang/String;
    .restart local v8    # "pictureMiddle":Ljava/lang/String;
    .restart local v9    # "pictureLarge":Ljava/lang/String;
    .restart local v12    # "distance":F
    .restart local v13    # "isFriend":Z
    :cond_ce
    const/4 v13, 0x0

    goto :goto_ad

    .line 114
    :catch_d0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_ad

    .line 125
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

    .line 126
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d
.end method

.method public static formatUser(Lorg/json/JSONObject;)Lcom/tencent/msdk/remote/api/PersonInfo;
    .registers 19
    .param p0, "jsonUser"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    const/4 v15, 0x0

    .line 55
    .local v15, "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    if-nez p0, :cond_8

    .line 56
    const/4 v2, 0x0

    move-object/from16 v16, v2

    move-object v2, v15

    .line 88
    .end local v15    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    .local v2, "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    :goto_7
    return-object v16

    .line 60
    .end local v2    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    .restart local v15    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    :cond_8
    :try_start_8
    const-string v16, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "nickName":Ljava/lang/String;
    const-string v16, "openid"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "openId":Ljava/lang/String;
    const-string v16, "2"

    const-string v17, "sex"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e1

    const-string v5, "\u5973"

    .line 63
    .local v5, "gender":Ljava/lang/String;
    :goto_30
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "picture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/46"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "pictureSmall":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "picture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/96"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "pictureMiddle":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "picture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/132"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "pictureLarge":Ljava/lang/String;
    const-string v16, "provice"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "provice":Ljava/lang/String;
    const-string v16, "city"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "city":Ljava/lang/String;
    const-string v16, "gpsCity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "gpsCity":Ljava/lang/String;
    const-string v12, ""

    .line 72
    .local v12, "language":Ljava/lang/String;
    const-string v16, "language"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_bd

    .line 73
    const-string v16, "language"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    :cond_bd
    const-string v13, ""

    .line 76
    .local v13, "country":Ljava/lang/String;
    const-string v16, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d5

    .line 77
    const-string v16, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 80
    :cond_d5
    new-instance v2, Lcom/tencent/msdk/remote/api/PersonInfo;

    invoke-direct/range {v2 .. v13}, Lcom/tencent/msdk/remote/api/PersonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_da} :catch_e5

    .line 83
    .end local v15    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    .restart local v2    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    :try_start_da
    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_da .. :try_end_dd} :catch_eb

    .end local v3    # "nickName":Ljava/lang/String;
    .end local v4    # "openId":Ljava/lang/String;
    .end local v5    # "gender":Ljava/lang/String;
    .end local v6    # "pictureSmall":Ljava/lang/String;
    .end local v7    # "pictureMiddle":Ljava/lang/String;
    .end local v8    # "pictureLarge":Ljava/lang/String;
    .end local v9    # "provice":Ljava/lang/String;
    .end local v10    # "city":Ljava/lang/String;
    .end local v11    # "gpsCity":Ljava/lang/String;
    .end local v12    # "language":Ljava/lang/String;
    .end local v13    # "country":Ljava/lang/String;
    :goto_dd
    move-object/from16 v16, v2

    .line 88
    goto/16 :goto_7

    .line 62
    .end local v2    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    .restart local v3    # "nickName":Ljava/lang/String;
    .restart local v4    # "openId":Ljava/lang/String;
    .restart local v15    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    :cond_e1
    :try_start_e1
    const-string v5, "\u7537"
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_e1 .. :try_end_e3} :catch_e5

    goto/16 :goto_30

    .line 84
    .end local v3    # "nickName":Ljava/lang/String;
    .end local v4    # "openId":Ljava/lang/String;
    :catch_e5
    move-exception v14

    move-object v2, v15

    .line 85
    .end local v15    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    .restart local v2    # "user":Lcom/tencent/msdk/remote/api/PersonInfo;
    .local v14, "e":Lorg/json/JSONException;
    :goto_e7
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_dd

    .line 84
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v3    # "nickName":Ljava/lang/String;
    .restart local v4    # "openId":Ljava/lang/String;
    .restart local v5    # "gender":Ljava/lang/String;
    .restart local v6    # "pictureSmall":Ljava/lang/String;
    .restart local v7    # "pictureMiddle":Ljava/lang/String;
    .restart local v8    # "pictureLarge":Ljava/lang/String;
    .restart local v9    # "provice":Ljava/lang/String;
    .restart local v10    # "city":Ljava/lang/String;
    .restart local v11    # "gpsCity":Ljava/lang/String;
    .restart local v12    # "language":Ljava/lang/String;
    .restart local v13    # "country":Ljava/lang/String;
    :catch_eb
    move-exception v14

    goto :goto_e7
.end method
