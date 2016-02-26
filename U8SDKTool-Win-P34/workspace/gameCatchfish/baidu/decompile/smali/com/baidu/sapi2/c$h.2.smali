.class Lcom/baidu/sapi2/c$h;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/GetDynamicPwdResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$h;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1129
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1130
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultCode(I)V

    .line 1131
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1136
    :goto_23
    return-void

    .line 1133
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 1134
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 1099
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 1094
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1103
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    invoke-static {v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1104
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->d:Lcom/baidu/sapi2/c;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v2

    .line 1105
    .local v2, "resultCode":I
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultCode(I)V

    .line 1107
    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v1, "responseJSONObj":Lorg/json/JSONObject;
    const-string v5, "sdk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1109
    .local v4, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, "resultMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-virtual {v5, v3}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultMsg(Ljava/lang/String;)V

    .line 1112
    packed-switch v2, :pswitch_data_4a

    .line 1117
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-interface {v5, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1124
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 1114
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :pswitch_35
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-interface {v5, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 1120
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :catch_3d
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/sapi2/c$h;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$h;->b:Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-interface {v5, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1122
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 1112
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_35
    .end packed-switch
.end method
