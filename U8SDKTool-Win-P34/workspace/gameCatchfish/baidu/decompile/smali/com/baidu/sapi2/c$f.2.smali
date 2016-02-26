.class Lcom/baidu/sapi2/c$f;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/PhoneRegResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/a;

.field final synthetic d:Lcom/baidu/sapi2/dto/PhoneRegDTO;

.field final synthetic e:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/PhoneRegResult;Lcom/baidu/sapi2/utils/a;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V
    .registers 6

    .prologue
    .line 858
    iput-object p1, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$f;->c:Lcom/baidu/sapi2/utils/a;

    iput-object p5, p0, Lcom/baidu/sapi2/c$f;->d:Lcom/baidu/sapi2/dto/PhoneRegDTO;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 911
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 912
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 913
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 918
    :goto_23
    return-void

    .line 915
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 916
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$f;->d:Lcom/baidu/sapi2/dto/PhoneRegDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 867
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 862
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 15
    .param p1, "statusCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-static {v10}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/sapi2/c$E;->d()V

    .line 872
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-virtual {v10, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v6

    .line 873
    .local v6, "resultCode":I
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-virtual {v10, v6}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 875
    :try_start_14
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 876
    .local v5, "responseJSONObj":Lorg/json/JSONObject;
    const-string v10, "userinfo"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "cipherUserInfo":Ljava/lang/String;
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->c:Lcom/baidu/sapi2/utils/a;

    invoke-virtual {v10, v1}, Lcom/baidu/sapi2/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "plainUserInfo":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 879
    .local v9, "userInfoJSONObj":Lorg/json/JSONObject;
    const-string v10, "sdk"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 880
    .local v8, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v10, "msg"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 881
    .local v7, "resultMsg":Ljava/lang/String;
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-virtual {v10, v7}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultMsg(Ljava/lang/String;)V

    .line 883
    packed-switch v6, :pswitch_data_9e

    .line 899
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v11, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-interface {v10, v11}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 906
    .end local v1    # "cipherUserInfo":Ljava/lang/String;
    .end local v3    # "plainUserInfo":Ljava/lang/String;
    .end local v5    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v7    # "resultMsg":Ljava/lang/String;
    .end local v8    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v9    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_45
    return-void

    .line 885
    .restart local v1    # "cipherUserInfo":Ljava/lang/String;
    .restart local v3    # "plainUserInfo":Ljava/lang/String;
    .restart local v5    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v7    # "resultMsg":Ljava/lang/String;
    .restart local v8    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v9    # "userInfoJSONObj":Lorg/json/JSONObject;
    :pswitch_46
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-virtual {v10, v9}, Lcom/baidu/sapi2/c;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 886
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    new-instance v4, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v4}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    .line 888
    .local v4, "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->d:Lcom/baidu/sapi2/dto/PhoneRegDTO;

    iget-object v10, v10, Lcom/baidu/sapi2/dto/PhoneRegDTO;->phoneNumber:Ljava/lang/String;

    iput-object v10, v4, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    .line 889
    const-string v10, "logintype"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    .line 890
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->d:Lcom/baidu/sapi2/dto/PhoneRegDTO;

    iget-object v10, v10, Lcom/baidu/sapi2/dto/PhoneRegDTO;->password:Ljava/lang/String;

    invoke-static {v10}, Lcom/baidu/sapi2/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    .line 892
    const-string v10, "ubi"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    .line 893
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->e:Lcom/baidu/sapi2/c;

    invoke-static {v10}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v10

    iget-object v10, v10, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v10

    iget-object v11, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 895
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 896
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v11, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-interface {v10, v11}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_90} :catch_91

    goto :goto_45

    .line 902
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v1    # "cipherUserInfo":Ljava/lang/String;
    .end local v3    # "plainUserInfo":Ljava/lang/String;
    .end local v4    # "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .end local v5    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v7    # "resultMsg":Ljava/lang/String;
    .end local v8    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v9    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_91
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/baidu/sapi2/c$f;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v11, p0, Lcom/baidu/sapi2/c$f;->b:Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-interface {v10, v11}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 904
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 883
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_46
    .end packed-switch
.end method
