.class public final Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
.super Ljava/lang/Object;
.source "SapiAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReloginCredentials"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "account"

.field static final b:Ljava/lang/String; = "account_type"

.field static final c:Ljava/lang/String; = "password"

.field static final d:Ljava/lang/String; = "ubi"


# instance fields
.field public account:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public ubi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .registers 3
    .param p0, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 399
    if-nez p0, :cond_4

    .line 400
    const/4 v0, 0x0

    .line 407
    :goto_3
    return-object v0

    .line 402
    :cond_4
    new-instance v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    .line 403
    .local v0, "credentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    const-string v1, "account"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    .line 404
    const-string v1, "account_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    .line 405
    const-string v1, "password"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    .line 406
    const-string v1, "ubi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 385
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 387
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "account"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v2, "account_type"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v2, "password"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v2, "ubi"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    .line 394
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_21
    return-object v1

    .line 392
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :catch_22
    move-exception v0

    .line 393
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 394
    const/4 v1, 0x0

    goto :goto_21
.end method
