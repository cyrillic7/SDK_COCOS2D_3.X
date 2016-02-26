.class public Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;
.implements Lcom/baidu/frontia/module/deeplink/d;


# static fields
.field private static final TAG:Ljava/lang/String; = "IsWifiAvailable"


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
    .registers 20

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v2, "callback"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "zid"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/frontia/module/deeplink/g;->a()Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/frontia/module/deeplink/g;->b()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_3d
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p2

    invoke-static {v0, v9, v2, v3}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d

    :cond_46
    const/4 v7, 0x0

    const-string v6, ""

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/util/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_53
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/i;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    const/4 v2, 0x0

    move v8, v2

    :goto_62
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_65} :catch_112

    move-result v2

    if-ge v8, v2, :cond_ac

    const/4 v2, 0x0

    :try_start_69
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v2, "ssid"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_77
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v14, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_77

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v14, "\""

    const-string v15, ""

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_98} :catch_149

    move-result v2

    if-eqz v2, :cond_77

    :try_start_9b
    const-string v2, "psk"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_14c

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v16, v5

    move v5, v3

    move-object/from16 v3, v16

    :goto_a7
    move-object v6, v3

    move v7, v5

    move-object v3, v2

    :goto_aa
    if-eqz v7, :cond_10d

    :cond_ac
    move-object v5, v6

    :goto_ad
    if-eqz v7, :cond_133

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_b4
    const-string v6, "type"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "ssid"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "psk"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    const-string v6, "com.baidu.push.wifi.WIFI_INFO"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/jni/BaiduAppSSOJni;->getEncrypted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x493e0

    add-long/2addr v10, v12

    invoke-static {v3, v6, v2, v10, v11}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    const-string v3, "com.baidu.push.wifi.ZID"

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_e6} :catch_115

    :goto_e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    const-string v3, "020807"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/baidu/android/pushservice/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zwifi available "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v9, v2, v3}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    :cond_10d
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_62

    :catch_112
    move-exception v2

    move-object v5, v6

    goto :goto_ad

    :catch_115
    move-exception v2

    const-string v3, "IsWifiAvailable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    :cond_133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/IsWifiAvailable;->mContext:Landroid/content/Context;

    const-string v3, "020807"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/baidu/android/pushservice/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    const-string v3, "zwifi unavailable "

    move-object/from16 v0, p2

    invoke-static {v0, v9, v2, v3}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    :catch_149
    move-exception v2

    goto/16 :goto_aa

    :catch_14c
    move-exception v2

    move-object v6, v5

    goto/16 :goto_aa

    :cond_150
    move-object v2, v3

    move v5, v7

    move-object v3, v6

    goto/16 :goto_a7
.end method
