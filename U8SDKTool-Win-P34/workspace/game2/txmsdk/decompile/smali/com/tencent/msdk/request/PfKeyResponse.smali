.class public Lcom/tencent/msdk/request/PfKeyResponse;
.super Ljava/lang/Object;
.source "PfKeyResponse.java"


# instance fields
.field public first:I

.field public msg:Ljava/lang/String;

.field public otherFuncs:Ljava/lang/String;

.field public paytokenExpire:J

.field public permission:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public regChannel:Ljava/lang/String;

.field public ret:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->msg:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->regChannel:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->pfKey:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->pf:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->permission:Ljava/lang/String;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->paytokenExpire:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/PfKeyResponse;->otherFuncs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    :try_start_0
    const-string v1, "ret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->ret:I

    .line 22
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->msg:Ljava/lang/String;

    .line 23
    const-string v1, "first"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->first:I

    .line 24
    const-string v1, "regChannel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->regChannel:Ljava/lang/String;

    .line 25
    const-string v1, "pfKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->pfKey:Ljava/lang/String;

    .line 26
    const-string v1, "pf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->pf:Ljava/lang/String;

    .line 27
    const-string v1, "funcs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->permission:Ljava/lang/String;

    .line 28
    const-string v1, "15004"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 29
    const-string v1, "15004"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/msdk/request/PfKeyResponse;->paytokenExpire:J

    .line 31
    :cond_48
    const-string v1, "otherFuncs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 32
    const-string v1, "otherFuncs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/request/PfKeyResponse;->otherFuncs:Ljava/lang/String;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_58} :catch_59

    .line 37
    :cond_58
    :goto_58
    return-void

    .line 34
    :catch_59
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58
.end method
