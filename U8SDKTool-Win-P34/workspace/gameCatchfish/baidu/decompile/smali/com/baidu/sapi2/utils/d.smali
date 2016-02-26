.class public Lcom/baidu/sapi2/utils/d;
.super Ljava/lang/Object;
.source "SapiAccountUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "is_social_account"

.field public static final b:Ljava/lang/String; = "social_type"

.field public static final c:Ljava/lang/String; = "social_portrait"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V
    .registers 5
    .param p0, "account"    # Lcom/baidu/sapi2/SapiAccount;
    .param p1, "socialType"    # Lcom/baidu/sapi2/utils/enums/SocialType;
    .param p2, "socialPortrait"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "is_social_account"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string v0, "social_type"

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v0, "social_portrait"

    invoke-static {p0, v0, p2}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "account"    # Lcom/baidu/sapi2/SapiAccount;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    if-nez p2, :cond_b

    .line 64
    :cond_a
    :goto_a
    return-void

    .line 47
    :cond_b
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 49
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_21} :catch_22

    goto :goto_a

    .line 52
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_22
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 57
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_27
    :try_start_27
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v1    # "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_37} :catch_38

    goto :goto_a

    .line 60
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_38
    move-exception v0

    .line 61
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_a
.end method
