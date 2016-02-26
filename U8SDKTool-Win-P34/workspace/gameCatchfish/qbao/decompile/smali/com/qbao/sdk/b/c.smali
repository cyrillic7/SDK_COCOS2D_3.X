.class public Lcom/qbao/sdk/b/c;
.super Lcom/qbao/sdk/b/d;
.source "JsonRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qbao/sdk/b/d;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/qbao/core/c/f;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/d;-><init>(Lcom/qbao/core/c/f;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected aa(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move-object v0, v1

    .line 43
    :cond_10
    :goto_10
    return-object v0

    .line 28
    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_3f

    .line 29
    :try_start_16
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v2, "responseCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 33
    new-instance v3, Lcom/qbao/sdk/b/b;

    invoke-direct {v3, v1, v2}, Lcom/qbao/sdk/b/b;-><init>(Ljava/lang/String;I)V

    .line 34
    const-string v4, "errorCode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 35
    new-instance v5, Lcom/qbao/sdk/b/e;

    invoke-direct {v5, v2, v4, v1}, Lcom/qbao/sdk/b/e;-><init>(IILjava/lang/String;)V

    .line 36
    invoke-virtual {v3, v5}, Lcom/qbao/sdk/b/b;->a(Lcom/qbao/sdk/b/e;)V

    .line 37
    throw v3
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_3a} :catch_3a

    .line 39
    :catch_3a
    move-exception v1

    .line 40
    :goto_3b
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10

    .line 39
    :catch_3f
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3b
.end method
