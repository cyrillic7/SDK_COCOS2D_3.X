.class public abstract Lcom/tencent/msdk/remote/api/RemoteApiBase;
.super Ljava/lang/Object;
.source "RemoteApiBase.java"

# interfaces
.implements Lcom/tencent/msdk/communicator/IHttpRequestListener;


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected appId:Ljava/lang/String;

.field protected appKey:Ljava/lang/String;

.field protected jsonBody:Lorg/json/JSONObject;

.field protected openId:Ljava/lang/String;

.field protected pf:Ljava/lang/String;

.field protected pfKey:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private requestStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appId:Ljava/lang/String;

    .line 22
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appKey:Ljava/lang/String;

    .line 23
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->openId:Ljava/lang/String;

    .line 24
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->accessToken:Ljava/lang/String;

    .line 25
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->pf:Ljava/lang/String;

    .line 26
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->pfKey:Ljava/lang/String;

    .line 27
    new-instance v3, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v3}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>()V

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->jsonBody:Lorg/json/JSONObject;

    .line 28
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->platform:Ljava/lang/String;

    .line 29
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->requestStartTime:J

    .line 32
    new-instance v1, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 33
    .local v1, "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v1}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    move-result v2

    .line 34
    .local v2, "plat":I
    iget v3, v1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v3, :cond_da

    .line 35
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->openId:Ljava/lang/String;

    .line 36
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->pf:Ljava/lang/String;

    .line 37
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->pfKey:Ljava/lang/String;

    .line 39
    sget v3, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-eq v2, v3, :cond_4b

    sget v3, Lcom/tencent/msdk/WeGame;->QQHALL:I

    if-ne v2, v3, :cond_a0

    .line 40
    :cond_4b
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appId:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/WeGame;->getMSDKKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appKey:Ljava/lang/String;

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->accessToken:Ljava/lang/String;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->platform:Ljava/lang/String;

    .line 51
    :cond_7b
    :goto_7b
    :try_start_7b
    iget-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->jsonBody:Lorg/json/JSONObject;

    const-string v4, "appid"

    iget-object v5, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->jsonBody:Lorg/json/JSONObject;

    const-string v4, "openid"

    iget-object v5, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->openId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->jsonBody:Lorg/json/JSONObject;

    const-string v4, "accessToken"

    iget-object v5, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->jsonBody:Lorg/json/JSONObject;

    const-string v4, "platform"

    iget-object v5, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->platform:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_9f} :catch_d5

    .line 61
    :goto_9f
    return-void

    .line 44
    :cond_a0
    sget v3, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne v2, v3, :cond_7b

    .line 45
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appId:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/WeGame;->getMSDKKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appKey:Ljava/lang/String;

    .line 47
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->accessToken:Ljava/lang/String;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->platform:Ljava/lang/String;

    goto :goto_7b

    .line 55
    :catch_d5
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9f

    .line 59
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_da
    const-string v3, "no login record"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_9f
.end method


# virtual methods
.method protected getCustomDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getExtUrlParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string v0, ""

    return-object v0
.end method

.method protected getInterfaceName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "name":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "nameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, "interfaceName":Ljava/lang/String;
    if-eqz v2, :cond_19

    array-length v3, v2

    if-lez v3, :cond_19

    .line 102
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 104
    :cond_19
    return-object v0
.end method

.method protected abstract getMyId()I
.end method

.method public getNetDesc(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "jsonRtn"    # Lorg/json/JSONObject;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v1, ""

    .line 109
    .local v1, "msg":Ljava/lang/String;
    if-eqz p1, :cond_31

    .line 111
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_30} :catch_32

    move-result-object v1

    .line 117
    :cond_31
    :goto_31
    return-object v1

    .line 113
    :catch_32
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_31
.end method

.method protected abstract getPath()Ljava/lang/String;
.end method

.method protected reportEventToBeacon(Ljava/lang/String;ZIZ)V
    .registers 16
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "statusCode"    # I
    .param p4, "isLogicError"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 133
    if-eqz p2, :cond_d

    .line 134
    iget-wide v2, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->requestStartTime:J

    const/4 v5, 0x0

    move-object v1, p1

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    .line 141
    :goto_c
    return-void

    .line 136
    :cond_d
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "param_FailCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "msdk_logic_error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_4d

    move v0, v4

    :goto_3a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-wide v6, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->requestStartTime:J

    move-object v5, p1

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto :goto_c

    :cond_4d
    move v0, v8

    .line 138
    goto :goto_3a
.end method

.method public send()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;->send(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected send(Ljava/lang/String;)V
    .registers 12
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->requestStartTime:J

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->requestStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "timestamp":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appKey:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/tencent/msdk/tools/MsdkSig;->make(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "sig":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AndroidSDK_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "openUserAgent":Ljava/lang/String;
    const-string v6, "?timestamp=%s&appid=%s&sig=%s&opua=%s&openid=%s&encode=2"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->appId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/tencent/msdk/remote/api/RemoteApiBase;->openId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;->getExtUrlParams()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "extraParams":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    :cond_8f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;->getCustomDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 94
    new-instance v6, Lcom/tencent/msdk/communicator/HttpRequestManager;

    invoke-direct {v6, p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    invoke-virtual {p0}, Lcom/tencent/msdk/remote/api/RemoteApiBase;->getMyId()I

    move-result v7

    invoke-virtual {v6, v5, p1, v7}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-void
.end method
