.class Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;
.super Ljava/lang/Object;
.source "QQLogin.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/qq/QQLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QQLoginCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/qq/QQLogin;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/qq/QQLogin;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;->this$0:Lcom/tencent/msdk/qq/QQLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/tencent/msdk/qq/QQLogin;Ljava/lang/String;)V
    .registers 3
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;-><init>(Lcom/tencent/msdk/qq/QQLogin;)V

    .line 82
    invoke-static {p2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 8

    .prologue
    .line 63
    const-string v1, "qq login onCancel"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "param_FailCode"

    const-string v2, "1000"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "msdk_logic_error"

    const-string v2, "1"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "qqEntryFirstLogin"

    iget-object v2, p0, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;->this$0:Lcom/tencent/msdk/qq/QQLogin;

    # getter for: Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J
    invoke-static {v2}, Lcom/tencent/msdk/qq/QQLogin;->access$000(Lcom/tencent/msdk/qq/QQLogin;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    .line 70
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 71
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 72
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 73
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 74
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 22
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 86
    const-string v3, "qq login onComplete"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_38

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not JSONObject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 90
    new-instance v14, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v14}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 91
    .local v14, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    const/16 v3, 0x3ea

    iput v3, v14, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 92
    const-string v3, "not JSONObject"

    iput-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 167
    :goto_37
    return-void

    .end local v14    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_38
    move-object/from16 v13, p1

    .line 97
    check-cast v13, Lorg/json/JSONObject;

    .line 99
    .local v13, "json":Lorg/json/JSONObject;
    :try_start_3c
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 101
    const-string v3, "pay_token"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 102
    const-string v3, "pay_token"

    const-string v4, ""

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_54
    new-instance v14, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v14}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 106
    .restart local v14    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    sget v3, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v3, v14, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 107
    const-string v3, "openid"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 109
    const-string v3, "access_token"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "access_token":Ljava/lang/String;
    if-eqz v9, :cond_75

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 112
    :cond_75
    const/16 v3, 0x3e8

    iput v3, v14, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 116
    :goto_79
    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    invoke-direct {v2}, Lcom/tencent/msdk/api/TokenRet;-><init>()V

    .line 117
    .local v2, "access":Lcom/tencent/msdk/api/TokenRet;
    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 118
    iput-object v9, v2, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 119
    const-string v3, "expires_in"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 121
    iget-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v15, Lcom/tencent/msdk/api/TokenRet;

    invoke-direct {v15}, Lcom/tencent/msdk/api/TokenRet;-><init>()V

    .line 124
    .local v15, "pay":Lcom/tencent/msdk/api/TokenRet;
    const/4 v3, 0x2

    iput v3, v15, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 125
    const-string v3, "pay_token"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 126
    const-wide/32 v4, 0x7e900

    iput-wide v4, v15, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 127
    iget-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v3, "pf"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QQEntryActivity pf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 132
    const-string v3, "pfkey"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QQEntryActivity pfkey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v18, 0x3e8

    div-long v10, v4, v18

    .line 136
    .local v10, "curTime":J
    new-instance v16, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct/range {v16 .. v16}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 137
    .local v16, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    iget-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 138
    iget-object v3, v2, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 139
    iget-wide v4, v2, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    add-long/2addr v4, v10

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 140
    iget-object v3, v15, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 141
    iget-wide v4, v15, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    add-long/2addr v4, v10

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 142
    iget-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 143
    iget-object v3, v14, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/tencent/msdk/login/LoginManager;->getQQFirstLoginPfKeyReq(Lcom/tencent/msdk/db/QQLoginModel;)V

    .line 153
    const-string v3, "qqEntryFirstLogin"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;->this$0:Lcom/tencent/msdk/qq/QQLogin;

    # getter for: Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J
    invoke-static {v4}, Lcom/tencent/msdk/qq/QQLogin;->access$000(Lcom/tencent/msdk/qq/QQLogin;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V
    :try_end_145
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_145} :catch_147

    goto/16 :goto_37

    .line 155
    .end local v2    # "access":Lcom/tencent/msdk/api/TokenRet;
    .end local v9    # "access_token":Ljava/lang/String;
    .end local v10    # "curTime":J
    .end local v14    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    .end local v15    # "pay":Lcom/tencent/msdk/api/TokenRet;
    .end local v16    # "qui":Lcom/tencent/msdk/db/QQLoginModel;
    :catch_147
    move-exception v12

    .line 156
    .local v12, "e":Lorg/json/JSONException;
    new-instance v14, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v14}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 157
    .restart local v14    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    const/16 v3, 0x3ea

    iput v3, v14, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 158
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 159
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "param_FailCode"

    const-string v4, "1001"

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v3, "msdk_logic_error"

    const-string v4, "0"

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "qqEntryFirstLogin"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;->this$0:Lcom/tencent/msdk/qq/QQLogin;

    # getter for: Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J
    invoke-static {v4}, Lcom/tencent/msdk/qq/QQLogin;->access$000(Lcom/tencent/msdk/qq/QQLogin;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    goto/16 :goto_37

    .line 114
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v9    # "access_token":Ljava/lang/String;
    :cond_17f
    const/4 v3, 0x0

    :try_start_180
    iput v3, v14, Lcom/tencent/msdk/api/LoginRet;->flag:I
    :try_end_182
    .catch Lorg/json/JSONException; {:try_start_180 .. :try_end_182} :catch_147

    goto/16 :goto_79
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 9
    .param p1, "arg0"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qq login onError arg0 errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qq login onError arg0 errorDetail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 173
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 174
    const/16 v1, 0x3ea

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 176
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "param_FailCode"

    const-string v2, "1003"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "msdk_logic_error"

    const-string v2, "0"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "qqEntryFirstLogin"

    iget-object v2, p0, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;->this$0:Lcom/tencent/msdk/qq/QQLogin;

    # getter for: Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J
    invoke-static {v2}, Lcom/tencent/msdk/qq/QQLogin;->access$000(Lcom/tencent/msdk/qq/QQLogin;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/tencent/msdk/stat/BeaconHelper;->reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V

    .line 181
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 182
    return-void
.end method
