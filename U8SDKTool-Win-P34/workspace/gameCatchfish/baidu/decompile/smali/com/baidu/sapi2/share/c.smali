.class Lcom/baidu/sapi2/share/c;
.super Ljava/lang/Object;
.source "LegacySupport.java"


# static fields
.field static final a:Ljava/lang/String; = "isValid"

.field static final b:Ljava/lang/String; = "username"

.field static final c:Ljava/lang/String; = "displayname"

.field static final d:Ljava/lang/String; = "email"

.field static final e:Ljava/lang/String; = "phoneNumber"

.field static final f:Ljava/lang/String; = "bduss"

.field static final g:Ljava/lang/String; = "ptoken"

.field static final h:Ljava/lang/String; = "json"

.field static final i:Ljava/lang/String; = "socialAccounts"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/baidu/sapi2/SapiAccount;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 42
    new-instance v2, Lcom/baidu/sapi2/share/f;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/share/f;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, "dataStorage":Lcom/baidu/sapi2/share/f;
    const-string v13, "1"

    const-string v14, "isValid"

    invoke-virtual {v2, v14}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 44
    .local v5, "isValid":Z
    if-nez v5, :cond_15

    .line 89
    :goto_14
    return-object v12

    .line 47
    :cond_15
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 48
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    const-string v13, "displayname"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 49
    const-string v13, "username"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 50
    const-string v13, "email"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 51
    const-string v13, "phoneNumber"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    .line 52
    const-string v13, "bduss"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 53
    const-string v13, "ptoken"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 54
    const-string v13, "json"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 56
    const-string v13, "socialAccounts"

    invoke-virtual {v2, v13}, Lcom/baidu/sapi2/share/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, "socialJSON":Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/baidu/sapi2/share/c;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;)V

    .line 58
    iget-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ca

    .line 60
    :try_start_63
    new-instance v6, Lorg/json/JSONObject;

    iget-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, "object":Lorg/json/JSONObject;
    const-string v13, "uid"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "uid":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_78

    .line 63
    iput-object v10, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 65
    :cond_78
    const-string v13, "bduss"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "bduss":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_86

    .line 67
    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 69
    :cond_86
    const-string v13, "ptoken"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "ptoken":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9a

    .line 71
    const-string v13, "ptoken"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 73
    :cond_9a
    const-string v13, "stoken"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "stoken":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ae

    .line 75
    const-string v13, "stoken"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 77
    :cond_ae
    const-string v13, "uname"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "username":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_bc

    .line 79
    iput-object v11, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 81
    :cond_bc
    const-string v13, "displayname"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "displayname":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ca

    .line 83
    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_ca} :catch_d3

    .line 89
    .end local v1    # "bduss":Ljava/lang/String;
    .end local v3    # "displayname":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "ptoken":Ljava/lang/String;
    .end local v9    # "stoken":Ljava/lang/String;
    .end local v10    # "uid":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :cond_ca
    :goto_ca
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v13

    if-eqz v13, :cond_d8

    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :goto_d0
    move-object v12, v0

    goto/16 :goto_14

    .line 85
    .restart local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :catch_d3
    move-exception v4

    .line 86
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {v4}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_ca

    .end local v4    # "e":Lorg/json/JSONException;
    :cond_d8
    move-object v0, v12

    .line 89
    goto :goto_d0
.end method

.method static a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;)V
    .registers 8
    .param p0, "account"    # Lcom/baidu/sapi2/SapiAccount;
    .param p1, "socialJSON"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 115
    :cond_8
    :goto_8
    return-void

    .line 98
    :cond_9
    :try_start_9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_32

    .line 103
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 108
    const/4 v5, 0x0

    :try_start_15
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    .local v2, "socialItem":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/baidu/sapi2/utils/enums/SocialType;->getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;

    move-result-object v4

    .line 110
    .local v4, "socialType":Lcom/baidu/sapi2/utils/enums/SocialType;
    const-string v5, "headURL"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "socialPortrait":Ljava/lang/String;
    invoke-static {p0, v4, v3}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2c} :catch_2d

    goto :goto_8

    .line 112
    .end local v2    # "socialItem":Lorg/json/JSONObject;
    .end local v3    # "socialPortrait":Ljava/lang/String;
    .end local v4    # "socialType":Lcom/baidu/sapi2/utils/enums/SocialType;
    :catch_2d
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_32
    move-exception v0

    .line 100
    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_8
.end method
