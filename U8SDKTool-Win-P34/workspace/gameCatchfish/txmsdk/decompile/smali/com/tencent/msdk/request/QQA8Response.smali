.class public Lcom/tencent/msdk/request/QQA8Response;
.super Ljava/lang/Object;
.source "QQA8Response.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public expired:I

.field public first:I

.field public msg:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field public payToken:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public regChannel:Ljava/lang/String;

.field public ret:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/request/QQA8Response;->ret:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->msg:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->accessToken:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->expired:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->openid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->payToken:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->first:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->regChannel:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->pfKey:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->pf:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->permission:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    :try_start_0
    const-string v1, "ret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->ret:I

    .line 37
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->msg:Ljava/lang/String;

    .line 38
    const-string v1, "accessToken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->accessToken:Ljava/lang/String;

    .line 39
    const-string v1, "expired"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->expired:I

    .line 40
    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->openid:Ljava/lang/String;

    .line 41
    const-string v1, "payToken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->payToken:Ljava/lang/String;

    .line 42
    const-string v1, "first"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->first:I

    .line 43
    const-string v1, "regChannel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->regChannel:Ljava/lang/String;

    .line 44
    const-string v1, "pfKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->pfKey:Ljava/lang/String;

    .line 45
    const-string v1, "pf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->pf:Ljava/lang/String;

    .line 46
    const-string v1, "funcs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/QQA8Response;->permission:Ljava/lang/String;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_58} :catch_59

    .line 50
    :goto_58
    return-void

    .line 47
    :catch_59
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/request/QQA8Response;->ret:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->msg:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->accessToken:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->expired:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->openid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->payToken:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/tencent/msdk/request/QQA8Response;->first:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->regChannel:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->pfKey:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->pf:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QQA8Response;->permission:Ljava/lang/String;

    .line 33
    return-void
.end method
