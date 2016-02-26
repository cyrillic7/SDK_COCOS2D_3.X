.class Lcom/baidu/sapi2/c$g;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/DynamicPwdLoginResult;Lcom/baidu/sapi2/utils/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$g;->c:Lcom/baidu/sapi2/utils/a;

    iput-object p5, p0, Lcom/baidu/sapi2/c$g;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/c$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1230
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1231
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1232
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1237
    :goto_23
    return-void

    .line 1234
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 1235
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$g;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/c$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 1195
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 1190
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 14
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1199
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    invoke-static {v9}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1200
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    invoke-virtual {v9, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v5

    .line 1201
    .local v5, "resultCode":I
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-virtual {v9, v5}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1203
    :try_start_14
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v4, "responseJSONObj":Lorg/json/JSONObject;
    const-string v9, "userinfo"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "cipherUserInfo":Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->c:Lcom/baidu/sapi2/utils/a;

    invoke-virtual {v9, v1}, Lcom/baidu/sapi2/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1206
    .local v3, "plainUserInfo":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v8, "userInfoJSONObj":Lorg/json/JSONObject;
    const-string v9, "sdk"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1208
    .local v7, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v9, "msg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1209
    .local v6, "resultMsg":Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-virtual {v9, v6}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 1211
    packed-switch v5, :pswitch_data_68

    .line 1218
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v10, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1225
    .end local v1    # "cipherUserInfo":Ljava/lang/String;
    .end local v3    # "plainUserInfo":Ljava/lang/String;
    .end local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_45
    return-void

    .line 1213
    .restart local v1    # "cipherUserInfo":Ljava/lang/String;
    .restart local v3    # "plainUserInfo":Ljava/lang/String;
    .restart local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :pswitch_46
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->f:Lcom/baidu/sapi2/c;

    invoke-virtual {v9, v8}, Lcom/baidu/sapi2/c;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 1214
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 1215
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v10, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_5a} :catch_5b

    goto :goto_45

    .line 1221
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v1    # "cipherUserInfo":Ljava/lang/String;
    .end local v3    # "plainUserInfo":Ljava/lang/String;
    .end local v4    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v7    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v8    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_5b
    move-exception v2

    .line 1222
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/baidu/sapi2/c$g;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v10, p0, Lcom/baidu/sapi2/c$g;->b:Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-interface {v9, v10}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1223
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 1211
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_46
    .end packed-switch
.end method
