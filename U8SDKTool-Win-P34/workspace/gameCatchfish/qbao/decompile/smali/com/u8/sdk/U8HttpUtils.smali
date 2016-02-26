.class public Lcom/u8/sdk/U8HttpUtils;
.super Ljava/lang/Object;
.source "U8HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 17
    .param p0, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v8, ""

    .line 58
    .local v8, "paramsEncoded":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 59
    const-string v13, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "fullUrl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 65
    .local v9, "result":Ljava/lang/String;
    const/4 v11, 0x0

    .line 66
    .local v11, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 67
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 69
    .local v5, "in":Ljava/io/InputStreamReader;
    :try_start_27
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_98
    .catchall {:try_start_27 .. :try_end_2c} :catchall_79

    .line 70
    .end local v11    # "url":Ljava/net/URL;
    .local v12, "url":Ljava/net/URL;
    :try_start_2c
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 71
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_9a
    .catchall {:try_start_2c .. :try_end_3d} :catchall_91

    .line 72
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .local v6, "in":Ljava/io/InputStreamReader;
    :try_start_3d
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v10, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 75
    .local v7, "line":Ljava/lang/String;
    :goto_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5f

    .line 78
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_63
    .catchall {:try_start_3d .. :try_end_51} :catchall_94

    move-result-object v9

    .line 82
    if-eqz v2, :cond_57

    .line 83
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 85
    :cond_57
    if-eqz v6, :cond_8e

    .line 87
    :try_start_59
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_8a

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .line 94
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_5e
    :goto_5e
    return-object v9

    .line 76
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_5f
    :try_start_5f
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_94

    goto :goto_48

    .line 79
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_63
    move-exception v3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .line 80
    .end local v12    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_66
    :try_start_66
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_79

    .line 82
    if-eqz v2, :cond_6e

    .line 83
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 85
    :cond_6e
    if-eqz v5, :cond_5e

    .line 87
    :try_start_70
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_5e

    .line 88
    :catch_74
    move-exception v3

    .line 89
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    .line 81
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_79
    move-exception v13

    .line 82
    :goto_7a
    if-eqz v2, :cond_7f

    .line 83
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 85
    :cond_7f
    if-eqz v5, :cond_84

    .line 87
    :try_start_81
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 93
    :cond_84
    :goto_84
    throw v13

    .line 88
    :catch_85
    move-exception v3

    .line 89
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_8a
    move-exception v3

    .line 89
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_8e
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_5e

    .line 81
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_91
    move-exception v13

    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_7a

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_94
    move-exception v13

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_7a

    .line 79
    :catch_98
    move-exception v3

    goto :goto_66

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_9a
    move-exception v3

    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_66
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_15

    .line 29
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30
    .local v1, "keyItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 37
    .end local v1    # "keyItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    invoke-static {p0, v2}, Lcom/u8/sdk/U8HttpUtils;->httpGet(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 31
    .restart local v1    # "keyItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    .local v3, "val":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public static httpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 18
    .param p0, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v8, ""

    .line 100
    .local v8, "paramsEncoded":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 101
    const-string v13, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    :cond_c
    const-string v13, "U8SDK"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "httpPost : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v9, 0x0

    .line 105
    .local v9, "result":Ljava/lang/String;
    const/4 v11, 0x0

    .line 106
    .local v11, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 107
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 109
    .local v5, "in":Ljava/io/InputStreamReader;
    :try_start_24
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_c4
    .catchall {:try_start_24 .. :try_end_2b} :catchall_a5

    .line 110
    .end local v11    # "url":Ljava/net/URL;
    .local v12, "url":Ljava/net/URL;
    :try_start_2b
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 111
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 112
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 113
    const-string v13, "POST"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 114
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v13, "Charset"

    const-string v14, "utf-8"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v3, Ljava/io/DataOutputStream;

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 116
    invoke-direct {v3, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v3, "dop":Ljava/io/DataOutputStream;
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 120
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 122
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_69} :catch_c6
    .catchall {:try_start_2b .. :try_end_69} :catchall_bd

    .line 123
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .local v6, "in":Ljava/io/InputStreamReader;
    :try_start_69
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v10, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 126
    .local v7, "line":Ljava/lang/String;
    :goto_74
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8b

    .line 129
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7d} :catch_8f
    .catchall {:try_start_69 .. :try_end_7d} :catchall_c0

    move-result-object v9

    .line 133
    if-eqz v2, :cond_83

    .line 134
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_83
    if-eqz v6, :cond_ba

    .line 138
    :try_start_85
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_b6

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .line 145
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_8a
    :goto_8a
    return-object v9

    .line 127
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_8b
    :try_start_8b
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f
    .catchall {:try_start_8b .. :try_end_8e} :catchall_c0

    goto :goto_74

    .line 130
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_8f
    move-exception v4

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .line 131
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    .end local v12    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_92
    :try_start_92
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_a5

    .line 133
    if-eqz v2, :cond_9a

    .line 134
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_9a
    if-eqz v5, :cond_8a

    .line 138
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_8a

    .line 139
    :catch_a0
    move-exception v4

    .line 140
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_a5
    move-exception v13

    .line 133
    :goto_a6
    if-eqz v2, :cond_ab

    .line 134
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_ab
    if-eqz v5, :cond_b0

    .line 138
    :try_start_ad
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 144
    :cond_b0
    :goto_b0
    throw v13

    .line 139
    :catch_b1
    move-exception v4

    .line 140
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_b6
    move-exception v4

    .line 140
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_ba
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_8a

    .line 132
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_bd
    move-exception v13

    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_a6

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v3    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_c0
    move-exception v13

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_a6

    .line 130
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    :catch_c4
    move-exception v4

    goto :goto_92

    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_c6
    move-exception v4

    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_92
.end method

.method public static httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_15

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    .local v1, "keyItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 52
    .end local v1    # "keyItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    invoke-static {p0, v2}, Lcom/u8/sdk/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 46
    .restart local v1    # "keyItors":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, "val":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method
