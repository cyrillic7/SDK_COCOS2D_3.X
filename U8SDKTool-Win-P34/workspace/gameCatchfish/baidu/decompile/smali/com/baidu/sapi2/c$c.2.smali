.class Lcom/baidu/sapi2/c$c;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetRegCodeResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/GetRegCodeCallback;Lcom/baidu/sapi2/result/GetRegCodeResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 750
    iput-object p1, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 791
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 792
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 793
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultCode(I)V

    .line 794
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 799
    :goto_23
    return-void

    .line 796
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 797
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFinish()V

    .line 759
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onStart()V

    .line 754
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 763
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    invoke-static {v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/c$E;->d()V

    .line 764
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->d:Lcom/baidu/sapi2/c;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v2

    .line 765
    .local v2, "resultCode":I
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultCode(I)V

    .line 767
    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 768
    .local v1, "responseJSONObj":Lorg/json/JSONObject;
    const-string v5, "sdk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 769
    .local v4, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, "resultMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v3}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultMsg(Ljava/lang/String;)V

    .line 772
    sparse-switch v2, :sswitch_data_52

    .line 780
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 787
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 774
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_35
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 783
    .end local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :catch_3d
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 785
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v3    # "resultMsg":Ljava/lang/String;
    .restart local v4    # "sdkJSONObj":Lorg/json/JSONObject;
    :sswitch_49
    :try_start_49
    iget-object v5, p0, Lcom/baidu/sapi2/c$c;->a:Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/c$c;->b:Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onPhoneNumberExist(Lcom/baidu/sapi2/result/GetRegCodeResult;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_3d

    goto :goto_34

    .line 772
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_35
        0x8 -> :sswitch_49
    .end sparse-switch
.end method
