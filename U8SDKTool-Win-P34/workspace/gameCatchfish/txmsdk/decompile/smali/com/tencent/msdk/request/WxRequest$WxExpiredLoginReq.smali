.class public Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;
.super Lcom/tencent/msdk/request/BaseRequest;
.source "WxRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/request/WxRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WxExpiredLoginReq"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private grantType:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/request/WxRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/request/WxRequest;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->this$0:Lcom/tencent/msdk/request/WxRequest;

    invoke-direct {p0}, Lcom/tencent/msdk/request/BaseRequest;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->grantType:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->accessToken:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->refreshToken:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->openId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReqJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 13
    .param p1, "grantType"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "channel"    # Ljava/lang/String;
    .param p6, "offerId"    # Ljava/lang/String;
    .param p7, "platformId"    # Ljava/lang/String;
    .param p8, "openId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->grantType:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->accessToken:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->refreshToken:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->openId:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_wx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p4, p5, p6, v2}, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->setBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_22
    const-string v2, "grantType"

    iget-object v3, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->grantType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "accessToken"

    iget-object v3, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "refreshToken"

    iget-object v3, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "userid"

    iget-object v3, p0, Lcom/tencent/msdk/request/WxRequest$WxExpiredLoginReq;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_3e} :catch_3f

    .line 56
    :goto_3e
    return-object v1

    .line 52
    :catch_3f
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3e
.end method
