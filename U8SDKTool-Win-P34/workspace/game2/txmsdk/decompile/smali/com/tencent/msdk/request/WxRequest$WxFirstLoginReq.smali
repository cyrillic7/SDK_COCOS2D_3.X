.class public Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;
.super Lcom/tencent/msdk/request/BaseRequest;
.source "WxRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/request/WxRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WxFirstLoginReq"
.end annotation


# instance fields
.field private grantType:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/request/WxRequest;

.field private wxCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/request/WxRequest;)V
    .registers 3

    .prologue
    .line 11
    iput-object p1, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->this$0:Lcom/tencent/msdk/request/WxRequest;

    invoke-direct {p0}, Lcom/tencent/msdk/request/BaseRequest;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->grantType:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->wxCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11
    .param p1, "grantType"    # Ljava/lang/String;
    .param p2, "wxCode"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "offerId"    # Ljava/lang/String;
    .param p6, "platformId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->grantType:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->wxCode:Ljava/lang/String;

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

    invoke-virtual {p0, p3, p4, p5, v2}, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->setBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 23
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1e
    const-string v2, "grantType"

    iget-object v3, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->grantType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "code"

    iget-object v3, p0, Lcom/tencent/msdk/request/WxRequest$WxFirstLoginReq;->wxCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 28
    :goto_2c
    return-object v1

    .line 25
    :catch_2d
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method
