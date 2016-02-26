.class Lcom/tencent/msdk/remote/api/QueryQQUserInfo;
.super Lcom/tencent/msdk/remote/api/RemoteApiBase;
.source "QueryQQUserInfo.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "queryQQUserInfo"

.field private static final PATH:Ljava/lang/String; = "/relation/qqprofile"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;-><init>()V

    .line 20
    :try_start_3
    iget-object v1, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->jsonBody:Lorg/json/JSONObject;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v1, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->jsonBody:Lorg/json/JSONObject;

    const-string v2, "accessToken"

    iget-object v3, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object v1, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->jsonBody:Lorg/json/JSONObject;

    const-string v2, "openid"

    iget-object v3, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 27
    :goto_1e
    return-void

    .line 23
    :catch_1f
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "JsonExcption in QueryQQMyInfo"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method private callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V
    .registers 7
    .param p1, "flag"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "person"    # Lcom/tencent/msdk/remote/api/PersonInfo;

    .prologue
    .line 30
    new-instance v1, Lcom/tencent/msdk/remote/api/RelationRet;

    invoke-direct {v1}, Lcom/tencent/msdk/remote/api/RelationRet;-><init>()V

    .line 31
    .local v1, "rr":Lcom/tencent/msdk/remote/api/RelationRet;
    iput p1, v1, Lcom/tencent/msdk/remote/api/RelationRet;->flag:I

    .line 32
    iput-object p2, v1, Lcom/tencent/msdk/remote/api/RelationRet;->desc:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 34
    .local v0, "persons":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/remote/api/PersonInfo;>;"
    if-eqz p3, :cond_13

    .line 35
    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_13
    iput-object v0, v1, Lcom/tencent/msdk/remote/api/RelationRet;->persons:Ljava/util/Vector;

    .line 38
    sget v2, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v2, v1, Lcom/tencent/msdk/remote/api/RelationRet;->platform:I

    .line 39
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnBackendRelationCallback(Lcom/tencent/msdk/remote/api/RelationRet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getMyId()I
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    invoke-virtual {v0}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->ordinal()I

    move-result v0

    return v0
.end method

.method protected getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const-string v0, "/relation/qqprofile"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;II)V
    .registers 7
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->getMyId()I

    move-result v0

    if-eq p3, v0, :cond_d

    .line 83
    const-string v0, "a wrong callback"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 89
    :goto_c
    return-void

    .line 86
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

    .line 87
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    .line 88
    const-string v0, "queryQQUserInfo"

    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V

    goto :goto_c
.end method

.method public onSuccess(Ljava/lang/String;II)V
    .registers 14
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    const/4 v8, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    .local v4, "person":Lcom/tencent/msdk/remote/api/PersonInfo;
    const/4 v1, -0x1

    .line 46
    .local v1, "flag":I
    const-string v3, " unknow error onSuccess"

    .line 47
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->getMyId()I

    move-result v6

    if-eq p3, v6, :cond_11

    .line 48
    const-string v6, "a wrong callback"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 78
    :goto_10
    return-void

    .line 51
    :cond_11
    if-nez p1, :cond_20

    .line 52
    const-string v6, "queryQQUserInfo onsuccess response data is null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 53
    const-string v6, "queryQQUserInfo"

    const/16 v7, 0x3ea

    invoke-virtual {p0, v6, v8, v7, v8}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V

    goto :goto_10

    .line 56
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

    .line 58
    :try_start_36
    new-instance v2, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "jsonRtn":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->getNetDesc(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v6, "ret"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 61
    .local v5, "ret":I
    if-nez v5, :cond_6c

    .line 62
    iget-object v6, p0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->openId:Ljava/lang/String;

    new-instance v7, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v7, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/tencent/msdk/remote/api/QQInfoFormatter;->formatMyInfo(Ljava/lang/String;Lcom/tencent/msdk/remote/api/SafeJSONObject;)Lcom/tencent/msdk/remote/api/PersonInfo;

    move-result-object v4

    .line 64
    const-string v6, "queryQQUserInfo"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_67} :catch_8a
    .catchall {:try_start_36 .. :try_end_67} :catchall_bc

    .line 65
    const/4 v1, 0x0

    .line 76
    :goto_68
    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    goto :goto_10

    .line 67
    :cond_6c
    :try_start_6c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryQQUserInfo onsuccess, ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 68
    const-string v6, "queryQQUserInfo"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v5, v8}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_89} :catch_8a
    .catchall {:try_start_6c .. :try_end_89} :catchall_bc

    goto :goto_68

    .line 70
    .end local v2    # "jsonRtn":Lorg/json/JSONObject;
    .end local v5    # "ret":I
    :catch_8a
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    :try_start_8b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "json error(QueryQQMyInfo): "

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

    .line 74
    const-string v6, "queryQQUserInfo"

    const/4 v7, 0x0

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->reportEventToBeacon(Ljava/lang/String;ZIZ)V
    :try_end_b7
    .catchall {:try_start_8b .. :try_end_b7} :catchall_bc

    .line 76
    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    goto/16 :goto_10

    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_bc
    move-exception v6

    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->callback(ILjava/lang/String;Lcom/tencent/msdk/remote/api/PersonInfo;)V

    throw v6
.end method
