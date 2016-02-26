.class public Lcom/baidu/frontia/module/deeplink/AccessWifi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;
.implements Lcom/baidu/frontia/module/deeplink/d;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V
    .registers 22

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v2, "callback"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "params"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "zid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/frontia/module/deeplink/g;->a()Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/frontia/module/deeplink/g;->b()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_44

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    :cond_44
    const/4 v3, 0x2

    const-string v4, "LocalServer API Params Wrong"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d

    :cond_4d
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_98

    :try_start_57
    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getDecrypted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ssid"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "psk"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "fail_url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_77} :catch_8d

    move-result-object v3

    :goto_78
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_84

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_165

    :cond_84
    const/4 v3, 0x2

    const-string v4, "LocalServer API Params Wrong"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d

    :catch_8d
    move-exception v3

    const/4 v3, 0x2

    const-string v4, "LocalServer API Params Wrong"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    :cond_98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    const-string v7, "com.baidu.push.wifi.ZID"

    invoke-static {v3, v7}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    const-string v7, "com.baidu.push.wifi.WIFI_INFO"

    invoke-static {v3, v7}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getDecrypted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_b6
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ssid"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c0} :catch_cc

    move-result-object v6

    :try_start_c1
    const-string v3, "psk"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_1ed

    move-result-object v3

    move-object v5, v6

    :goto_c8
    move-object v7, v10

    move-object v6, v3

    move-object v3, v9

    goto :goto_78

    :catch_cc
    move-exception v3

    move-object v3, v6

    :goto_ce
    move-object/from16 v18, v5

    move-object v5, v3

    move-object/from16 v3, v18

    goto :goto_c8

    :cond_d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/util/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_dc
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_14b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/i;->b(Landroid/content/Context;)Ljava/util/List;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ef} :catch_15d

    move-result-object v13

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v11, v3

    move-object v8, v6

    move-object v6, v5

    move v5, v7

    :goto_f6
    :try_start_f6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f9} :catch_1dd

    move-result v3

    if-ge v11, v3, :cond_142

    const/4 v3, 0x0

    :try_start_fd
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v3, "ssid"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_10b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v0, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_10b

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v16, "\""

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_132} :catch_1e6

    move-result v3

    if-eqz v3, :cond_10b

    :try_start_135
    const-string v3, "psk"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13a} :catch_1e9

    move-result-object v5

    const/4 v3, 0x1

    move-object v6, v7

    :goto_13d
    move-object v8, v6

    move-object v6, v5

    move v5, v3

    :goto_140
    if-eqz v5, :cond_147

    :cond_142
    :goto_142
    move-object v3, v9

    move-object v7, v10

    move-object v5, v8

    goto/16 :goto_78

    :cond_147
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_f6

    :cond_14b
    const/4 v3, 0x0

    :try_start_14c
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "ssid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_155} :catch_15d

    move-result-object v8

    :try_start_156
    const-string v6, "psk"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_15b} :catch_1e1

    move-result-object v6

    goto :goto_142

    :catch_15d
    move-exception v3

    move-object v3, v5

    move-object v5, v6

    :goto_160
    move-object v7, v10

    move-object v6, v3

    move-object v3, v9

    goto/16 :goto_78

    :cond_165
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_16a
    const-string v9, "type"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "ssid"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "psk"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_185

    const-string v9, "url"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_185
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string v9, "fail_url"

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    const-string v9, "com.baidu.push.wifi.WIFI_INFO"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getEncrypted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x493e0

    add-long/2addr v10, v12

    invoke-static {v3, v9, v8, v10, v11}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    const-string v8, "com.baidu.push.wifi.ZID"

    invoke-static {v3, v8, v4}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const-string v8, " ACCESSING ... "

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v8}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/baidu/android/pushservice/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c1
    .catch Lorg/json/JSONException; {:try_start_16a .. :try_end_1c1} :catch_1d8

    :goto_1c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    const-string v3, "020806"

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/baidu/android/pushservice/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/baidu/frontia/module/deeplink/a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/frontia/module/deeplink/a;-><init>(Lcom/baidu/frontia/module/deeplink/AccessWifi;)V

    invoke-virtual {v2}, Lcom/baidu/frontia/module/deeplink/a;->start()V

    goto/16 :goto_d

    :catch_1d8
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1c1

    :catch_1dd
    move-exception v3

    move-object v3, v6

    move-object v5, v8

    goto :goto_160

    :catch_1e1
    move-exception v3

    move-object v3, v5

    move-object v5, v8

    goto/16 :goto_160

    :catch_1e6
    move-exception v3

    goto/16 :goto_140

    :catch_1e9
    move-exception v3

    move-object v8, v7

    goto/16 :goto_140

    :catch_1ed
    move-exception v3

    move-object v3, v6

    goto/16 :goto_ce

    :cond_1f1
    move v3, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_13d
.end method
