.class public Lcom/tencent/msdk/request/PfKeyRequest;
.super Lcom/tencent/msdk/request/BaseRequest;
.source "PfKeyRequest.java"


# instance fields
.field private flag:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private openKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/msdk/request/BaseRequest;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequest;->openId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequest;->openKey:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyRequest;->flag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 12
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "openKey"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "offerId"    # Ljava/lang/String;
    .param p6, "platformId"    # Ljava/lang/String;
    .param p7, "flag"    # I

    .prologue
    .line 16
    iput-object p1, p0, Lcom/tencent/msdk/request/PfKeyRequest;->openId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/tencent/msdk/request/PfKeyRequest;->openKey:Ljava/lang/String;

    .line 18
    const/4 v2, 0x1

    if-ne p7, v2, :cond_3b

    .line 19
    const-string v2, "1"

    iput-object v2, p0, Lcom/tencent/msdk/request/PfKeyRequest;->flag:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_wx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, p4, p5, v2}, Lcom/tencent/msdk/request/PfKeyRequest;->setBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/tencent/msdk/request/PfKeyRequest;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 27
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_25
    const-string v2, "userid"

    iget-object v3, p0, Lcom/tencent/msdk/request/PfKeyRequest;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v2, "accessToken"

    iget-object v3, p0, Lcom/tencent/msdk/request/PfKeyRequest;->openKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v2, "flag"

    iget-object v3, p0, Lcom/tencent/msdk/request/PfKeyRequest;->flag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_3a} :catch_59

    .line 34
    :goto_3a
    return-object v1

    .line 21
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_3b
    const/4 v2, 0x2

    if-ne p7, v2, :cond_21

    .line 22
    const-string v2, "2"

    iput-object v2, p0, Lcom/tencent/msdk/request/PfKeyRequest;->flag:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_qq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, p4, p5, v2}, Lcom/tencent/msdk/request/PfKeyRequest;->setBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 31
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_59
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3a
.end method
