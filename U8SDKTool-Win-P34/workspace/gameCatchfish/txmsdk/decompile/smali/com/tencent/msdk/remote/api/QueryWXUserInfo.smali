.class Lcom/tencent/msdk/remote/api/QueryWXUserInfo;
.super Lcom/tencent/msdk/remote/api/RemoteApiBase;
.source "QueryWXUserInfo.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "queryWXUserInfo"

.field private static final PATH:Ljava/lang/String; = "/relation/wxuserinfo"


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;-><init>()V

    .line 21
    :try_start_3
    iget-object v2, p0, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->jsonBody:Lorg/json/JSONObject;

    const-string v3, "accessToken"

    iget-object v4, p0, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 24
    iget-object v2, p0, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->jsonBody:Lorg/json/JSONObject;

    const-string v3, "openids"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 28
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    :goto_1d
    return-void

    .line 25
    :catch_1e
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method private callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V
    .registers 7
    .param p1, "flag"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "person"    # Lcom/tencent/msdk/remote/api/PersonInfo;

    .prologue
    .line 31
    new-instance v1, Lcom/tencent/msdk/remote/api/RelationRet;

    invoke-direct {v1}, Lcom/tencent/msdk/remote/api/RelationRet;-><init>()V

    .line 32
    .local v1, "rr":Lcom/tencent/msdk/remote/api/RelationRet;
    iput p1, v1, Lcom/tencent/msdk/remote/api/RelationRet;->flag:I

    .line 33
    iput-object p2, v1, Lcom/tencent/msdk/remote/api/RelationRet;->desc:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 35
    .local v0, "persons":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/remote/api/PersonInfo;>;"
    if-eqz p3, :cond_13

    .line 36
    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_13
    iput-object v0, v1, Lcom/tencent/msdk/remote/api/RelationRet;->persons:Ljava/util/Vector;

    .line 39
    sget v2, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v2, v1, Lcom/tencent/msdk/remote/api/RelationRet;->platform:I

    .line 40
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnBackendRelationCallback(Lcom/tencent/msdk/remote/api/RelationRet;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getMyId()I
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    invoke-virtual {v0}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ordinal()I

    move-result v0

    return v0
.end method

.method protected getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "/relation/wxuserinfo"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;II)V
    .registers 7
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->getMyId()I

    move-result v0

    if-eq p3, v0, :cond_d

    .line 84
    const-string v0, "a wrong callback"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 90
    :goto_c
    return-void

    .line 87
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 88
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    .line 89
    const-string v0, "queryWXUserInfo"

    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V

    goto :goto_c
.end method

.method public onSuccess(Ljava/lang/String;II)V
    .registers 14
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v8, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "person":Lcom/tencent/msdk/remote/api/PersonInfo;
    const/4 v1, -0x1

    .line 47
    .local v1, "flag":I
    const-string v3, " unknow error onSuccess"

    .line 48
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->getMyId()I

    move-result v6

    if-eq p3, v6, :cond_11

    .line 49
    const-string v6, "a wrong callback"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 79
    :goto_10
    return-void

    .line 53
    :cond_11
    if-nez p1, :cond_20

    .line 54
    const-string v6, "queryWXUserInfo onsuccess response data is null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 55
    const-string v6, "queryWXUserInfo"

    const/16 v7, 0x3ea

    invoke-virtual {p0, v6, v8, v7, v8}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V

    goto :goto_10

    .line 59
    :cond_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSuccess "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 61
    :try_start_36
    new-instance v2, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v2, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "jsonRtn":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->getNetDesc(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v6, "ret"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 64
    .local v5, "ret":I
    if-nez v5, :cond_60

    .line 65
    const-string v6, "queryWXUserInfo"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V

    .line 66
    invoke-static {v2}, Lcom/tencent/msdk/remote/api/WxInfoFormatter;->formatUser(Lorg/json/JSONObject;)Lcom/tencent/msdk/remote/api/PersonInfo;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_5a} :catch_7e
    .catchall {:try_start_36 .. :try_end_5a} :catchall_b0

    move-result-object v4

    .line 67
    const/4 v1, 0x0

    .line 77
    :goto_5c
    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    goto :goto_10

    .line 69
    :cond_60
    :try_start_60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryWXUserInfo onsuccess, ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 70
    const-string v6, "queryWXUserInfo"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v5, v8}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_7d} :catch_7e
    .catchall {:try_start_60 .. :try_end_7d} :catchall_b0

    goto :goto_5c

    .line 72
    .end local v2    # "jsonRtn":Lorg/json/JSONObject;
    .end local v5    # "ret":I
    :catch_7e
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    :try_start_7f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "json error(QueryWxMyInfo): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " statusCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 75
    const-string v6, "queryWXUserInfo"

    const/4 v7, 0x0

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V
    :try_end_ab
    .catchall {:try_start_7f .. :try_end_ab} :catchall_b0

    .line 77
    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    goto/16 :goto_10

    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_b0
    move-exception v6

    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    throw v6
.end method
