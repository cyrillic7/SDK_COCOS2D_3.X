.class public Lcom/tencent/msdk/request/QQA8Request;
.super Lcom/tencent/msdk/request/BaseRequest;
.source "QQA8Request.java"


# instance fields
.field private A8:Ljava/lang/String;

.field private st:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/msdk/request/BaseRequest;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Request;->A8:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Request;->st:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11
    .param p1, "A8"    # Ljava/lang/String;
    .param p2, "st"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "offerId"    # Ljava/lang/String;
    .param p6, "platformId"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/tencent/msdk/request/QQA8Request;->A8:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/tencent/msdk/request/QQA8Request;->st:Ljava/lang/String;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_qq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, p4, p5, v2}, Lcom/tencent/msdk/request/QQA8Request;->setBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/tencent/msdk/request/QQA8Request;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 19
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1e
    const-string v2, "A8"

    iget-object v3, p0, Lcom/tencent/msdk/request/QQA8Request;->A8:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v2, "st"

    iget-object v3, p0, Lcom/tencent/msdk/request/QQA8Request;->st:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 24
    :goto_2c
    return-object v1

    .line 21
    :catch_2d
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method
