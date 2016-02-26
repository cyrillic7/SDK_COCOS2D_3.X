.class public Lcom/tencent/msdk/request/WxResponse;
.super Ljava/lang/Object;
.source "WxResponse.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public checkTokenFlag:I

.field public expired:I

.field public first:I

.field public msg:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field public otherFuncs:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public refreshToken:Ljava/lang/String;

.field public regChannel:Ljava/lang/String;

.field public ret:I

.field public scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->msg:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->accessToken:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->refreshToken:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->openid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->scope:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/request/WxResponse;->checkTokenFlag:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->regChannel:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->pfKey:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->pf:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->permission:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/WxResponse;->otherFuncs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    const-string v1, "ret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/WxResponse;->ret:I

    .line 28
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->msg:Ljava/lang/String;

    .line 29
    const-string v1, "accessToken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->accessToken:Ljava/lang/String;

    .line 30
    const-string v1, "expired"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/WxResponse;->expired:I

    .line 31
    const-string v1, "refreshToken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->refreshToken:Ljava/lang/String;

    .line 32
    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->openid:Ljava/lang/String;

    .line 33
    const-string v1, "scope"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->scope:Ljava/lang/String;

    .line 34
    const-string v1, "first"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/WxResponse;->first:I

    .line 35
    const-string v1, "regChannel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->regChannel:Ljava/lang/String;

    .line 36
    const-string v1, "pfKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->pfKey:Ljava/lang/String;

    .line 37
    const-string v1, "pf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->pf:Ljava/lang/String;

    .line 38
    const-string v1, "funcs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->permission:Ljava/lang/String;

    .line 39
    const-string v1, "otherFuncs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 40
    const-string v1, "otherFuncs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/WxResponse;->otherFuncs:Ljava/lang/String;

    .line 42
    :cond_70
    const-string v1, "checkTokenFlag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 43
    const-string v1, "checkTokenFlag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/WxResponse;->checkTokenFlag:I

    .line 51
    :goto_80
    return-void

    .line 45
    :cond_81
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/msdk/request/WxResponse;->checkTokenFlag:I
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_80

    .line 47
    :catch_85
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_80
.end method
